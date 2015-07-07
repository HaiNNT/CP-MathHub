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
using CP_MathHub.Models.Question;
using CP_MathHub.Models.Common;
using CP_MathHub.Entity;
using AutoMapper;

namespace CP_MathHub.Controllers
{
    public class QuestionController : BaseController
    {
        private IQuestionService qService;
        private ICommonService cService;
        private CPMathHubModelContainer context;

        public QuestionController()
        {
            context = new CPMathHubModelContainer();
            qService = new QuestionService(context);
            cService = new CommonService(context);
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
            foreach (QuestionPreviewViewModel q in questionPreviewVMs)
            {
                q.UserInfo.CreateMainPostDate = q.CreatedDate;
            }
            if (page == 0)
            {
                QuestionHomeViewModel questionHomeVM = new QuestionHomeViewModel();
                questionHomeVM.Name = "HỎI ĐÁP";
                ViewBag.Tab = tab;
                ViewBag.System = Constant.String.QuestionSystem;
                questionHomeVM.Items = questionPreviewVMs;
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
            foreach (QuestionPreviewViewModel q in questionPreviewVMs)
            {
                q.UserInfo.CreateMainPostDate = q.CreatedDate;
            }
            ViewBag.TabParam = tag;
            if (page == 0)
            {
                QuestionHomeViewModel questionHomeVM = new QuestionHomeViewModel();
                questionHomeVM.Name = "Câu hỏi có thẻ \"" + tag + "\"";
                ViewBag.Tab = Constant.Question.String.HomeTagTab;
                ViewBag.System = Constant.String.QuestionSystem;
                questionHomeVM.Items = questionPreviewVMs;
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

            ICollection<QuestionPreviewViewModel> problemVms =
                questions.Select(Mapper.Map<Question, QuestionPreviewViewModel>) // Using Mapper with Collection
                .ToList();
            foreach (QuestionPreviewViewModel q in problemVms)
            {
                q.UserInfo.CreateMainPostDate = q.CreatedDate;
            }
            
            if (page == 0)
            {
                QuestionHomeViewModel questionHomeVM = new QuestionHomeViewModel();
                questionHomeVM.Name = "Có " + qService.CountSearchResult(searchString)
                                        + " Kết Quả Tìm Kiếm Cho \"" + searchString + "\"";
                ViewBag.Tab = Constant.Question.String.SearchTab;
                ViewBag.System = Constant.String.QuestionSystem;
                ViewBag.TabParam = searchString;
                questionHomeVM.Items = problemVms;
                return View("Views/QuestionHomeView", questionHomeVM);
            }
            else
            {
                return PartialView("Partials/_QuestionListPartialView", problemVms);
            }
        }

        // GET: Question/Detail
        [HttpGet]
        public ActionResult Detail(int id)
        {
            QuestionDetailViewModel questionDetailVM = new QuestionDetailViewModel();
            Question question = qService.GetQuestion(id);
            qService.IncludeUserForComments(question.Comments.ToList());
            qService.IncludeUserForVotes(question.Votes.ToList());
            questionDetailVM = Mapper.Map<Question, QuestionDetailViewModel>(question);
            questionDetailVM.UserInfo.CreateMainPostDate = question.CreatedDate;
            //questionDetailVM.CommentVMs = question.Comments.Select(Mapper.Map<Comment, CommentViewModel>)
            //        .ToList();

            AnswerViewModel answerVM = new AnswerViewModel();
            answerVM.Answers = qService.GetAnswers(id, AnswerEnum.Answer);
            answerVM.Hints = qService.GetAnswers(id, AnswerEnum.Hint);
            ViewBag.System = Constant.String.QuestionSystem;
            questionDetailVM.AnswerVMs = answerVM;
            return View("Views/QuestionDetailView", questionDetailVM);
        }

        // GET: Question/Create
        [HttpGet]
        public ActionResult Create()
        {
            QuestionCreateViewModel model = new QuestionCreateViewModel();
            model.Privacy = MainPostPrivacyEnum.Everyone;
            ViewBag.System = Constant.String.QuestionSystem;
            return View("Views/QuestionCreateView", model);
        }

        //Post: Question/Create
        [HttpPost, ValidateInput(false)]
        public ActionResult Create(QuestionCreateViewModel questionVM)
        {

            Question question = new Question();
            question = Mapper.Map<QuestionCreateViewModel, Question>(questionVM);
            question.UserId = cService.GetLoginUser().Id;
            question.Tags = cService.GetTags(questionVM.TagIds);

            qService.InsertQuestion(question);
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
        public ActionResult Edit(int id)
        {
            QuestionEditViewModel questionEditVM = new QuestionEditViewModel();
            Question question = qService.GetQuestion(id);

            questionEditVM = Mapper.Map<Question, QuestionEditViewModel>(question);
            ViewBag.System = Constant.String.QuestionSystem;
            return View("Views/QuestionEditView", questionEditVM);
        }

        //Post: Question/Edit
        [HttpPost]
        public ActionResult Edit(QuestionEditViewModel questionVM)
        {
            Question question = qService.GetQuestion(questionVM.Id);

            EditedLog editedlog = new EditedLog();
            editedlog.Content = question.Content;
            editedlog.CreatedDate = DateTime.Now;
            editedlog.PostId = question.Id;
            editedlog.UserId = question.UserId;

            question.Title = questionVM.Title;
            question.Content = questionVM.Content;
            question.LastEditedDate = editedlog.CreatedDate;
            question.EditedContents.Add(editedlog);

            qService.EditQuestion(question);

            return RedirectToAction("Detail", new { id = question.Id });
        }

        //Post: Question/Delete
        [HttpPost]
        public ActionResult Delete(int id)
        {
            Question question = qService.GetQuestion(id);
            qService.DeleteQuestion(question);
            return RedirectToAction("Index");
        }

        //Post: Question/Bookmark
        [HttpPost]
        public bool Bookmark(int id)
        {
            User user = cService.GetLoginUser();
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
                return View("Views/TagsPageView", model);
            }
            else
            {
                return PartialView("Partials/_TagListPartialView", tags);
            }

        }

        //Post: Question/CreateTag
        [HttpPost]
        public ActionResult CreateTag(string name)
        {
            Tag tag = new Tag();
            tag.Name = name;
            cService.InsertTag(tag);
            ViewBag.System = "Question";
            return PartialView("../CommonWidget/_TagPartialView", tag);
        }

        //Get: Question/Users
        [HttpGet]
        public ActionResult Users(string tab = Constant.Question.String.UserReputationTab, int page = 0)
        {
            int skip = page * Constant.Question.Integer.UserPagingDefaultTake;
            List<User> users = cService.GetUsers(skip, tab);

            if (page == 0)
            {
                UsersPageViewModel model = new UsersPageViewModel();
                model.Tab = tab;
                model.ListUsers = users;
                ViewBag.Tab = Constant.Question.String.HomeUserTab;
                ViewBag.System = Constant.String.QuestionSystem;
                return View("Views/UsersPageView", model);
            }
            else
            {
                return PartialView("Partials/_UserListPartialView", users);
            }

        }

        //Get: Question/SearchUsers
        [HttpGet]
        public ActionResult SearchUser(string name = "", string tab = Constant.Question.String.UserReputationTab, int page = 0)
        {
            int skip = page * Constant.Question.Integer.UserPagingDefaultTake;
            List<User> users = cService.GetUsers(name, skip, tab);

            return PartialView("Partials/_UserListPartialView", users);
        }

        //Post: Question/PostComment
        [HttpPost]
        public ActionResult PostComment( int postId, string content = "")
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

        //Post: Question/EditComment
        [HttpPost]
        public ActionResult EditComment()
        {
            return null;
        }

        //Post: Question/AnswerQuestion
        [HttpPost, ValidateInput(false)]
        public ActionResult AnswerQuestion(int questionId, string content = "", AnswerEnum type = AnswerEnum.Answer)
        {
            Answer answer = new Answer();
            answer.Content = content;
            answer.UserId = cService.GetLoginUser().Id;
            answer.CreatedDate = DateTime.Now;
            answer.LastEditedDate = answer.CreatedDate;
            answer.QuestionId = questionId;
            answer.Type = type;
            answer.VoteDown = 0;
            answer.VoteUp = 0;

            qService.AnswerQuestion(answer);
            return RedirectToAction("Detail", new { id = questionId });
        }

        //Post: Question/Vote
        [HttpPost]
        public ActionResult Vote(int postId, VoteEnum type )
        {
            Vote vote = new Vote();
            vote.PostId = postId;
            vote.VotedDate = DateTime.Now;
            vote.Type = type;
            vote.UserId = cService.GetLoginUser().Id;
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
                return Json(new { result = "" });
            }
        }

    }
}