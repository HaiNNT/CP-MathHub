using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using CP_MathHub.Service.Services;
using CP_MathHub.Entity;

namespace CP_MathHub.Tests.Services
{
    [TestClass]
    public class QuestionServiceTest
    {
        [TestMethod]
        public void InsertQuestion()
        {
            //QuestionService service = new QuestionService();

            //Question question = new Question();
            //question.Title = "Title 1";
            //question.Content = "Content 1";
            //question.CreatedDate = DateTime.Now;
            //question.UserId = 93;
            //question.View = 0;
            //question.Privacy = MainPostPrivacyEnum.Everyone;
            //question.LastViewed = question.CreatedDate;
            //question.LastEditedDate = question.CreatedDate;

            //service.InsertQuestion(question);

            Assert.IsFalse(1 == 0);
        }

        [TestMethod]
        public void GetQuestion()
        {
            QuestionService service = new QuestionService(new CPMathHubModelContainer());

            Question question = service.GetQuestion(250);
            Assert.IsNotNull(question);
        }
    }
}
