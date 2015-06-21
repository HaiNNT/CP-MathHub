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
            int skip = page*Constant.Question.Integer.PagingDefaultTake;
            List<Question> questions = qService.GetQuestions(tab, skip);
            ICollection<QuestionPreviewViewModel> questionPreviewVMs =
                    questions.Select(Mapper.Map<Question, QuestionPreviewViewModel>) // Using Mapper with Collection
                    .ToList();
            foreach (QuestionPreviewViewModel q in questionPreviewVMs)
            {
                q.UserInfo.CreateMainPostDate = q.CreatedDate;
            }
            if (page == 0) { 
                QuestionHomeViewModel questionHomeVM = new QuestionHomeViewModel();
                questionHomeVM.Name = "HỎI ĐÁP";
                ViewBag.Tab = tab;
                questionHomeVM.Items = questionPreviewVMs;           
                return View("Views/QuestionHomeView", questionHomeVM);
            }
            else
            {
                return PartialView("Partials/_QuestionListPartialView", questionPreviewVMs);
            }
        }

        public ActionResult Tag(string tag = "", int page = 0)
        {
            int skip = page*Constant.Question.Integer.PagingDefaultTake;
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
            if (page == 0) { 
                QuestionHomeViewModel questionHomeVM = new QuestionHomeViewModel();
                questionHomeVM.Name = "Câu hỏi có thẻ \"" + tag + "\"";
                ViewBag.Tab = Constant.Question.String.HomeTagTab;
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
            ViewBag.TabParam = searchString;
            if(page == 0){
                QuestionHomeViewModel questionHomeVM = new QuestionHomeViewModel();
                questionHomeVM.Name = "Có " + qService.CountSearchResult(searchString) 
                                        + " Kết Quả Tìm Kiếm Cho \"" + searchString + "\"";
                ViewBag.Tab = Constant.Question.String.SearchTab;
                questionHomeVM.Items = problemVms;
                return View("Views/QuestionHomeView", questionHomeVM);
            }
            else
            {
                return PartialView("Partials/_QuestionListPartialView", problemVms);
            }
        }

        //GET: Question/SearchTag
        [HttpGet]
        public ActionResult SearchTag(string name , string type = "search")
        {
            switch (type){
                case "search":

                    return null;
                case "autocomplete":
                    List<Tag> tags = cService.GetTags(name);
                    
                    return PartialView("../CommonWidget/_TagAutoCompletePartialView", tags);
                default:
                    return null;
            }
            
        }

        // GET: Question/Detail
        [HttpGet]
        public ActionResult Detail(int id)
        {
            QuestionDetailViewModel questionDetailVM = new QuestionDetailViewModel();
            Question question = qService.GetQuestion(id);

            questionDetailVM = Mapper.Map<Question, QuestionDetailViewModel>(question);
            return View("Views/QuestionDetailView", questionDetailVM);
        }

        // GET: Question/Create
        [HttpGet]
        public ActionResult Create()
        {
            return View("Views/QuestionCreateView");
        }

        //Post: Question/Create
        [HttpPost]
        public ActionResult Create(QuestionCreateViewModel questionVM)
        {

            Question question = new Question();
            question = Mapper.Map<QuestionCreateViewModel, Question>(questionVM);
            question.UserId = 93;
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
            Question question = qService.GetQuestion(id);
            User user = cService.GetLoginUser();
            return cService.Bookmark(id, user);
        }
    }
}