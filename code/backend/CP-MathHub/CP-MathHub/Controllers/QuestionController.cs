using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CP_MathHub.Framework.Controllers;
using CP_MathHub.Core.Interfaces.Services;
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
        public ActionResult Index()
        {
            QuestionHomeViewModel questionHomeVM = new QuestionHomeViewModel();
            questionHomeVM.Name = "All Questions";
            List<Question> questions = qService.getQuestions();

            //questionHomeVM.List = new QuestionListViewModel();
            //questionHomeVM.List.Items = MappingHelper<Question, QuestionItemViewModel>.MapCollection(questions);

            ICollection<QuestionItemViewModel> problemVms =
                questions.Select(Mapper.Map<Question, QuestionItemViewModel>) // Using Mapper with Collection
                .ToList();

            questionHomeVM.Items = problemVms;

            return View("Views/QuestionHomeView", questionHomeVM);
        }
    }
}