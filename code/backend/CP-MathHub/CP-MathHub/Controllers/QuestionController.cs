using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using CP_MathHub.Framework.Controllers;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Service.Services;
using CP_MathHub.Service.Helpers;
using CP_MathHub.Models.Question;
using CP_MathHub.Models.Common;
using CP_MathHub.Entity;
using CP_MathHub.RealTime;
using AutoMapper;
using System.Web.Routing;
using System.Threading;

namespace CP_MathHub.Controllers
{
    public class QuestionController : BaseController
    {
        private IQuestionService qService;
        private ICommonService cService;
        private CPMathHubModelContainer context;
        private Microsoft.AspNet.SignalR.IHubContext _hub;

        public QuestionController()
        {
            context = new CPMathHubModelContainer();
            _hub = Microsoft.AspNet.SignalR.GlobalHost.ConnectionManager.GetHubContext<RealTimeHub>();
        }
        protected override void Initialize(RequestContext requestContext)
        {
            base.Initialize(requestContext);

            if (requestContext.HttpContext.User.Identity.IsAuthenticated)
            {
                qService = new QuestionService(context, _currentUserId);
                cService = new CommonService(context, _currentUserId);
            }
            else
            {
                qService = new QuestionService(context);
                cService = new CommonService(context);
            }

        }

        // GET: Question
        [HttpGet]
        public ActionResult Index(string tab = Constant.Question.String.HomeDefaultTab
                                    , int page = 0)
        {
            int skip = page * Constant.Question.Integer.PagingDefaultTake;
            List<Question> questions = qService.GetQuestions(tab, skip);
            ICollection<QuestionPreviewViewModel> questionPreviewVMs =
                    questions.Select(Mapper.Map<Question, QuestionPreviewViewModel>) // Using Mapper with Collection
                    .ToList();
            for (int i = 0; i < questionPreviewVMs.Count; i++)
            {
                questionPreviewVMs.ElementAt(i).UserInfo.CreateMainPostDate = questionPreviewVMs.ElementAt(i).CreatedDate;
                if (Request.IsAuthenticated)
                    questionPreviewVMs.ElementAt(i).Bookmarked = 
                        questionPreviewVMs.ElementAt(i).UserId != User.Identity.GetUserId<int>() 
                        && questions.ElementAt(i).BookmarkUsers
                                                .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
            }
            if (page == 0)
            {
                QuestionHomeViewModel questionHomeVM = new QuestionHomeViewModel();
                questionHomeVM.Name = "HỎI ĐÁP";
                ViewBag.Tab = tab;
                ViewBag.System = Constant.String.QuestionSystem;
                questionHomeVM.Items = questionPreviewVMs;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires = DateTime.Now.AddMinutes(5);
                Response.Cookies.Add(cookie);
                return View("Views/QuestionHomeView", questionHomeVM);
            }
            else
            {
                return PartialView("Partials/_QuestionListPartialView", questionPreviewVMs);
            }
        }
        //Get: Question/Tag
        public ActionResult Tag(string tag = "", int page = 0)
        {
            int skip = page * Constant.Question.Integer.PagingDefaultTake;
            //Tag tagEntity = cService.GetTag(tag);
            List<Question> questions = qService.GetQuestions(skip, tag);
            ICollection<QuestionPreviewViewModel> questionPreviewVMs =
                    questions.Select(Mapper.Map<Question, QuestionPreviewViewModel>) // Using Mapper with Collection
                    .ToList();
            for (int i = 0; i < questionPreviewVMs.Count; i++)
            {
                questionPreviewVMs.ElementAt(i).UserInfo.CreateMainPostDate = questionPreviewVMs.ElementAt(i).CreatedDate;
                if (Request.IsAuthenticated)
                    questionPreviewVMs.ElementAt(i).Bookmarked =
                        questionPreviewVMs.ElementAt(i).UserId != User.Identity.GetUserId<int>()
                        && questions.ElementAt(i).BookmarkUsers
                                                .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
            }
            ViewBag.TabParam = tag;
            if (page == 0)
            {
                QuestionHomeViewModel questionHomeVM = new QuestionHomeViewModel();
                questionHomeVM.Name = "Câu hỏi có thẻ \"" + tag + "\"";
                ViewBag.Tab = Constant.Question.String.HomeTagTab;
                ViewBag.System = Constant.String.QuestionSystem;
                questionHomeVM.Items = questionPreviewVMs;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires = DateTime.Now.AddMinutes(5);
                Response.Cookies.Add(cookie);
                return View("Views/QuestionHomeView", questionHomeVM);
            }
            else
            {
                return PartialView("Partials/_QuestionListPartialView", questionPreviewVMs);
            }
        }

