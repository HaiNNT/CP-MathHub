using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CP_MathHub.Framework.Controllers;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Service.Services;
using CP_MathHub.Service.Helpers;
using CP_MathHub.Models.Discussion;
using CP_MathHub.Entity;
using AutoMapper;

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
        public ActionResult Index(string tab = Constant.Discussion.String.HomeDefaultTab, int page = 0)
        {
            int skip = page * Constant.Discussion.Integer.PagingDefaultTake;
            List<Discussion> discussions = dService.GetDiscussions(tab, skip);

            ICollection<DiscussionPreviewViewModel> discussionsPreviewVms =
                discussions.Select(Mapper.Map<Discussion, DiscussionPreviewViewModel>) // Using Mapper with Collection
                .ToList();

            foreach (DiscussionPreviewViewModel d in discussionsPreviewVms)
            {
                d.UserInfo.CreateMainPostDate = d.CreatedDate;
            }
            if (page == 0)
            {
                DiscussionHomeViewModel discussionHomeVM = new DiscussionHomeViewModel();
                discussionHomeVM.Name = "THẢO LUẬN";
                ViewBag.Tab = tab;
                ViewBag.System = "discussion";
                discussionHomeVM.Items = discussionsPreviewVms;
                return View("Views/DiscussionHomeView", discussionHomeVM);
            }
            else
            {
                return PartialView("Partials/_DiscussionListPartialView", discussionsPreviewVms);
            }
        }
        //Tag
        public ActionResult Tag(string tag = "", int page = 0)
        {
            int skip = page * Constant.Discussion.Integer.PagingDefaultTake;
            List<Discussion> discussions = dService.GetDiscussions(skip, tag);
            ICollection<DiscussionPreviewViewModel> discussionPreviewVMs =
                    discussions.Select(Mapper.Map<Discussion, DiscussionPreviewViewModel>) // Using Mapper with Collection
                    .ToList();
            foreach (DiscussionPreviewViewModel q in discussionPreviewVMs)
            {
                q.UserInfo.CreateMainPostDate = q.CreatedDate;
            }
            ViewBag.TabParam = tag;
            if (page == 0)
            {
                DiscussionHomeViewModel discussionHomeVM = new DiscussionHomeViewModel();
                discussionHomeVM.Name = "Thảo luận có thẻ \"" + tag + "\"";
                ViewBag.Tab = Constant.Discussion.String.HomeTagTab;
                ViewBag.System = "discussion";
                discussionHomeVM.Items = discussionPreviewVMs;
                return View("Views/QuestionHomeView", discussionHomeVM);
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
            List<Discussion> discussions = dService.SearchDiscussions(searchString.Trim(), skip);

            ICollection<DiscussionPreviewViewModel> discussionVms =
                discussions.Select(Mapper.Map<Discussion, DiscussionPreviewViewModel>) // Using Mapper with Collection
                .ToList();
            foreach (DiscussionPreviewViewModel q in discussionVms)
            {
                q.UserInfo.CreateMainPostDate = q.CreatedDate;
            }
            ViewBag.TabParam = searchString;
            if (page == 0)
            {
                DiscussionHomeViewModel discussionHomeVM = new DiscussionHomeViewModel();
                discussionHomeVM.Name = "Có " + dService.CountSearchResult(searchString)
                                        + " Kết Quả Tìm Kiếm Cho \"" + searchString + "\"";
                ViewBag.Tab = Constant.Discussion.String.SearchTab;
                ViewBag.System = "discussion";
                discussionHomeVM.Items = discussionVms;
                return View("Views/DiscussionHomeView", discussionHomeVM);
            }
            else
            {
                return PartialView("Partials/_DiscussionListPartialView", discussionVms);
            }
        }
        //Get: Discussion/Detail
        [HttpGet]
        public ActionResult Detail(int id)
        {
            DiscussionDetailViewModel discussionDetailVM = new DiscussionDetailViewModel();
            Discussion discussion = dService.GetDiscussion(id);
            dService.IncludeUserForComments(discussion.Comments.ToList());
            discussionDetailVM = Mapper.Map<Discussion, DiscussionDetailViewModel>(discussion);
            discussionDetailVM.Comments = dService.GetComments(discussion.Id);
            ViewBag.System = "discussion";
            return View("Views/DiscussionDetailView", discussionDetailVM);
        }
        //Get: Discussion/Create
        [HttpGet]
        public ActionResult Create()
        {
            ViewBag.System = "discussion";
            return View("Views/DiscussionCreateView");
        }
        //Post: Discussion/Create
        [HttpPost, ValidateInput(false)]
        public ActionResult Create(DiscussionCreateViewModel discussionCreateVM)
        {
            Discussion discussion = new Discussion();
            discussion = Mapper.Map<DiscussionCreateViewModel, Discussion>(discussionCreateVM);
            discussion.UserId = cService.GetLoginUser().Id;
            discussion.Tags = cService.GetTags(discussionCreateVM.TagIds);
            dService.InsertDiscussion(discussion);
            if (discussion.Id != 0)
            {
                return RedirectToAction("Index");
            }
            else
            {
                return View("Views/Error");
            }
        }
        //Get: Discussion/Edit
        [HttpGet]
        public ActionResult Edit(int id)
        {
            DiscussionEditViewModel discussionEditVM = new DiscussionEditViewModel();
            Discussion discussion = dService.GetDiscussion(id);
            discussionEditVM = Mapper.Map<Discussion, DiscussionEditViewModel>(discussion);
            ViewBag.System = "discussion";
            return View("Views/DiscussionEditView", discussionEditVM);
        }
        //Post: Discussion/Edit
        [HttpPost]
        public ActionResult Edit(DiscussionEditViewModel discussionEditVM)
        {
            Discussion discussion = dService.GetDiscussion(discussionEditVM.Id);

            EditedLog editedlog = new EditedLog();
            editedlog.Content = discussion.Content;
            editedlog.CreatedDate = DateTime.Now;
            editedlog.PostId = discussion.Id;
            editedlog.UserId = discussion.UserId;

            discussion.Title = discussionEditVM.Title;
            discussion.Content = discussionEditVM.Content;
            discussion.LastEditedDate = editedlog.CreatedDate;
            discussion.EditedContents.Add(editedlog);

            dService.EditDiscussion(discussion);

            return RedirectToAction("Detail", new { id = discussion.Id });
        }
        //Discussion/Delete
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
                ViewBag.System = "question";
                ViewBag.Tab = Constant.Discussion.String.HomeTagTab;
                return View("Views/TagsPageView", model);
            }
            else
            {
                return PartialView("Partials/_TagListPartialView", tags);
            }

        }
        //Post: Discussion/CreateTags
        [HttpPost]
        public ActionResult CreateTag(string name)
        {
            Tag tag = new Tag();
            tag.Name = name;
            cService.InsertTag(tag);
            ViewBag.System = "Discussion";
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
                ViewBag.System = "discussion";
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
        public ActionResult PostComment(int postId, string content = "")
        {
            Comment comment = new Comment();
            comment.Content = content;
            comment.UserId = cService.GetLoginUser().Id;
            comment.CreatedDate = DateTime.Now;
            comment.LastEditedDate = comment.CreatedDate;
            comment.PostId = postId;

            cService.CommentPost(comment);
            return PartialView("Partials/_CommentItemPartialView", comment);
        }
    }
}