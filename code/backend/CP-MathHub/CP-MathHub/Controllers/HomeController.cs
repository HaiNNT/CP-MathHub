using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System.Web;
using System.Web.Mvc;
using CP_MathHub.Framework.Controllers;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Models.Home;
using CP_MathHub.Entity;
using CP_MathHub.Core.Interfaces.Services;
using System.Web.Routing;
using CP_MathHub.Service.Services;
namespace CP_MathHub.Controllers
{
    public class HomeController : BaseController
    {
        private ICommonService cService;
        private CPMathHubModelContainer context;
        public HomeController()
        {
            context = new CPMathHubModelContainer();
        }
        protected override void Initialize(RequestContext requestContext)
        {
            base.Initialize(requestContext);

            if (requestContext.HttpContext.User.Identity.IsAuthenticated)
            {
                cService = new CommonService(context);
            }
            else
            {
                cService = new CommonService(context);
            }

        }
        public ActionResult Index()
        {
            ViewBag.System = Constant.String.QuestionSystem;
            return View();
        }
        public ActionResult Rule()
        {
            return View("Rule");
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }
        //Get Home/Contact
        [HttpGet]
        public ActionResult Contact()
        {
            return View();
        }
        //Post Home/Contact
        [HttpPost]
        public ActionResult Contact(ContactViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }
            if (User.Identity.IsAuthenticated == true)
            {
                Feedback feedback = new Feedback();
                feedback.FullName = model.FullName;
                feedback.Status = 1;
                feedback.Email = model.Email;
                feedback.Content = model.Message;
                feedback.UserId = User.Identity.GetUserId<int>();
                feedback.PhoneNumber = model.Phone;
                feedback.CreatedDate = DateTime.Now;
                cService.InsertFeedback(feedback);
            }
            else
            {
                Feedback feedback1 = new Feedback();
                feedback1.FullName = model.FullName;
                feedback1.Status = 1;
                feedback1.Email = model.Email;
                feedback1.Content = model.Message;
                feedback1.PhoneNumber = model.Phone;
                feedback1.CreatedDate = DateTime.Now;
                cService.InsertFeedback(feedback1);
            }
            ViewBag.System = Constant.String.QuestionSystem;
            ViewBag.Message = "Cám ơn đóng góp của bạn. Chúng tôi sẽ xem xét ý kiến của bạn trong thời gian sớm nhất!";
            return View();
        }
    }
}