        //Get: Question/Search
        [HttpGet]
        public ActionResult Search(string searchString, int page = 0)
        {
            int skip = page * Constant.Question.Integer.PagingDefaultTake;
            List<Question> questions = qService.SearchQuestion(searchString.Trim(), skip);

            ICollection<QuestionPreviewViewModel> questionPreviewVMs =
                questions.Select(Mapper.Map<Question, QuestionPreviewViewModel>) // Using Mapper with Collection
                .ToList();
            for (int i = 0; i < questionPreviewVMs.Count; i++)
            {
                questionPreviewVMs.ElementAt(i).UserInfo.CreateMainPostDate = questionPreviewVMs.ElementAt(i).CreatedDate;
                if (Request.IsAuthenticated)
                    questionPreviewVMs.ElementAt(i).Bookmarked =
                        questionPreviewVMs.ElementAt(i).UserId != User.Identity.GetUserId<int>()
                        && questions.ElementAt(i).BookmarkUsers
                                                .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
            }
            if (page == 0)
            {
                QuestionHomeViewModel questionHomeVM = new QuestionHomeViewModel();
                questionHomeVM.Name = "Có " + qService.CountSearchResult(searchString)
                                        + " Kết Quả Tìm Kiếm Cho \"" + searchString + "\"";
                ViewBag.Tab = Constant.Question.String.SearchTab;
                ViewBag.System = Constant.String.QuestionSystem;
                ViewBag.TabParam = searchString;
                questionHomeVM.Items = questionPreviewVMs;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires = DateTime.Now.AddMinutes(5);
                Response.Cookies.Add(cookie);
                return View("Views/QuestionHomeView", questionHomeVM);
            }
            else
            {
                return PartialView("Partials/_QuestionListPartialView", questionPreviewVMs);
            }
        }

        // GET: Question/Detail
        [HttpGet]
        public ActionResult Detail(int id)
        {
            QuestionDetailViewModel questionDetailVM = new QuestionDetailViewModel();
            Question question = qService.GetDetailQuestion(id);
            qService.IncludeUserForComments(question.Comments.ToList());
            qService.IncludeUserForVotes(question.Votes.ToList());
            questionDetailVM = Mapper.Map<Question, QuestionDetailViewModel>(question);
            questionDetailVM.UserInfo.CreateMainPostDate = question.CreatedDate;
            questionDetailVM.Bookmarked = question.BookmarkUsers
                                               .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
            questionDetailVM.VoteVM = new VoteViewModel(question, User.Identity.GetUserId<int>());
            AnswerViewModel answerVM = new AnswerViewModel(qService, id, User.Identity.GetUserId<int>());
            //answerVM.Answers = qService.GetAnswers(id, AnswerEnum.Answer);
    
            //answerVM.Hints = qService.GetAnswers(id, AnswerEnum.Hint);
            ViewBag.System = Constant.String.QuestionSystem;
            questionDetailVM.AnswerVMs = answerVM;
            var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
            cookie.Expires = DateTime.Now.AddMinutes(5);
            Response.Cookies.Add(cookie);
            qService.IncreaseViewQuestion(question);
            return View("Views/QuestionDetailView", questionDetailVM);
        }

        // GET: Question/Create
        [HttpGet]
        [Authorize]
        [BannedUser]
        public ActionResult Create()
        {
            QuestionCreateViewModel model = new QuestionCreateViewModel();
            model.Privacy = MainPostPrivacyEnum.Everyone;
            ViewBag.System = Constant.String.QuestionSystem;
            return View("Views/QuestionCreateView", model);
        }

        //Post: Question/Create
        [HttpPost, ValidateInput(false)]
        [Authorize]
        [BannedUser]
        public ActionResult Create(QuestionCreateViewModel questionVM)
        {

            Question question = new Question();
            question = Mapper.Map<QuestionCreateViewModel, Question>(questionVM);
            question.CreatedDate = DateTime.Now;
            question.LastEditedDate = question.CreatedDate;
            question.UserId = User.Identity.GetUserId<int>();
            question.Tags = cService.GetTags(questionVM.TagIds);
            question.Invitations = cService.GetInvitations(questionVM.InviteIds, User.Identity.GetUserId<int>());
            question.Status = PostStatusEnum.Active;
            qService.InsertQuestion(question);

            EditedLog editedlog = new EditedLog();
            editedlog.Content = question.Content;
            editedlog.CreatedDate = question.LastEditedDate;
            editedlog.PostId = question.Id;
            editedlog.UserId = question.UserId;
            editedlog.Title = question.Title;

            question.EditedContents.Add(editedlog);
            qService.EditQuestion(question);
            //Console.WriteLine(questionVM.Tags[0]);
            if (question.Id != 0)
            {
                return RedirectToAction("Index");
            }
            else
            {
                return View("Views/Error");
            }
        }

