﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System.Web.Mvc;
using CP_MathHub.Framework.Controllers;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Service.Services;
using CP_MathHub.Service.Helpers;
using CP_MathHub.Models.Discussion;
using CP_MathHub.Entity;
using AutoMapper;
using CP_MathHub.Models.Common;
using System.Web.Routing;
using CP_MathHub.RealTime;

namespace CP_MathHub.Controllers
{
    public class DiscussionController : BaseController
    {
        private IDiscussionService dService;
        private ICommonService cService;
        private CPMathHubModelContainer context;
        private Microsoft.AspNet.SignalR.IHubContext _hub;
        public DiscussionController()
        {
            context = new CPMathHubModelContainer();
            _hub = Microsoft.AspNet.SignalR.GlobalHost.ConnectionManager.GetHubContext<RealTimeHub>();
        }
        protected override void Initialize(RequestContext requestContext)
        {
            base.Initialize(requestContext);

            if (requestContext.HttpContext.User.Identity.IsAuthenticated)
            {
                dService = new DiscussionService(context, _currentUserId);
                cService = new CommonService(context);
            }
            else
            {
                dService = new DiscussionService(context);
                cService = new CommonService(context);
            }

        }
        // GET: Discussion
        [HttpGet]
        public ActionResult Index()
        {
            //int skip = page * Constant.Discussion.Integer.PagingDefaultTake;
            List<Tag> tags = cService.GetCategorys();
            List<CategoryPreviewViewModel> discussioncategoryVM =
                tags.Select(Mapper.Map<Tag, CategoryPreviewViewModel>) // Using Mapper with Collection
                .ToList();
            for (int i = 0; i < tags.Count; i++)
            {
                discussioncategoryVM.ElementAt(i).Discussion = dService.GetLastestDiscussion(tags.ElementAt(i).Id);
                discussioncategoryVM.ElementAt(i).UserName = dService.GetLastestDiscussion(tags.ElementAt(i).Id).Author.UserName;
            }
            DiscussionHomeViewModel discussionHomeVM = new DiscussionHomeViewModel();
            discussionHomeVM.Name = "THẢO LUẬN";
            ViewBag.System = Constant.String.DiscussionSystem;
            discussionHomeVM.Items = discussioncategoryVM;
            var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
            cookie.Expires = DateTime.Now.AddMinutes(5);
            Response.Cookies.Add(cookie);
            return View("Views/DiscussionHomeView", discussionHomeVM);

        }
        //Get: CategoryIndex
        [HttpGet]
        public ActionResult CategoryIndex(string tag, int tagId, int page = 0)
        {
            int skip = page * Constant.Discussion.Integer.PagingDefaultTake;
            List<Discussion> discussions = dService.GetDiscussionCategorys(tagId, skip);
            List<DiscussionPreviewViewModel> discussionPreviewVMs =
                discussions.Select(Mapper.Map<Discussion, DiscussionPreviewViewModel>) // Using Mapper with Collection
                .ToList();
            for (int i = 0; i < discussionPreviewVMs.Count; i++)
            {
                discussionPreviewVMs.ElementAt(i).UserInfo.CreateMainPostDate = discussionPreviewVMs.ElementAt(i).CreatedDate;
                if (Request.IsAuthenticated)
                    discussionPreviewVMs.ElementAt(i).Bookmarked =
                        discussionPreviewVMs.ElementAt(i).UserId != _currentUserId
                        && discussions.ElementAt(i).BookmarkUsers
                                                .Count(u => u.Id == _currentUserId) > 0;
                discussionPreviewVMs.ElementAt(i).Liked = discussions.ElementAt(i).Votes.Count(v => v.UserId == _currentUserId) > 0;
                foreach (CommentViewModel m in discussionPreviewVMs.ElementAt(i).Comments)
                {
                    m.Liked = m.Votes.Count(v => v.UserId == _currentUserId) > 0;
                    foreach (CommentViewModel r in m.Comments)
                    {
                        r.Liked = r.Votes.Count(v => v.UserId == _currentUserId) > 0;
                    }
                }

            }
            if (page == 0)
            {
                CategoryViewModel discussionTagHomeVM = new CategoryViewModel();
                discussionTagHomeVM.Name = tag;
                ViewBag.Tab = Constant.Discussion.String.HomeCategoryTab;
                ViewBag.TabParam = tagId;
                ViewBag.System = Constant.String.DiscussionSystem;
                discussionTagHomeVM.Id = tagId;
                discussionTagHomeVM.Items = discussionPreviewVMs;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires = DateTime.Now.AddMinutes(5);
                Response.Cookies.Add(cookie);
                return View("Views/DiscussionTagHomeView", discussionTagHomeVM);
            }
            else
            {
                return PartialView("Partials/_DiscussionListPartialView", discussionPreviewVMs);
            }
        }
        //Post: CategoryIndex
        [Authorize]
        [HttpPost, ValidateInput(false)]
        [BannedUser]
        public ActionResult CategoryIndex(CategoryViewModel discussionTagHomeVM, int tagId)
        {
            Discussion discussion = new Discussion();
            discussion.Title = discussionTagHomeVM.Tile;
            discussion.Content = discussionTagHomeVM.Content;
            discussion.CreatedDate = DateTime.Now;
            discussion.LastEditedDate = discussion.CreatedDate;
            discussion.Privacy = MainPostPrivacyEnum.Everyone;
            discussion.Tags.Add(cService.GetTag(tagId));
            discussion.UserId = User.Identity.GetUserId<int>();
            discussion.LastViewed = DateTime.Now;
            discussion.Status = PostStatusEnum.Active;
            dService.InsertDiscussion(discussion);

            EditedLog editedlog = new EditedLog();
            editedlog.Content = discussion.Content;
            editedlog.CreatedDate = discussion.LastEditedDate;
            editedlog.PostId = discussion.Id;
            editedlog.UserId = discussion.UserId;

            discussion.EditedContents.Add(editedlog);
            dService.EditDiscussion(discussion);

            //discussion.Tags = cService.GetTags(discussionTagHomeVM.TagIds);

            if (discussion.Id != 0)
            {
                return RedirectToAction("Detail", new { @id = discussion.Id });
            }
            else
            {
                return View("Views/Error");
            }
        }
        ////Get: Discussion/HotDiscussion
        //public List<Discussion> GetHotDiscussion(string tab = Constant.Discussion.String.HomeHotTab
        //                           , int page = 0)
        //{
        //    int skip = page * Constant.Question.Integer.PagingDefaultTake;
        //    List<Discussion> discussions = dService.GetDiscussions(tab, skip);
        //    return discussions;
        //}
        //Get: Discussion/Tag
        public ActionResult Tag(string tag, int tagId, int page = 0)
        {
            int skip = page * Constant.Discussion.Integer.PagingDefaultTake;
            //Tag tagEntity = cService.GetTag(tag);
            List<Discussion> discussions = dService.GetDiscussionCategorys(tagId, skip);
            List<DiscussionPreviewViewModel> discussionPreviewVMs =
                    discussions.Select(Mapper.Map<Discussion, DiscussionPreviewViewModel>) // Using Mapper with Collection
                    .ToList();
            for (int i = 0; i < discussionPreviewVMs.Count; i++)
            {
                discussionPreviewVMs.ElementAt(i).UserInfo.CreateMainPostDate = discussionPreviewVMs.ElementAt(i).CreatedDate;
                if (Request.IsAuthenticated)
                    discussionPreviewVMs.ElementAt(i).Bookmarked =
                        discussionPreviewVMs.ElementAt(i).UserId != _currentUserId
                        && discussions.ElementAt(i).BookmarkUsers
                                                .Count(u => u.Id == _currentUserId) > 0;
                discussionPreviewVMs.ElementAt(i).Liked = discussions.ElementAt(i).Votes.Count(v => v.UserId == _currentUserId) > 0;
                foreach (CommentViewModel m in discussionPreviewVMs.ElementAt(i).Comments)
                {
                    m.Liked = m.Votes.Count(v => v.UserId == _currentUserId) > 0;
                    foreach (CommentViewModel r in m.Comments)
                    {
                        r.Liked = r.Votes.Count(v => v.UserId == _currentUserId) > 0;
                    }
                }
            }

            if (page == 0)
            {
                CategoryViewModel tagHomeVM = new CategoryViewModel();
                tagHomeVM.Name = "Thảo luận có thẻ \"" + tag + "\"";
                ViewBag.Tab = Constant.Discussion.String.HomeTagTab;
                ViewBag.System = Constant.String.DiscussionSystem;
                ViewBag.TabParam = tagId;
                tagHomeVM.Items = discussionPreviewVMs;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires = DateTime.Now.AddMinutes(5);
                Response.Cookies.Add(cookie);
                return View("Views/DiscussionTagHomeView", tagHomeVM);
            }
            else
            {
                return PartialView("Partials/_DiscussionListPartialView", discussionPreviewVMs);
            }
        }
        //Get: Discussion/Search
        [HttpGet]
        public ActionResult Search(string searchString, int page = 0)
        {
            int skip = page * Constant.Discussion.Integer.PagingDefaultTake;
            List<Discussion> discussions = dService.SearchDiscussions(skip, searchString);
            List<DiscussionPreviewViewModel> discussionPreviewVMs =
                     discussions.Select(Mapper.Map<Discussion, DiscussionPreviewViewModel>) // Using Mapper with Collection
                     .ToList();
            for (int i = 0; i < discussionPreviewVMs.Count; i++)
            {
                discussionPreviewVMs.ElementAt(i).UserInfo.CreateMainPostDate = discussionPreviewVMs.ElementAt(i).CreatedDate;
                if (Request.IsAuthenticated)
                    discussionPreviewVMs.ElementAt(i).Bookmarked =
                        discussionPreviewVMs.ElementAt(i).UserId != _currentUserId
                        && discussions.ElementAt(i).BookmarkUsers
                                                .Count(u => u.Id == _currentUserId) > 0;
                discussionPreviewVMs.ElementAt(i).Liked = discussions.ElementAt(i).Votes.Count(v => v.UserId == _currentUserId) > 0;
                foreach (CommentViewModel m in discussionPreviewVMs.ElementAt(i).Comments)
                {
                    m.Liked = m.Votes.Count(v => v.UserId == _currentUserId) > 0;
                    foreach (CommentViewModel r in m.Comments)
                    {
                        r.Liked = r.Votes.Count(v => v.UserId == _currentUserId) > 0;
                    }
                }
            }

            if (page == 0)
            {
                CategoryViewModel tagHomeVM = new CategoryViewModel();
                tagHomeVM.Name = "Có " + dService.CountSearchResult(searchString)
                                       + " Kết Quả Tìm Kiếm Cho \"" + searchString + "\"";
                ViewBag.Tab = Constant.Discussion.String.HomeSearchTab;
                ViewBag.System = Constant.String.DiscussionSystem;
                ViewBag.TabParam = searchString;
                tagHomeVM.Items = discussionPreviewVMs;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires = DateTime.Now.AddMinutes(5);
                Response.Cookies.Add(cookie);
                return View("Views/DiscussionTagHomeView", tagHomeVM);
            }
            else
            {
                return PartialView("Partials/_DiscussionListPartialView", discussionPreviewVMs);
            }
        }
        //Get: Discussion/Detail
        [HttpGet]
        public ActionResult Detail(int id)
        {
            DiscussionDetailViewModel discussionDetailVM = new DiscussionDetailViewModel();
            Discussion discussion = dService.GetDetailDiscussion(id);
            if (discussion == default(Discussion))
            {
                return Redirect("~/Error404.html");
            }
            dService.IncludeUserForComments(discussion.Comments.ToList());
            dService.IncludeReplyForComments(discussion.Comments.ToList());

            discussionDetailVM = Mapper.Map<Discussion, DiscussionDetailViewModel>(discussion);
            foreach (CommentViewModel m in discussionDetailVM.Comments)
            {
                m.Liked = m.Votes.Count(v => v.UserId == _currentUserId) > 0;
                foreach (CommentViewModel r in m.Comments)
                {
                    r.Liked = r.Votes.Count(v => v.UserId == _currentUserId) > 0;
                }
            }
            discussionDetailVM.UserInfo.CreateMainPostDate = discussionDetailVM.CreatedDate;
            discussionDetailVM.Bookmarked = discussion.BookmarkUsers
                                                .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
            discussionDetailVM.Liked = discussion.Votes.Count(d => d.UserId == _currentUserId) > 0;
            discussionDetailVM.Name = "THẢO LUẬN";
            dService.IncreaseViewDiscussion(discussion);
            List<EditedLog> editedlogs = dService.GetEditedLog(id);
            //ICollection<DiscussionEditedLogViewModel> discussioneditedlogVM =
            //    editedlogs.Select(Mapper.Map<EditedLog, DiscussionEditedLogViewModel>) // Using Mapper with Collection
            //    .ToList();
            ViewBag.System = Constant.String.DiscussionSystem;
            var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
            cookie.Expires = DateTime.Now.AddMinutes(5);
            Response.Cookies.Add(cookie);
            return View("Views/DiscussionDetailView", discussionDetailVM);
        }
        //Get: Discussion/Create
        [HttpGet]
        [Authorize]
        [BannedUser]
        public ActionResult Create(int tagId = 0)
        {
            ViewBag.System = Constant.String.DiscussionSystem;
            DiscussionCreateViewModel model = new DiscussionCreateViewModel();
            model.Privacy = MainPostPrivacyEnum.Everyone;
            model.TagList = cService.GetCategorys();
            model.tagId = tagId;
            ViewBag.ReturnUrl = _previousUrl == default(string) ? Url.Action("Index") : Url.Content(_previousUrl);
            return View("Views/DiscussionCreateView", model);
        }
        //Post: Discussion/Create
        [Authorize]
        [BannedUser]
        [HttpPost, ValidateInput(false)]
        public ActionResult Create(DiscussionCreateViewModel discussionCreateVM)
        {
            if (!ModelState.IsValid)
            {
                return View("Views/DiscussionCreateView", discussionCreateVM);
            }
            Discussion discussion = new Discussion();
            discussion = Mapper.Map<DiscussionCreateViewModel, Discussion>(discussionCreateVM);
            discussion.LastEditedDate = DateTime.Now;
            discussion.UserId = User.Identity.GetUserId<int>();
            discussion.Tags = cService.GetTags(discussionCreateVM.TagIds);
            discussion.Invitations = cService.GetInvitations(discussionCreateVM.InviteIds, User.Identity.GetUserId<int>());
            discussion.Status = CP_MathHub.Entity.PostStatusEnum.Active;
            dService.InsertDiscussion(discussion);

            EditedLog editedlog = new EditedLog();
            editedlog.Content = discussion.Content;
            editedlog.CreatedDate = DateTime.Now;
            editedlog.Title = discussionCreateVM.Title;
            editedlog.PostId = discussion.Id;
            editedlog.UserId = discussion.UserId;


            discussion.EditedContents.Add(editedlog);


            dService.EditDiscussion(discussion);

            if (discussion.Id != 0)
            {
                //new Thread(() =>
                //{
                foreach (int inviteeId in discussion.Invitations.Select(i => i.InviteeId))
                {
                    Notification notification = new Notification();
                    notification.AuthorId = _currentUserId;
                    notification.CreatedDate = DateTime.Now;
                    notification.Content = discussion.Title;
                    notification.Seen = false;
                    notification.Type = NotificationSettingEnum.Invited;
                    notification.UserId = inviteeId;
                    notification.Link = Url.Action("Detail", "Discussion", new { id = discussion.Id });
                    cService.AddNotification(notification);
                    using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), notification.UserId))
                    {
                        IEnumerable<string> connectionIds = RealTimeHub.Connections.GetConnections(notification.UserId);
                        foreach (string conId in connectionIds)
                        {
                            _hub.Clients.Client(conId).notifyNewActivity(rService.CountNewActivityNotification());
                        } 
                    }
                }
                //    }
                //).Start();
                return RedirectToAction("Detail", new { id = discussion.Id });
            }
            else
            {
                return new HttpStatusCodeResult(500);
            }
        }
        //Get: Discussion/Edit
        [HttpGet]
        [Authorize]
        public ActionResult Edit(int id)
        {
            Discussion discussion = dService.GetDiscussion(id);
            if (discussion.UserId == _currentUserId || User.IsInRole("Administrator") || User.IsInRole("Moderator") || User.IsInRole("Expert"))
            {
                DiscussionEditViewModel discussionEditVM = new DiscussionEditViewModel();

                discussionEditVM = Mapper.Map<Discussion, DiscussionEditViewModel>(discussion);
                ViewBag.ReturnUrl = _previousUrl == default(string) ? Url.Action("Detail", new { id = id }) : Url.Content(_previousUrl);
                ViewBag.System = Constant.String.DiscussionSystem;
                return View("Views/DiscussionEditView", discussionEditVM);
            }
            //string returnUrl = Request.Cookies.Get("returnUrl") != null ? Request.Cookies.Get("returnUrl").Value : default(string);
            if (_previousUrl == default(string))
                return RedirectToAction("Detail", new { id = id });
            else
                return Redirect(Url.Content(_previousUrl));
        }
        //Post: Discussion/Edit
        [Authorize]
        [HttpPost, ValidateInput(false)]
        public ActionResult Edit(DiscussionEditViewModel discussionEditVM)
        {
            if (!ModelState.IsValid)
            {
                return View("Views/DiscussionEditView", discussionEditVM);
            }
            Discussion discussion = dService.GetDiscussion(discussionEditVM.Id);
            if (discussion.Content == discussionEditVM.Content && discussion.Title == discussionEditVM.Title)
            {
                return RedirectToAction("Detail", new { id = discussion.Id });
            }
            if (discussion.UserId == _currentUserId || User.IsInRole("Administrator") || User.IsInRole("Moderator") || User.IsInRole("Expert"))
            {
                EditedLog editedlog = new EditedLog();
                editedlog.Content = discussionEditVM.Content;
                editedlog.CreatedDate = DateTime.Now;
                editedlog.Title = discussionEditVM.Title;
                editedlog.PostId = discussion.Id;
                editedlog.UserId = _currentUserId;

                discussion.Title = discussionEditVM.Title;
                discussion.Content = discussionEditVM.Content;
                discussion.Privacy = discussionEditVM.Privacy == 0 ? discussion.Privacy : discussionEditVM.Privacy;

                discussion.LastEditedDate = editedlog.CreatedDate;
                discussion.EditedContents.Add(editedlog);

                dService.EditDiscussion(discussion);

                return RedirectToAction("Detail", new { id = discussion.Id });
            }
            //string returnUrl = Request.Cookies.Get("returnUrl") != null ? Request.Cookies.Get("returnUrl").Value : default(string);
            if (_previousUrl == default(string))
                return RedirectToAction("Detail", new { id = discussion.Id });
            else
                return Redirect(Url.Content(_previousUrl));
        }

        //Discussion/Delete
        [Authorize]
        public ActionResult Delete(int id)
        {
            Discussion discussion = dService.GetDiscussion(id);
            dService.DeleteDiscussion(discussion);
            return RedirectToAction("Index");
        }
        //Get: Discussion/SearchTag
        [HttpGet]
        public ActionResult SearchTag(string name
                                        , string type = "search"
                                        , int page = 0
                                        , string tab = Constant.Discussion.String.TagPopularTab)
        {
            List<Tag> tags = new List<Tag>();
            int skip = page * Constant.Discussion.Integer.TagPagingDefaultTake;
            switch (type)
            {
                case "search":
                    tags = cService.GetTags(tab, name, skip);
                    return PartialView("Partials/_TagListPartialView", tags);
                case "autocomplete":
                    tags = cService.GetTags(name);
                    return PartialView("../CommonWidget/_TagAutoCompletePartialView", tags);
                default:
                    tags = cService.GetTags(tab, name, skip);
                    return PartialView("Partials/_TagListPartialView", tags);
            }

        }
        //Get: Discussion/Tags
        [HttpGet]
        public ActionResult Tags(string tab = Constant.Discussion.String.TagPopularTab, int page = 0)
        {
            int skip = page * Constant.Discussion.Integer.TagPagingDefaultTake;
            List<Tag> tags = cService.GetTags(skip, tab);

            if (page == 0)
            {
                TagsPageViewModel model = new TagsPageViewModel();
                model.Tab = tab;
                model.ListTags = tags;
                ViewBag.System = Constant.String.DiscussionSystem;
                ViewBag.Tab = Constant.Discussion.String.HomeTagTab;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires = DateTime.Now.AddMinutes(5);
                Response.Cookies.Add(cookie);
                return View("Views/TagsPageView", model);
            }
            else
            {
                return PartialView("Partials/_TagListPartialView", tags);
            }

        }
        //Post: Discussion/CreateTags
        [HttpPost]
        [Authorize]
        [BannedUser]
        public ActionResult CreateTag(string name)
        {
            Tag tag = new Tag();
            tag.Name = name;
            cService.InsertTag(tag, User.Identity.GetUserId<int>());
            ViewBag.System = Constant.String.DiscussionSystem;
            return PartialView("../CommonWidget/_TagPartialView", tag);
        }
        //Get: Discussion/Users
        //[HttpGet]
        //public ActionResult Users(string tab = Constant.Discussion.String.UserReputationTab, int page = 0)
        //{
        //    int skip = page * Constant.Discussion.Integer.UserPagingDefaultTake;
        //    List<User> users = cService.GetUsers(skip, tab);

        //    if (page == 0)
        //    {
        //        UsersPageViewModel model = new UsersPageViewModel();
        //        model.Tab = tab;
        //        model.ListUsers = users;
        //        ViewBag.Tab = Constant.Discussion.String.HomeUserTab;
        //        ViewBag.System = Constant.String.DiscussionSystem;
        //        var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
        //        cookie.Expires = DateTime.Now.AddMinutes(5);
        //        Response.Cookies.Add(cookie);
        //        return View("Views/UsersPageView", model);
        //    }
        //    else
        //    {
        //        return PartialView("Partials/_UserListPartialView", users);
        //    }
        //}
        //Get: Discussion/SearchUsers
        //[HttpGet]
        //public ActionResult SearchUser(string name = "", string tab = Constant.Discussion.String.UserReputationTab, int page = 0)
        //{
        //    int skip = page * Constant.Discussion.Integer.UserPagingDefaultTake;
        //    List<User> users = cService.GetUsers(name, skip, tab);

        //    return PartialView("Partials/_UserListPartialView", users);
        //}
        //Post: Discussion/PostComment
        [HttpPost]
        [Authorize]
        [BannedUser]
        public ActionResult PostComment(int postId, string content, string type = "comment")
        {
            PostStatusEnum status = PostStatusEnum.Active;
            if (type == "comment")
            {
                status = dService.GetDiscussion(postId).Status.Value;
            }
            else
            {
                status = cService.GetComment(postId, "Post").Post.Status.Value;
            }

            if (status != PostStatusEnum.Closed)
            {
                Comment comment = new Comment();
                comment.Content = content;
                comment.UserId = User.Identity.GetUserId<int>();
                comment.CreatedDate = DateTime.Now;
                comment.LastEditedDate = comment.CreatedDate;
                comment.PostId = postId;
                comment.Status = PostStatusEnum.Active;
                comment.VoteDown = 0;
                comment.VoteUp = 0;

                cService.CommentPost(comment);
                List<Comment> comments = cService.GetComments(postId);
                ICollection<CommentViewModel> commentsVM;
                Discussion discussion;
                Notification notification;
                switch (type)
                {
                    //case "comment":
                    //    dService.IncludeUserForComments(comments);
                    //    dService.IncludeReplyForComments(comments);
                    //    commentsVM = comments.Select(Mapper.Map<Comment, CommentViewModel>).ToList();
                    //    return PartialView("../CommonWidget/_CommentListPartialView", commentsVM);
                    case "reply":
                        dService.IncludeUserForComments(comments);
                        commentsVM = comments.Select(Mapper.Map<Comment, CommentViewModel>).ToList();

                        Comment cm = cService.GetComment(comment.PostId);
                        if (cm.UserId != _currentUserId)
                        {
                            discussion = dService.GetDiscussion(cm.PostId);
                            notification = new Notification();
                            notification.AuthorId = _currentUserId;
                            notification.CreatedDate = DateTime.Now;
                            notification.Content = discussion.Title;
                            notification.Seen = false;
                            notification.Type = NotificationSettingEnum.UserComment;
                            notification.UserId = cm.UserId;
                            notification.Link = Url.Action("Detail", "Discussion", new { id = discussion.Id });
                            cService.AddNotification(notification);

                            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), notification.UserId))
                            {
                                IEnumerable<string> connectionIds = RealTimeHub.Connections.GetConnections(notification.UserId);
                                foreach (string conId in connectionIds)
                                {
                                    _hub.Clients.Client(conId).notifyNewActivity(rService.CountNewActivityNotification());
                                }
                            }
                        }
                        
                        return PartialView("../CommonWidget/_ReplyListPartialView", commentsVM);
                    default:
                        dService.IncludeUserForComments(comments);
                        dService.IncludeReplyForComments(comments);
                        commentsVM = comments.Select(Mapper.Map<Comment, CommentViewModel>).ToList();

                        discussion = dService.GetDiscussion(comment.PostId);
                        if (discussion.UserId != _currentUserId)
                        {
                            notification = new Notification();
                            notification.AuthorId = _currentUserId;
                            notification.CreatedDate = DateTime.Now;
                            notification.Content = discussion.Title;
                            notification.Seen = false;
                            notification.Type = NotificationSettingEnum.UserCommentMainPost;
                            notification.UserId = discussion.UserId;
                            notification.Link = Url.Action("Detail", "Discussion", new { id = discussion.Id });
                            cService.AddNotification(notification);

                            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), notification.UserId))
                            {
                                IEnumerable<string> connectionIds = RealTimeHub.Connections.GetConnections(notification.UserId);
                                foreach (string conId in connectionIds)
                                {
                                    _hub.Clients.Client(conId).notifyNewActivity(rService.CountNewActivityNotification());
                                }
                            }
                        }
                        return PartialView("../CommonWidget/_CommentListPartialView", commentsVM);
                }
            }
            return null;
        }

        //Post: Discussion/EditComment
        [HttpPost]
        [Authorize]
        public bool EditComment(int id, string content)
        {
            Comment comment = new Comment();
            comment.Id = id;
            comment.Content = content.Trim();
            comment = cService.UpdateComment(comment, User.Identity.GetUserId<int>());
            //CommentViewModel model = Mapper.Map<Comment, CommentViewModel>(comment);
            return true;
        }

        //Get: Discussion/DisableComment
        [HttpGet]
        [Authorize]
        public ActionResult DisableComment(int id)
        {
            cService.DisableComment(id);
            return RedirectToAction("Detail", new { @id = id });
        }

        //Get: Discussion/EnableComment
        [HttpGet]
        [Authorize]
        public ActionResult EnableComment(int id)
        {
            cService.EnableComment(id);
            return RedirectToAction("Detail", new { @id = id });
        }

        //Post: Discussion/Like
        [HttpPost]
        [Authorize]
        public bool Like(int id)
        {
            //User user = cService.GetUser(User.Identity.GetUserId<int>());
            Constant.Enum.LikeResult result = cService.Like(id, _currentUserId);
            Post post = cService.GetPost(id);
            if (post.UserId != _currentUserId &&
                result != Constant.Enum.LikeResult.Fail &&
                result != Constant.Enum.LikeResult.Unlike)
            {
                //new Thread(() =>
                //{
                NotificationSettingEnum notiType = default(NotificationSettingEnum);
                int userId = 0;
                int mainPostId = 0;
                string content = default(string);
                string mainPostType = default(string);
                string url = default(string);
                switch (result)
                {
                    case Constant.Enum.LikeResult.Fail:
                        break;
                    case Constant.Enum.LikeResult.Article:
                        notiType = NotificationSettingEnum.UserLikeMainPost;
                        userId = post.UserId;
                        content = ((Article)post).Title;
                        mainPostId = id;
                        url = Url.Action("Detail", "Blog", new { id = mainPostId });
                        break;
                    case Constant.Enum.LikeResult.Discussion:
                        notiType = NotificationSettingEnum.UserLikeMainPost;
                        userId = post.UserId;
                        content = ((Discussion)post).Title;
                        mainPostId = id;
                        url = Url.Action("Detail", "Discussion", new { id = mainPostId });
                        break;
                    case Constant.Enum.LikeResult.Comment:
                        notiType = NotificationSettingEnum.UserLikeComment;
                        userId = post.UserId;
                        content = ((MainPost)((Comment)post).Post).Title;
                        mainPostId = ((MainPost)((Comment)post).Post).Id;
                        mainPostType = EntityHelper.GetMainPostTypeNameOfNormalPost(post);
                        url = Url.Action("Detail", mainPostType, new { id = mainPostId });
                        break;
                    case Constant.Enum.LikeResult.Reply:
                        notiType = NotificationSettingEnum.UserLikeComment;
                        userId = post.UserId;
                        content = ((MainPost)((Comment)((Comment)post).Post).Post).Title;
                        mainPostId = ((MainPost)((Comment)((Comment)post).Post).Post).Id;
                        mainPostType = EntityHelper.GetMainPostTypeNameOfNormalPost(post);
                        url = Url.Action("Detail", mainPostType, new { id = mainPostId });
                        break;
                    case Constant.Enum.LikeResult.Unlike:
                        break;
                    default:
                        break;
                }
                //if (vote.Post.GetType().BaseType == typeof(Question))
                //{
                //    question = qService.GetQuestion(vote.PostId);
                //    notiType = NotificationSettingEnum.VotedQuestion;
                //    userId = question.UserId;
                //}
                //else
                //{
                //    question = qService.GetQuestion(((Answer)vote.Post).QuestionId);
                //    notiType = NotificationSettingEnum.VotedAnswer;
                //    userId = vote.Post.UserId;
                //}

                Notification notification = new Notification();
                notification.AuthorId = _currentUserId;
                notification.CreatedDate = DateTime.Now;
                notification.Content = content;
                notification.Seen = false;
                notification.Type = notiType;
                notification.UserId = userId;
                notification.Link = url;
                cService.AddNotification(notification);

                using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), notification.UserId))
                {
                    IEnumerable<string> connectionIds = RealTimeHub.Connections.GetConnections(notification.UserId);
                    foreach (string conId in connectionIds)
                    {
                        _hub.Clients.Client(conId).notifyNewActivity(rService.CountNewActivityNotification());
                    }
                }
                //}
                //).Start();
            }
            return result != Constant.Enum.LikeResult.Fail;
        }
        //Post: Discussion/Bookmark
        [HttpPost]
        [Authorize]
        public bool Bookmark(int id)
        {
            User user = cService.GetUser(User.Identity.GetUserId<int>());
            return cService.Bookmark(id, user);
        }

        //Post: Discussion/EditedLog
        [HttpPost]
        public ActionResult EditedLog(int id, string type)
        {
            List<EditedLog> logs = new List<EditedLog>();
            logs = cService.GetEditedLog(id);
            ViewBag.Type = type;
            return PartialView("../CommonWidget/_EditedLogPartialView", logs);
        }

        //Post: Discussion/Report
        [HttpPost]
        [Authorize]
        public bool Report(int postId, string description, ReportTypeEnum reportName = ReportTypeEnum.Other)
        {
            Report report = new Report();
            report.Description = description;
            report.PostId = postId;
            report.ReportedDate = DateTime.Now;
            report.ReporterId = User.Identity.GetUserId<int>();
            report.Type = reportName;

            return cService.CreateReport(report);
        }
    }
}