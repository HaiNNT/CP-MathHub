using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CP_MathHub.Entity;

namespace CP_MathHub.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";
            User user = new User();
            ReputationRule repu = new ReputationRule();
            CPMathHubModelContainer ctx = new CPMathHubModelContainer();
            repu = ctx.ReputationRules.Find(1);
            ViewBag.Repu = repu;

            return View();
        }
    }
}