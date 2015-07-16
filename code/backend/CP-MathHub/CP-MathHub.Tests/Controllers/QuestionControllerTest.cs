using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using CP_MathHub;
using CP_MathHub.Controllers;
using CP_MathHub.Entity;

namespace CP_MathHub.Tests.Controllers
{
    [TestClass]
    public class QuestionControllerTest
    {
        [TestMethod]
        public void Create()
        {
            HomeController controller = new HomeController();

            // Act
            ViewResult result = controller.Index() as ViewResult;

            // Assert
            Assert.IsNotNull(result);
        }
        [TestMethod]
        public void GetHotQuestion()
        {
            QuestionController controller = new QuestionController();
            List<Question> result = controller.GetHotQuestion() as List<Question>;
            Assert.IsNotNull(result);
        }
    }
}
