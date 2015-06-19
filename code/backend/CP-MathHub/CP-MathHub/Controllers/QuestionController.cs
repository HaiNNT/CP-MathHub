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

        public QuestionController()
        {
            qService = new QuestionService();
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
            if (page == 0) { 
                QuestionHomeViewModel questionHomeVM = new QuestionHomeViewModel();
                questionHomeVM.Name = "All Questions";
                questionHomeVM.Items = questionPreviewVMs;
                foreach( QuestionPreviewViewModel q in questionPreviewVMs){
                    q.UserInfo.CreateMainPostDate = q.CreatedDate;
                }
                return View("Views/QuestionHomeView", questionHomeVM);
            }
            else
            {
                return PartialView("Partials/_QuestionListPartialView", questionPreviewVMs);
            }
        }

        [HttpGet]
        public ActionResult Search(string searchString)
        {
            QuestionHomeViewModel questionHomeVM = new QuestionHomeViewModel();
            questionHomeVM.Name = "All Questions";
            List<Question> questions = qService.SearchQuestion(searchString);

            ICollection<QuestionPreviewViewModel> problemVms =
                questions.Select(Mapper.Map<Question, QuestionPreviewViewModel>) // Using Mapper with Collection
                .ToList();

            questionHomeVM.Items = problemVms;
            ViewBag.SearchString = searchString;
            return View("Views/QuestionHomeView", questionHomeVM);
        }

        // GET: Detail
        [HttpGet]
        public ActionResult Detail(int id)
        {
            QuestionDetailViewModel questionDetailVM = new QuestionDetailViewModel();
            Question question = qService.GetQuestion(id);

            questionDetailVM = Mapper.Map<Question, QuestionDetailViewModel>(question);
            return View("Views/QuestionDetailView", questionDetailVM);
        }

        // GET: Create
        [HttpGet]
        public ActionResult Create()
        {
            return View("Views/QuestionCreateView");
        }

        //Post: Create
        [HttpPost]
        public ActionResult Create(QuestionCreateViewModel questionVM)
        {

            Question question = new Question();
            question.UserId = 93;
            question = Mapper.Map<QuestionCreateViewModel, Question>(questionVM);

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
        //GET: Edit
        [HttpGet]
        public ActionResult Edit(int id)
        {
            QuestionEditViewModel questionEditVM = new QuestionEditViewModel();
            Question question = qService.GetQuestion(id);

            questionEditVM = Mapper.Map<Question, QuestionEditViewModel>(question);
            return View("Views/QuestionEditView", questionEditVM);
        }
        //Post: Edit
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
        //Delete
        public ActionResult Delete(int id)
        {
            Question question = qService.GetQuestion(id);
            qService.DeleteQuestion(question);
            return RedirectToAction("Index");
        }
    }
}