        //GET: Question/Edit
        [HttpGet]
        [Authorize]
        public ActionResult Edit(int id)
        {
            QuestionEditViewModel questionEditVM = new QuestionEditViewModel();
            Question question = qService.GetQuestion(id);

            questionEditVM = Mapper.Map<Question, QuestionEditViewModel>(question);
            ViewBag.System = Constant.String.QuestionSystem;
            return View("Views/QuestionEditView", questionEditVM);
        }

        //Post: Question/Edit
        [HttpPost, ValidateInput(false)]
        [Authorize]
        public ActionResult Edit(QuestionEditViewModel questionVM)
        {
            Question question = qService.GetQuestion(questionVM.Id);
            if (User.IsInRole("Expert") || User.Identity.GetUserId<int>() == question.UserId)
            {
                EditedLog editedlog = new EditedLog();
                editedlog.Content = questionVM.Content;
                editedlog.CreatedDate = DateTime.Now;
                editedlog.PostId = question.Id;
                editedlog.UserId = User.Identity.GetUserId<int>();
                editedlog.Title = questionVM.Title;

                question.Title = questionVM.Title;
                question.Content = questionVM.Content;
                question.Privacy = questionVM.Privacy;

                question.LastEditedDate = editedlog.CreatedDate;
                question.EditedContents.Add(editedlog);

                qService.EditQuestion(question);
                return RedirectToAction("Detail", new { id = question.Id });
            }
            //ViewBag.ErrorMessage = "Bạn không có quyền chỉnh sửa câu hỏi này";
            return RedirectToAction("Detail", new { id = question.Id });
        }

        //Post: Question/Delete
        [HttpPost]
        [Authorize]
        public ActionResult Delete(int id)
        {
            Question question = qService.GetQuestion(id);
            qService.DeleteQuestion(question);
            return RedirectToAction("Index");
        }

        //Post: Question/Bookmark
        [HttpPost]
        [Authorize]
        public bool Bookmark(int id)
        {
            User user = cService.GetUser(User.Identity.GetUserId<int>());
            return cService.Bookmark(id, user);
        }

