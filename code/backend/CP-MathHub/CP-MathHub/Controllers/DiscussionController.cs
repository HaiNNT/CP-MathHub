using System;
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

namespace CP_MathHub.Controllers
{
    public class DiscussionController : BaseController
    {
        private IDiscussionService dService;
        private ICommonService cService;
        private CPMathHubModelContainer context;
        public DiscussionController()
        {
            context = new CPMathHubModelContainer();
            dService = new DiscussionService(context);
            cService = new CommonService(context);
        }
        // GET: Discussion
        [HttpGet]
        public ActionResult Index()
        {
            //int skip = page * Constant.Discussion.Integer.PagingDefaultTake;
            List<Tag> tags = cService.GetTags(Constant.Discussion.Integer.CategoryDefaultLoad);
            ICollection<DiscussionCategoryViewModel> discussioncategoryVM =
                tags.Select(Mapper.Map<Tag, DiscussionCategoryViewModel>) // Using Mapper with Collection
                .ToList();

            DiscussionHomeViewModel discussionHomeVM = new DiscussionHomeViewModel();
            discussionHomeVM.Name = "THẢO LUẬN";
            ViewBag.System = Constant.String.DiscussionSystem;
            discussionHomeVM.Items = discussioncategoryVM;
            var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
            cookie.Expires.AddHours(1);
            Response.Cookies.Add(cookie);
            return View("Views/DiscussionHomeView", discussionHomeVM);

        }
        //Get: CategoryIndex
        [HttpGet]
        public ActionResult CategoryIndex(string tag, int tagId, int page = 0)
        {
            int skip = page * Constant.Discussion.Integer.PagingDefaultTake;
            List<Discussion> discussions = dService.GetDiscussionCategorys(tagId, skip);
            ICollection<DiscussionTagPreviewViewModel> discussionTagPreviewVM =
                discussions.Select(Mapper.Map<Discussion, DiscussionTagPreviewViewModel>) // Using Mapper with Collection
                .ToList();
            for (int i = 0; i < discussionTagPreviewVM.Count; i++)
            {
                discussionTagPreviewVM.ElementAt(i).UserInfo.CreateMainPostDate = discussionTagPreviewVM.ElementAt(i).CreatedDate;
                if (Request.IsAuthenticated)
                    discussionTagPreviewVM.ElementAt(i).Bookmarked =  
                        discussionTagPreviewVM.ElementAt(i).UserId != User.Identity.GetUserId<int>() 
                        && discussions.ElementAt(i).BookmarkUsers
                                                .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
            }
            if (page == 0)
            {
                DiscussionTagHomeViewModel discussionTagHomeVM = new DiscussionTagHomeViewModel();
                discussionTagHomeVM.Name = tag;
                ViewBag.Tab = Constant.Discussion.String.HomeCategoryTab;
                ViewBag.TabParam = tagId;
                ViewBag.System = Constant.String.DiscussionSystem;
                discussionTagHomeVM.Id = tagId;
                discussionTagHomeVM.Items = discussionTagPreviewVM;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires.AddHours(1);
                Response.Cookies.Add(cookie);
                return View("Views/DiscussionTagHomeView", discussionTagHomeVM);
            }
            else
            {
                return PartialView("Partials/_DiscussionListCategoryPartialView", discussionTagPreviewVM);
            }
        }
        //Post: CategoryIndex
        [Authorize]
        [HttpPost, ValidateInput(false)]
        public ActionResult CategoryIndex(DiscussionTagHomeViewModel discussionTagHomeVM, int tagId)
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
                return RedirectToAction("Detail", new {@id = discussion.Id });
            }
            else
            {
                return View("Views/Error");
            }
        }
        //Get: Discussion/HotDiscussion
        public List<Discussion> GetHotDiscussion(string tab = Constant.Discussion.String.HomeHotTab
                                   , int page = 0)
        {
            int skip = page * Constant.Question.Integer.PagingDefaultTake;
            List<Discussion> discussions = dService.GetDiscussions(tab, skip);
            return discussions;
        }
        //Get: Discussion/Tag
        public ActionResult Tag(string tag, int tagId, int page = 0)
        {
            int skip = page * Constant.Discussion.Integer.PagingDefaultTake;
            //Tag tagEntity = cService.GetTag(tag);
            List<Discussion> discussions = dService.GetDiscussionCategorys(tagId, skip);
            ICollection<DiscussionTagPreviewViewModel> discussionPreviewVMs =
                    discussions.Select(Mapper.Map<Discussion, DiscussionTagPreviewViewModel>) // Using Mapper with Collection
                    .ToList();
            for (int i = 0; i < discussionPreviewVMs.Count; i++)
            {
                discussionPreviewVMs.ElementAt(i).UserInfo.CreateMainPostDate = discussionPreviewVMs.ElementAt(i).CreatedDate;
                if (Request.IsAuthenticated)
                    discussionPreviewVMs.ElementAt(i).Bookmarked =
                        discussionPreviewVMs.ElementAt(i).UserId != User.Identity.GetUserId<int>()
                        && discussions.ElementAt(i).BookmarkUsers
                                                .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
            }

            if (page == 0)
            {
                DiscussionTagHomeViewModel tagHomeVM = new DiscussionTagHomeViewModel();
                tagHomeVM.Name = "Thảo luận có thẻ \"" + tag + "\"";
                ViewBag.Tab = Constant.Discussion.String.HomeTagTab;
                ViewBag.System = Constant.String.DiscussionSystem;
                ViewBag.TabParam = tagId;
                tagHomeVM.Items = discussionPreviewVMs;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires.AddHours(1);
                Response.Cookies.Add(cookie);
                return View("Views/DiscussionTagHomeView", tagHomeVM);
            }
            else
            {
                return PartialView("Partials/_DiscussionListCategoryPartialView", discussionPreviewVMs);
            }
        }
        //Get: Discussion/Search
        [HttpGet]
        public ActionResult Search(string searchString, int page = 0)
        {
            int skip = page * Constant.Discussion.Integer.PagingDefaultTake;
            List<Discussion> discussions = dService.SearchDiscussions(skip, searchString);
            ICollection<DiscussionTagPreviewViewModel> discussionPreviewVMs =
                     discussions.Select(Mapper.Map<Discussion, DiscussionTagPreviewViewModel>) // Using Mapper with Collection
                     .ToList();
            for (int i = 0; i < discussionPreviewVMs.Count; i++)
            {
                discussionPreviewVMs.ElementAt(i).UserInfo.CreateMainPostDate = discussionPreviewVMs.ElementAt(i).CreatedDate;
                if (Request.IsAuthenticated)
                    discussionPreviewVMs.ElementAt(i).Bookmarked =
                        discussionPreviewVMs.ElementAt(i).UserId != User.Identity.GetUserId<int>()
                        && discussions.ElementAt(i).BookmarkUsers
                                                .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
            }

            if (page == 0)
            {
                DiscussionTagHomeViewModel tagHomeVM = new DiscussionTagHomeViewModel();
                tagHomeVM.Name = "Có " + dService.CountSearchResult(searchString)
                                       + " Kết Quả Tìm Kiếm Cho \"" + searchString + "\"";
                ViewBag.Tab = Constant.Discussion.String.HomeSearchTab;
                ViewBag.System = Constant.String.DiscussionSystem;
                ViewBag.TabParam = searchString;
                tagHomeVM.Items = discussionPreviewVMs;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires.AddHours(1);
                Response.Cookies.Add(cookie);
                return View("Views/DiscussionTagHomeView", tagHomeVM);
            }
            else
            {
                return PartialView("Partials/_DiscussionListCategoryPartialView", discussionPreviewVMs);
            }
        }
        //Get: Discussion/Detail
        [HttpGet]
        public ActionResult Detail(int id)
        {
            DiscussionDetailViewModel discussionDetailVM = new DiscussionDetailViewModel();
            Discussion discussion = dService.GetDiscussion(id);
            dService.IncludeUserForComments(discussion.Comments.ToList());
            dService.IncludeReplyForComments(discussion.Comments.ToList());

            discussionDetailVM = Mapper.Map<Discussion, DiscussionDetailViewModel>(discussion);
            foreach (CommentViewModel m in discussionDetailVM.Comments)
            {
                m.Liked = m.Votes.Where(v => v.UserId == User.Identity.GetUserId<int>()).Count() > 0;
            }
            discussionDetailVM.UserInfo.CreateMainPostDate = discussionDetailVM.CreatedDate;
            discussionDetailVM.Bookmarked = discussion.BookmarkUsers
                                                .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
            discussionDetailVM.Liked = discussion.Votes.Where(d => d.UserId == User.Identity.GetUserId<int>()).Count() > 0;
            discussionDetailVM.Name = "THẢO LUẬN";
            dService.IncreaseViewDiscussion(discussion);
            List<EditedLog> editedlogs = dService.GetEditedLog(id);
            //ICollection<DiscussionEditedLogViewModel> discussioneditedlogVM =
            //    editedlogs.Select(Mapper.Map<EditedLog, DiscussionEditedLogViewModel>) // Using Mapper with Collection
            //    .ToList();
            ViewBag.System = Constant.String.DiscussionSystem;
            var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
            cookie.Expires.AddHours(1);
            Response.Cookies.Add(cookie);
            return View("Views/DiscussionDetailView", discussionDetailVM);
        }
        //Get: Discussion/Create
        [HttpGet]
        [Authorize]
        public ActionResult Create(int tagId = 0)
        {
            ViewBag.System = Constant.String.DiscussionSystem;
            DiscussionCreateViewModel model = new DiscussionCreateViewModel();
            model.Privacy = MainPostPrivacyEnum.Everyone;
            model.TagList = cService.GetTags(Constant.Discussion.Integer.CategoryDefaultLoad);
            model.tagId = tagId;
            return View("Views/DiscussionCreateView", model);
        }
        //Post: Discussion/Create
        [Authorize]
        [HttpPost, ValidateInput(false)]
        public ActionResult Create(DiscussionCreateViewModel discussionCreateVM)
        {
            Discussion discussion = new Discussion();
            discussion = Mapper.Map<DiscussionCreateViewModel, Discussion>(discussionCreateVM);
            discussion.LastEditedDate = DateTime.Now;
            discussion.UserId = User.Identity.GetUserId<int>();
            discussion.Tags = cService.GetTags(discussionCreateVM.TagIds);
            discussion.Status = CP_MathHub.Entity.PostStatusEnum.Active;
            dService.InsertDiscussion(discussion);

            EditedLog editedlog = new EditedLog();
            editedlog.Content = discussion.Content;
            editedlog.CreatedDate = DateTime.Now;
            editedlog.PostId = discussion.Id;
            editedlog.UserId = discussion.UserId;


            discussion.EditedContents.Add(editedlog);
            

            dService.EditDiscussion(discussion);
            
            if (discussion.Id != 0)
            {
                return RedirectToAction("Detail", new { @id = discussion.Id });
            }
            else
            {
                return View("Views/Error");
            }
        }
        //Get: Discussion/Edit
        [HttpGet]
        [Authorize]
        public ActionResult Edit(int id)
        {
            DiscussionEditViewModel discussionEditVM = new DiscussionEditViewModel();
            Discussion discussion = dService.GetDiscussion(id);
            discussionEditVM = Mapper.Map<Discussion, DiscussionEditViewModel>(discussion);
            ViewBag.System = Constant.String.DiscussionSystem;
            return View("Views/DiscussionEditView", discussionEditVM);
        }
        //Post: Discussion/Edit
        [Authorize]
        [HttpPost, ValidateInput(false)]
        public ActionResult Edit(DiscussionEditViewModel discussionEditVM)
        {
            Discussion discussion = dService.GetDiscussion(discussionEditVM.Id);

            EditedLog editedlog = new EditedLog();
            editedlog.Content = discussion.Content;
            editedlog.CreatedDate = DateTime.Now;
            editedlog.PostId = discussion.Id;
            editedlog.UserId = User.Identity.GetUserId<int>();

            discussion.Title = discussionEditVM.Title;
            discussion.Content = discussionEditVM.Content;
            discussion.Privacy = discussionEditVM.Privacy;

            discussion.LastEditedDate = editedlog.CreatedDate;
            discussion.EditedContents.Add(editedlog);

            dService.EditDiscussion(discussion);

            return RedirectToAction("Detail", new { id = discussion.Id });
        }
        //Get: Discussion/EditedLog
        public ActionResult EditedLog(int postId)
        {
            List<EditedLog> editedlogs = dService.GetEditedLog(postId);
            ICollection<DiscussionEditedLogViewModel> discussioneditedlogVM =
                editedlogs.Select(Mapper.Map<EditedLog, DiscussionEditedLogViewModel>) // Using Mapper with Collection
                .ToList();
            return View("Views/DiscussionEditedView", discussioneditedlogVM); ;
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
                cookie.Expires.AddHours(1);
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
        public ActionResult CreateTag(string name)
        {
            Tag tag = new Tag();
            tag.Name = name;
            cService.InsertTag(tag, User.Identity.GetUserId<int>());
            ViewBag.System = Constant.String.DiscussionSystem;
            return PartialView("../CommonWidget/_TagPartialView", tag);
        }
        //Get: Discussion/Users
        [HttpGet]
        public ActionResult Users(string tab = Constant.Discussion.String.UserReputationTab, int page = 0)
        {
            int skip = page * Constant.Discussion.Integer.UserPagingDefaultTake;
            List<User> users = cService.GetUsers(skip, tab);

            if (page == 0)
            {
                UsersPageViewModel model = new UsersPageViewModel();
                model.Tab = tab;
                model.ListUsers = users;
                ViewBag.Tab = Constant.Discussion.String.HomeUserTab;
                ViewBag.System = Constant.String.DiscussionSystem;
                                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires.AddHours(1);
                Response.Cookies.Add(cookie);
                return View("Views/UsersPageView", model);
            }
            else
            {
                return PartialView("Partials/_UserListPartialView", users);
            }
        }
        //Get: Discussion/SearchUsers
        [HttpGet]
        public ActionResult SearchUser(string name = "", string tab = Constant.Discussion.String.UserReputationTab, int page = 0)
        {
            int skip = page * Constant.Discussion.Integer.UserPagingDefaultTake;
            List<User> users = cService.GetUsers(name, skip, tab);

            return PartialView("Partials/_UserListPartialView", users);
        }
        //Post: Discussion/PostComment
        [HttpPost]
        [Authorize]
        public ActionResult PostComment(int postId, string content, string type = "comment")
        {
            Comment comment = new Comment();
            comment.Content = content;
            comment.UserId = User.Identity.GetUserId<int>();
            comment.CreatedDate = DateTime.Now;
            comment.LastEditedDate = comment.CreatedDate;
            comment.PostId = postId;

            cService.CommentPost(comment);
            List<Comment> comments = cService.GetComments(postId);
            ICollection<CommentViewModel> commentsVM;
            switch (type)
            {
                case "comment":
                    dService.IncludeUserForComments(comments);
                    dService.IncludeReplyForComments(comments);
                    commentsVM = comments.Select(Mapper.Map<Comment, CommentViewModel>).ToList();
                    return PartialView("../CommonWidget/_CommentListPartialView", commentsVM);
                case "reply":
                    dService.IncludeUserForComments(comments);
                    commentsVM = comments.Select(Mapper.Map<Comment, CommentViewModel>).ToList();
                    return PartialView("../CommonWidget/_ReplyListPartialView", commentsVM);
                default:
                    dService.IncludeUserForComments(comments);
                    dService.IncludeReplyForComments(comments);
                    commentsVM = comments.Select(Mapper.Map<Comment, CommentViewModel>).ToList();
                    return PartialView("../CommonWidget/_CommentListPartialView", commentsVM);
            }
        }

        //Post: Discussion/EditComment
        [HttpPost]
        [Authorize]
        public ActionResult EditComment(int id, string content)
        {
            Comment comment = new Comment();
            comment.Id = id;
            comment.Content = content;
            comment = cService.UpdateComment(comment, User.Identity.GetUserId<int>());
            CommentViewModel model = Mapper.Map<Comment, CommentViewModel>(comment);

            return PartialView("../CommonWidget/_CommentItemPartialView", model);
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
            User user = cService.GetUser(User.Identity.GetUserId<int>());
            return cService.Like(id, user.Id);
        }
        //Post: Discussion/Bookmark
        [HttpPost]
        [Authorize]
        public bool Bookmark(int id)
        {
            User user = cService.GetUser(User.Identity.GetUserId<int>());
            return cService.Bookmark(id, user);
        }

    }
}