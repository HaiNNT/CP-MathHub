using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using CP_MathHub.Framework.Controllers;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Service.Services;
using CP_MathHub.Service.Helpers;
using CP_MathHub.Models.Admin;
using CP_MathHub.Models.Common;
using CP_MathHub.Entity;
using AutoMapper;

namespace CP_MathHub.Controllers
{
    [Authorize(Roles = "Moderator")]
    public class AdminController : BaseController
    {
        private IAdminService aService;
        private ICommonService cService;
        private CPMathHubModelContainer context;
        public AdminController()
        {
            context = new CPMathHubModelContainer();
            aService = new AdminService(context);
            cService = new CommonService(context);
        }
        // GET: Admin
        public ActionResult Index()
        {
            DashboardViewModel model = new DashboardViewModel();
            User user = cService.GetUser(User.Identity.GetUserId<int>(), "Activity");
            model.NewUserNumber = aService.CountNewUser(user.Activity.LastLogin);
            model.NewTagNumber = aService.CountNewTag(user.Activity.LastLogin);
            model.NewReportMainpostNumber = aService.CountMainPostReport(user.Activity.LastLogin);
            model.NewReportUserNumber = aService.CountUserReport(user.Activity.LastLogin);
            ViewBag.Page = Constant.Admin.String.DashboardPage;
            return View("Views/DashboardView", model);
        }
    }
}