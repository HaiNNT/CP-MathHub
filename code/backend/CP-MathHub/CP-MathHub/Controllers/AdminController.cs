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
using System.Web.Routing;
using System.Net;
using System.Net.Mail;

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

        }
        protected override void Initialize(RequestContext requestContext)
        {
            base.Initialize(requestContext);

            if (requestContext.HttpContext.User.Identity.IsAuthenticated)
            {
                aService = new AdminService(context, _currentUserId);
                cService = new CommonService(context, _currentUserId);
            }
            else
            {
                aService = new AdminService(context);
                cService = new CommonService(context);
            }

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
            banAccount.BanUser = cService.GetUser(User.Identity.GetUserId<int>());
            banAccount.Description = model.Description;
            banAccount.BanReasons = aService.GetListBanReason(model.Reasons);
            aService.BlockUser(banAccount);
            return PartialView("Partials/_HistoryBlockUserPartialView", banAccount.BannedUser);
        }
        //Post: Unblock
        [HttpPost]
        public bool UnBlockUser(UnBlockUserViewModel model)
        {
            User unBanAcc = cService.GetUser(model.BannedUserId);
            unBanAcc.Status = model.Status;
            aService.UnBlockUser(unBanAcc);
            return true;
        }
        //Post: Set role for user
        [HttpPost]
        public bool SetRoleUser(SetRoleViewModel model)
        {
            aService.ClearRolesUser(model.UserId);
            foreach (int id in model.RoleId)
            {
                Accessment assess = new Accessment();
                assess.UserId = model.UserId;
                assess.RoleId = id;
                assess.AccessedDate = DateTime.Now;
                assess.ExpireDate = DateTime.Now.AddYears(1);
                aService.SetRoleUser(assess);
            }
            return true;
        }

        public ActionResult ManageRule()
        {
            List<BanReason> list = aService.GetBanReasons();
            RulesViewModel model = new RulesViewModel();
            ICollection<RuleViewModel> rulesVM = list.Select(Mapper.Map<BanReason, RuleViewModel>).ToList();
            model.Items = rulesVM;
            ViewBag.Page = Constant.Admin.String.ManageRulePage;
            return View("Views/ManageRulesView", model);
        }
        [HttpPost]
        public bool EditRule(RuleEditViewModel model)
        {
            BanReason banReason = aService.GetBanReason(model.Id);
            banReason.Name = model.Name;
            banReason.Description = model.Description;
            banReason.CreatedDate = banReason.CreatedDate;
            banReason.Duration = model.Duration;
            aService.EditBanReason(banReason);
            return true;
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

        //public ActionResult ManageInfracPosts()
        //{
        //    List<ManageInfracPostViewModel> models = new List<ManageInfracPostViewModel>();
        //    //List<Report> list = aService.GetPostReport();
        //    List<MainPost> mainPosts = aService.GetReportedMainPost();
        //    foreach (MainPost post in mainPosts)
        //    {
        //        ManageInfracPostViewModel model = new ManageInfracPostViewModel();
        //        model.MainPost = post;
        //        model.ReportedDate = post.Reports.OrderByDescending(p => p.ReportedDate).First().ReportedDate;
        //        model.Reporters = post.Reports.Select(r => r.Reporter).ToList();
        //        model.Reasons = post.Reports.GroupBy(r => r.Type).ToDictionary(k => k.Key, k => k.Count());
        //        model.Status = post.Reports.Count(s => !s.Status) == 0;
        //        models.Add(model);
        //        //Select(r=> new KeyValuePair<string,int>(r.Type.ToString(),0));
        //    }
        //    //List<ManageInfracPostsViewModel> model = new ManageInfracPostsViewModel();
        //    //ICollection<ManageInfracPostViewModel> item = list.Select(Mapper.Map<Report, ManageInfracPostViewModel>).ToList();
        //    ViewBag.Page = Constant.Admin.String.ManageInfracPosts;
        //    return View("Views/ManageInfracPostsView", models);
        //}

        //Get: Admin/ManageTags
        [HttpGet]
        public ActionResult ManageTags(string loadType = Constant.Admin.String.NormalLoadTags)
        {
            ManageTagsViewModel model = new ManageTagsViewModel();
            List<Tag> list = cService.GetAllTags();
            ICollection<TagViewModel> tagsVM = list.Select(Mapper.Map<Tag, TagViewModel>).ToList();
            if (loadType == "duplicate")
            {
                tagsVM = tagsVM.Where(t => t.CheckDuplicate).OrderBy(t => t.Name).ToList();
            }
            model.Items = tagsVM;
            ViewBag.Page = Constant.Admin.String.ManagerTagsPage;
            ViewBag.LoadType = loadType;
            return View("Views/ManageTagsView", model);
        }
        //Get: Admin/GetSelectedTags
        public ActionResult GetSelectedTags(List<int> tagIds)
        {
            ManageTagsViewModel model = new ManageTagsViewModel();
            List<Tag> list = cService.GetTags(tagIds);
            ICollection<TagViewModel> tagsVM = list.Select(Mapper.Map<Tag, TagViewModel>).ToList();
            model.Items = tagsVM;
            ViewBag.Page = Constant.Admin.String.ManagerTagsPage;
            return PartialView("Partials/_DuplicateTagsPartialView", model.Items);
        }
        //Get: Admin/GetDuplicateTags
        public ActionResult GetDupicateTags(string tagName)
        {
            ManageTagsViewModel model = new ManageTagsViewModel();
            List<Tag> list = cService.GetDupicateTags(tagName);
            ICollection<TagViewModel> tagsVM = list.Select(Mapper.Map<Tag, TagViewModel>).ToList();
            model.Items = tagsVM;
            ViewBag.Page = Constant.Admin.String.ManagerTagsPage;
            return PartialView("Partials/_DuplicateTagsPartialView", model.Items);
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
        //Post: Admin/ResultDuplicateTag
        [HttpPost]
        public bool ResultDuplicateTags(List<int> tagIds, string tagName, string description)
        {
            aService.ResultDuplicateTags(tagIds, tagName, description);
            return true;
        }
        //Get: Admin/SendEmail
        [HttpGet]
        public ActionResult SendEmail()
        {
            ViewBag.Page = Constant.Admin.String.SendEmail;
            return View("Views/SendMailView");
        }
        //Post: Admin/SendEMail
        [HttpPost]
        public ActionResult SendEmail(SendMailViewModel model)
            {
            var message = new MailMessage();
            message.To.Add(new MailAddress("hainnt1302@gmail.com"));  // replace with valid value 
            message.From = new MailAddress("wssb495@gmail.com");  // replace with valid value
            message.Subject = "Quan san";
            message.Body = string.Format("Nghia vu quan su trieu hoi");
            message.IsBodyHtml = false;

            using (var smtp = new SmtpClient())
            {
                var credential = new NetworkCredential
                {
                    UserName = "wssb495@gmail.com",  // replace with valid value
                    Password = "bluesea495"  // replace with valid value
                };
                smtp.Credentials = credential;
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Send(message);
                return RedirectToAction("ManageTags");
            }
        }
        //Post: Admin/ChangeStatusReport
        [HttpPost]
        public bool ChangeStatusReport(int id, int type)
        {
            aService.changeStatus(id, type);
            return true;
        }

        //Post: Admin/BlockPost
        [HttpPost]
        public bool BlockPost(int id)
        {
            Post post = aService.GetPost(id);
            post.Status = PostStatusEnum.Hidden;
            return aService.UpdatePost(post);
        }

        //Post: Admin/ActivePost
        [HttpPost]
        public bool ActivePost(int id)
        {
            Post post = aService.GetPost(id);
            post.Status = PostStatusEnum.Active;
            return aService.UpdatePost(post);
        }

        //Admin/ManageInfracPosts
        public ActionResult ManageInfracPosts(List<int> MainPostFilters = null, List<int> NormalPostFilters = null, string tab = "mainposts")
        {
            ManageInfracPostsViewModel models = new ManageInfracPostsViewModel();
            #region select mainpost
            models.MainPostFilters = MainPostFilters;
            List<MainPost> listMainPost = new List<MainPost>();
            List<ManageInfracMainPostViewModel> listMainPostChecked = new List<ManageInfracMainPostViewModel>();
            List<ManageInfracMainPostViewModel> listMainPostUnChecked = new List<ManageInfracMainPostViewModel>();

            if (MainPostFilters == null)
            {
                MainPostFilters = new List<int>();
            }
            if (MainPostFilters.Contains(1))//Get questions
            {
                listMainPost.AddRange(aService.GetReportedQuestion().OfType<MainPost>().ToList());
            }
            if (MainPostFilters.Contains(2))// Get articles
            {
                listMainPost.AddRange(aService.GetReportedArticle().OfType<MainPost>().ToList());
            }
            if (MainPostFilters.Contains(3))// Get discussions
            {
                listMainPost.AddRange(aService.GetReportedDiscussion().OfType<MainPost>().ToList());
            }
            if (!MainPostFilters.Contains(3) && !MainPostFilters.Contains(2) && !MainPostFilters.Contains(1))
            {
                listMainPost = aService.GetReportedMainPost();
            }
            foreach (MainPost post in listMainPost)
            {
                ManageInfracMainPostViewModel model = new ManageInfracMainPostViewModel();
                model.MainPost = post;
                model.ReportedDate = post.Reports.OrderByDescending(p => p.ReportedDate).First().ReportedDate;
                model.Reporters = post.Reports.Select(r => r.Reporter).ToList();
                model.Reasons = post.Reports.GroupBy(r => r.Type).ToDictionary(k => k.Key, k => k.Count());
                model.Status = post.Reports.Count(s => !s.Status) == 0;
                models.MainPosts.Add(model);
            }

            if (MainPostFilters.Contains(4))//Filter checked
            {
                foreach (ManageInfracMainPostViewModel q in models.MainPosts)
                {
                    if (q.Status)
                    {
                        listMainPostChecked.Add(q);
                    }
                }
            }

            if (MainPostFilters.Contains(5))//Filter unchecked
            {
                foreach (ManageInfracMainPostViewModel q in models.MainPosts)
                {
                    if (!q.Status)
                    {
                        listMainPostUnChecked.Add(q);
                    }
                }
            }
            if (!MainPostFilters.Contains(4) && !MainPostFilters.Contains(5))
            {
                listMainPostChecked = models.MainPosts.ToList();//get all when not check both of them
            }
            listMainPostChecked.AddRange(listMainPostUnChecked);// merge 2 list into listMainPostChecked
            models.MainPosts = listMainPostChecked;
            #endregion

            #region select normalpost
            models.NormalPostFilters = NormalPostFilters;
            List<Post> listNormalPost = new List<Post>();
            //listNormalPost = aService.GetReportedPost();
            //listNormalPost.AddRange(aService.GetReportedAnswer().OfType<Post>().ToList());
            List<ManageInfracNormalPostViewModel> listNormalPostChecked = new List<ManageInfracNormalPostViewModel>();
            List<ManageInfracNormalPostViewModel> listNormalPostUnChecked = new List<ManageInfracNormalPostViewModel>();
            List<Post> listAnswer = new List<Post>();
            List<Post> listComment = new List<Post>();
            if (NormalPostFilters == null)
            {
                NormalPostFilters = new List<int>();
            }
            if (NormalPostFilters.Contains(1))//Get answer
            {
                listNormalPost.AddRange(aService.GetReportedAnswer().OfType<Post>().ToList());
            }
            if (NormalPostFilters.Contains(2))//Get comment
            {
                listNormalPost.AddRange(aService.GetReportedComment().OfType<Post>().ToList());
            }
            if (!NormalPostFilters.Contains(1) && !NormalPostFilters.Contains(2))
            {
                //listNormalPost = aService.GetReportedPost();
                listAnswer = aService.GetReportedAnswer().OfType<Post>().ToList();
                listComment = aService.GetReportedComment().OfType<Post>().ToList();
                listNormalPost.AddRange(listAnswer);
                listNormalPost.AddRange(listComment);
            }
            foreach (Post post in listNormalPost)
            {
                ManageInfracNormalPostViewModel model = new ManageInfracNormalPostViewModel();
                model.Post = post;
                model.ReportedDate = post.Reports.OrderByDescending(p => p.ReportedDate).First().ReportedDate;
                model.Reporters = post.Reports.Select(r => r.Reporter).ToList();
                model.Reasons = post.Reports.GroupBy(r => r.Type).ToDictionary(k => k.Key, k => k.Count());
                model.Status = post.Reports.Count(s => !s.Status) == 0;
                models.NormalPosts.Add(model);
            }
            if (NormalPostFilters.Contains(3))//Filter checked
            {
                foreach (ManageInfracNormalPostViewModel q in models.NormalPosts)
                {
                    if (q.Status)
                    {
                        listNormalPostChecked.Add(q);
                    }
                }
            }

            if (NormalPostFilters.Contains(4))//Filter unchecked
            {
                foreach (ManageInfracNormalPostViewModel q in models.NormalPosts)
                {
                    if (!q.Status)
                    {
                        listNormalPostUnChecked.Add(q);
                    }
                }
            }
            if (!NormalPostFilters.Contains(3) && !NormalPostFilters.Contains(4))
            {
                listNormalPostChecked = models.NormalPosts.ToList();//get all when not check both of them
            }
            listNormalPostChecked.AddRange(listNormalPostUnChecked);
            models.NormalPosts = listNormalPostChecked;
            #endregion
            ViewBag.Page = Constant.Admin.String.ManageInfracPosts;
            ViewBag.Tab = tab;
            return View("Views/ManageInfracPostsView", models);
        }

        //public ActionResult ManageInfracUsers(List<int> Filters = null)
        //{
        //    ManageInfracUserListViewModel modelList = new ManageInfracUserListViewModel();
        //    modelList.Filters = Filters;
        //    List<User> users = aService.GetReportedUser();
        //    modelList.BanReasons = aService.GetBanReason();
        //    List<ManageInfracUsersViewModel> models = modelList.Items;

        //    foreach (User user in users)
        //    {
        //        ManageInfracUsersViewModel model = new ManageInfracUsersViewModel();
        //        model.User = user;
        //        model.ReportedDate = user.ReportedList.OrderByDescending(p => p.ReportedDate).First().ReportedDate;
        //        model.Reporters = user.ReportedList.Select(r => r.Reporter).ToList();
        //        model.Reasons = user.ReportedList.GroupBy(r => r.Type).ToDictionary(k => k.Key, k => k.Count());
        //        model.Status = user.ReportedList.Count(s => !s.Status) == 0;
        //        models.Add(model);
        //    }
        //    ViewBag.Page = Constant.Admin.String.ManageInfracUsers;
        //    return View("Views/ManageInfracUsersView", modelList); 
        //}

        public ActionResult ManageInfracUsers(List<int> Filters = null)
        {
            ManageInfracUserListViewModel modelList = new ManageInfracUserListViewModel();
            modelList.Filters = Filters;
            List<User> users = aService.GetReportedUser();
            modelList.BanReasons = aService.GetBanReason();
            List<ManageInfracUsersViewModel> modelsChecked = new List<ManageInfracUsersViewModel>();
            List<ManageInfracUsersViewModel> modelsUnChecked = new List<ManageInfracUsersViewModel>();
            if (Filters == null)
            {
                Filters = new List<int>();
            }

            foreach (User user in users)
            {
                ManageInfracUsersViewModel model = new ManageInfracUsersViewModel();
                model.User = user;
                model.ReportedDate = user.ReportedList.OrderByDescending(p => p.ReportedDate).First().ReportedDate;
                model.Reporters = user.ReportedList.Select(r => r.Reporter).ToList();
                model.Reasons = user.ReportedList.GroupBy(r => r.Type).ToDictionary(k => k.Key, k => k.Count());
                model.Status = user.ReportedList.Count(s => !s.Status) == 0;
                modelList.Items.Add(model);
            }

            if (Filters.Contains(1))//Filter checked
            {
                foreach (ManageInfracUsersViewModel q in modelList.Items)
                {
                    if (q.Status)
                    {
                        modelsChecked.Add(q);
                    }
                }
            }
            if (Filters.Contains(2))//Filter checked
            {
                foreach (ManageInfracUsersViewModel q in modelList.Items)
                {
                    if (!q.Status)
                    {
                        modelsUnChecked.Add(q);
                    }
                }
            }
            if (!Filters.Contains(1) && !Filters.Contains(2))
            {
                modelsChecked = modelList.Items.ToList();//get all when not check both of them
            }
            modelsChecked.AddRange(modelsUnChecked);
            modelList.Items = modelsChecked;
            ViewBag.Page = Constant.Admin.String.ManageInfracUsers;
            return View("Views/ManageInfracUsersView", modelList);
        }
    }
}