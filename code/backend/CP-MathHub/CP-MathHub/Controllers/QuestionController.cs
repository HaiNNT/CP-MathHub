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
        public ActionResult Index(string tab = Constant.Question.String.HomeDefaultTab)
        {
            QuestionHomeViewModel questionHomeVM = new QuestionHomeViewModel();
            questionHomeVM.Name = "All Questions";
            List<Question> questions = qService.GetQuestions(tab);

            ICollection<QuestionPreviewViewModel> problemVms =
                questions.Select(Mapper.Map<Question, QuestionPreviewViewModel>) // Using Mapper with Collection
                .ToList();

            questionHomeVM.Items = problemVms;

            return View("Views/QuestionHomeView", questionHomeVM);
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

            return View("Views/QuestionHomeView", questionHomeVM);
        }

        // GET: Detail
        [HttpGet]
        public ActionResult Detail(int id)
        {
            QuestionDetailViewModel questionDetailVM = new QuestionDetailViewModel();
            Question question = qService.GetQuestionDetail(id);

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
            question.Title = questionVM.Title;
            question.Content = questionVM.Content;
            question.CreatedDate = DateTime.Now;
            question.UserId = 93;
            question.View = 0;
            question.Privacy = MainPostPrivacyEnum.Everyone;
            question.LastViewed = question.CreatedDate;
            question.LastEditedDate = question.CreatedDate;

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
        [HttpGet]
        public ActionResult Edit(int id)
        {
            QuestionEditViewModel questionEditVM = new QuestionEditViewModel();
            Question question = qService.GetQuestionDetail(id);
            questionEditVM.Content = question.Content;
            questionEditVM.Id = question.Id;
            questionEditVM.Title = question.Title;

            //QuestionDetailViewModel questionDetailVM = new QuestionDetailViewModel();
            //Question question = qService.GetQuestionDetail(id);

            //questionDetailVM = Mapper.Map<Question, QuestionDetailViewModel>(question);
            return View("Views/QuestionEditView", questionEditVM);
        }
        [HttpPost]
        public ActionResult Edit(QuestionEditViewModel questionVM)
        {
            Question question = qService.GetQuestionDetail(questionVM.Id);

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
        [HttpGet]
        public ActionResult Delete(int id)
        {
            QuestionDeleteViewModel questionDeleteVM = new QuestionDeleteViewModel();
            Question question = qService.GetQuestionDetail(id);

            questionDeleteVM.Content = question.Content;
            questionDeleteVM.Id = question.Id;
            questionDeleteVM.Title = question.Title;
            return View("Views/QuestionDeleteView", questionDeleteVM);
        }
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            QuestionDeleteViewModel questionDeleteVM = new QuestionDeleteViewModel();
            Question question = qService.GetQuestionDetail(id);
            qService.DeleteQuestion(question);
            return RedirectToAction("Index");
        }
    }
}