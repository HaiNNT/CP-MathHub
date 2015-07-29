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
    [Authorize(Roles = "Administrator")]
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
        [HttpGet]
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

        //Get: Admin/ManageUsers
        [HttpGet]
        public ActionResult ManageUsers()
        {
            ManageUsersViewModel model = new ManageUsersViewModel();
            User user = cService.GetUser(User.Identity.GetUserId<int>(), "Activity");
            model.NewUserNumber = aService.CountNewUser(user.Activity.LastLogin);
            model.UserNumber = aService.CountUsers();
            model.Users = cService.GetUsers("Profile,BannedAccounts,Avatar");
            model.BanReasons = cService.GetBanReason();
            ViewBag.Page = Constant.Admin.String.ManageUsersPage;
            return View("Views/ManageUsersView", model);
        }

        public ActionResult ManageRule()
        {
            List<BanReason> list = aService.GetBanReasons();
            RulesViewModel model = new RulesViewModel();
            ICollection<RuleViewModel> rulesVM = list.Select(Mapper.Map<BanReason,RuleViewModel>).ToList();
            model.Items = rulesVM;
            ViewBag.Page = Constant.Admin.String.ManageRulePage;
            return View("Views/ManageRulesView",model);
        }
        [HttpPost]
        public ActionResult EditRule(RuleEditViewModel model)
        {
            BanReason banReason = aService.GetBanReason(model.Id);
            banReason.Name = model.Name;
            banReason.Description = model.Description;
            banReason.CreatedDate = banReason.CreatedDate;
            banReason.Duration = model.Duration;
            aService.EditBanReason(banReason);
            return RedirectToAction("ManageRule");
        }
        [HttpPost]
        public ActionResult DeleteRule(int Id)
        {
            BanReason banReason = aService.GetBanReason(Id);
            aService.DeleteBanReason(banReason);
            return RedirectToAction("ManageRule");
        }

        [HttpPost]
        public ActionResult InsertRule(RulesViewModel model)
        {
            BanReason banReason = new BanReason();
            banReason.Name = model.Name;
            banReason.Description = model.Description;
            banReason.Duration = model.Duration;
            banReason.CreatedDate = DateTime.Now;
            aService.InsertBanReason(banReason);
            return RedirectToAction("ManageRule");
        }
    }
}