using CP_MathHub.Controllers;
using CP_MathHub.Entity;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CP_MathHub.Tests.Controllers
{
    [TestClass]
    public class BlogControllerTest
    {
        [TestMethod]
        public void GetHotArticle()
        {
            BlogController controller = new BlogController();
            List<Article> result = controller.GetHotArticle() as List<Article>;
            Assert.IsNotNull(result);
        }
        [TestMethod]
        public void GetRelatedArticle()
        {
            BlogController controller = new BlogController();
            List<Article> result = controller.GetRelatedArticle(321) as List<Article>;
            Assert.IsNotNull(result);
        }
    }
}
