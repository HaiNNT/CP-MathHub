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
    [Authorize(Roles = "Administrator,Moderator")]
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
            model.BanReasons = aService.GetBanReason();
            ViewBag.Page = Constant.Admin.String.ManageUsersPage;
            return View("Views/ManageUsersView", model);
        }
        //Post: BlockUser
        [HttpPost]
        public ActionResult BlockUser(BlockUserViewModel model)
        {
            BanAccount banAccount = new BanAccount();
            banAccount.BannedDate = DateTime.Now;
            banAccount.Duration = model.Duration;
            banAccount.UnBanedDate = DateTime.Now.AddDays(banAccount.Duration);
            banAccount.BannedUser = cService.GetUser(model.BannedUserId);
            banAccount.BannedUser.Status = model.Status;
            banAccount.BanUserId = User.Identity.GetUserId<int>();
            banAccount.Description = model.Description;
            aService.BlockUser(banAccount);

            return null;
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

        public ActionResult ManageInfracPosts()
        {
            List<ManageInfracPostViewModel> models = new List<ManageInfracPostViewModel>();
            //List<Report> list = aService.GetPostReport();
            List<MainPost> mainPosts = aService.GetReportedMainPost();
            foreach (MainPost post in mainPosts)
            {
                ManageInfracPostViewModel model = new ManageInfracPostViewModel();
                model.MainPost = post;
                model.ReportedDate = post.Reports.OrderByDescending(p => p.ReportedDate).First().ReportedDate;
                model.Reporters = post.Reports.Select(r => r.Reporter).ToList();
                model.Reasons = post.Reports.GroupBy(r => r.Type).ToDictionary(k => k.Key.ToString(), k => k.Count());
                model.Status = post.Reports.Count(s => !s.Status) == 0;
                models.Add(model);
                    //Select(r=> new KeyValuePair<string,int>(r.Type.ToString(),0));
            }
            //List<ManageInfracPostsViewModel> model = new ManageInfracPostsViewModel();
            //ICollection<ManageInfracPostViewModel> item = list.Select(Mapper.Map<Report, ManageInfracPostViewModel>).ToList();
           
            return View("Views/ManageInfracPosts", models);
        }

        //Get: Admin/ManageTags
        [HttpGet]
        public ActionResult ManageTags()
        {
            ManageTagsViewModel model = new ManageTagsViewModel();
            List<Tag> list = cService.GetAllTags();
            ICollection<TagViewModel> tagsVM = list.Select(Mapper.Map<Tag, TagViewModel>).ToList();
            model.Items = tagsVM;
            ViewBag.Page = Constant.Admin.String.ManagerTagsPage;
            return View("Views/ManageTagsView", model);
        }
        //Post: Admin/InsertTag
        [HttpPost]
        public ActionResult InsertTag(TagViewModel model)
        {
            Tag tag = new Tag();
            tag.Name = model.Name;
            tag.CreatedDate = DateTime.Now;
            tag.Description = model.Description;
            tag.UserId = User.Identity.GetUserId<int>();
            aService.InsertTag(tag);
            return RedirectToAction("ManageTags");
        }
        //Post: Admin/EditTag
        [HttpPost]
        public bool EditTag(int tagId, string name, string description)
        {
            Tag tag = cService.GetTag(tagId);
            tag.Name = name;
            tag.Description = description;
            aService.EditTag(tag);
            return true;
        }
        //Post: Admin/DeleteTag
        [HttpPost]
        public bool DeleteTag(int tagId)
        {
            aService.DeleteTag(tagId);
            return true;
        }
    }
}