        //GET: Question/SearchTag
        [HttpGet]
        public ActionResult SearchTag(string name
                                        , string type = "search"
                                        , int page = 0
                                        , string tab = Constant.Question.String.TagPopularTab)
        {
            List<Tag> tags = new List<Tag>();
            int skip = page * Constant.Question.Integer.TagPagingDefaultTake;
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

        //Post: Question/InviteFriend
        [HttpPost]
        public ActionResult InviteFriend(string name)
        {
            List<User> users = new List<User>();
            users = cService.SearchFriend(name, User.Identity.GetUserId<int>(), 0, 5);
            //users = cService.GetUsers(name, 0).Take(5).ToList();
            return PartialView("../CommonWidget/_InviteAutoCompletePartialView", users);
        }

        //Get: Question/Tags
        [HttpGet]
        public ActionResult Tags(string tab = Constant.Question.String.TagPopularTab, int page = 0)
        {
            int skip = page * Constant.Question.Integer.TagPagingDefaultTake;
            List<Tag> tags = cService.GetTags(skip, tab);

            if (page == 0)
            {
                TagsPageViewModel model = new TagsPageViewModel();
                model.Tab = tab;
                model.ListTags = tags;
                ViewBag.System = Constant.String.QuestionSystem;
                ViewBag.Tab = Constant.Question.String.HomeTagTab;
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

        //Post: Question/CreateTag
        [HttpPost]
        [Authorize]
        [BannedUser]
        public ActionResult CreateTag(string name)
        {
            Tag tag = new Tag();
            tag.Name = name;

            if (cService.InsertTag(tag, User.Identity.GetUserId<int>()))
            {
                return PartialView("../CommonWidget/_TagPartialView", tag);
            }
            else
            {
                tag = cService.GetTag(name);
                return PartialView("../CommonWidget/_TagPartialView", tag);
            }
            
        }

       
        //Post: Question/PostComment
        [HttpPost]
        [Authorize]
        [BannedUser]
        public ActionResult PostComment(int postId, string content = "")
        {
            Comment comment = new Comment();
            comment.Content = content.Trim();
            comment.UserId = Int32.Parse(User.Identity.GetUserId());
            comment.CreatedDate = DateTime.Now;
            comment.LastEditedDate = comment.CreatedDate;
            comment.PostId = postId;
            comment.Status = PostStatusEnum.Active;
            comment.VoteDown = 0;
            comment.VoteUp = 0;

            cService.CommentPost(comment);
            comment.Author = cService.GetUser(comment.UserId);
            return PartialView("Partials/_CommentItemPartialView", comment);
        }

        //Post: Question/EditComment
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

        //Post: Question/AnswerQuestion
        [HttpPost, ValidateInput(false)]
        [Authorize]
        [BannedUser]
        public ActionResult AnswerQuestion(int questionId, string content = "", AnswerEnum type = AnswerEnum.Answer)
        {
            Answer answer = new Answer();
            answer.Content = content;
            answer.UserId = Int32.Parse(User.Identity.GetUserId());
            answer.CreatedDate = DateTime.Now;
            answer.LastEditedDate = answer.CreatedDate;
            answer.QuestionId = questionId;
            answer.Type = type;
            answer.VoteDown = 0;
            answer.VoteUp = 0;
            answer.Accepted = false;
            answer.Status = PostStatusEnum.Active;

            qService.AnswerQuestion(answer);
            new Thread(() =>
            {
                Question question = qService.GetQuestion(questionId);

            }).Start();
            

            return RedirectToAction("Detail", new { id = questionId });
        }

        //Post: /Question/EditAnswer
        [HttpPost, ValidateInput(false)]
        [Authorize]
        public ActionResult EditAnswer(int id, string content)
        {
            Answer answer = new Answer();
            answer.Content = content;
            answer.Id = id;
            answer = qService.EditAnswer(answer, User.Identity.GetUserId<int>(), User.IsInRole("Expert"));
            return RedirectToAction("Detail", new { id = answer.QuestionId });
        }

        //Post: Question/Vote
        [HttpPost]
        [Authorize]
        public ActionResult Vote(int postId, VoteEnum type)
        {
            if (cService.GetPost(postId).UserId == User.Identity.GetUserId<int>())
            {
                return Json(new { result = "", message = "Bạn không thể tự bình chọn cho chính mình." });
            }
            Vote vote = new Vote();
            vote.PostId = postId;
            vote.VotedDate = DateTime.Now;
            vote.Type = type;
            vote.UserId = Int32.Parse(User.Identity.GetUserId());
            bool check = qService.Vote(vote);
            if (check && type == VoteEnum.VoteUp)
            {
                return Json(new { result = "up" });
            }
            else if (check && type == VoteEnum.VoteDown)
            {
                return Json(new { result = "down" });
            }
            else
            {
                return Json(new { result = "", message = "Bạn không thể bình chọn nhiều hơn 1 lần." });
            }
        }

        //Post: Question/EditedLog
        [HttpPost]
        public ActionResult EditedLog(int id, string type)
        {
            List<EditedLog> logs = new List<EditedLog>();
            logs = cService.GetEditedLog(id);
            ViewBag.Type = type;
            return PartialView("../CommonWidget/_EditedLogPartialView", logs);
        }

        //Get: Question/Close
        [Authorize]
        public ActionResult Close(int id)
        {
            Question question = qService.GetQuestion(id);
            if (question.UserId != User.Identity.GetUserId<int>())
            {
                return RedirectToAction("Detail", new { @id = id });
            }
            question.Status = PostStatusEnum.Closed;
            qService.EditQuestion(question);
            return RedirectToAction("Detail", new { @id = id });
        }

        //Get: Question/Open
        [Authorize]
        public ActionResult Open(int id)
        {
            Question question = qService.GetQuestion(id);
            if (question.UserId != User.Identity.GetUserId<int>())
            {
                return RedirectToAction("Detail", new { @id = id });
            }
            question.Status = PostStatusEnum.Active;
            qService.EditQuestion(question);
            return RedirectToAction("Detail", new { @id = id });
        }

        //Post: Question/Accept
        [Authorize]
        [HttpPost]
        public bool Accept(int answerId)
        {
            return qService.Accept(answerId);
        }


        //Post: Question/Report
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