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
using System.IO;
using CP_MathHub.RealTime;

namespace CP_MathHub.Controllers
{
    [Authorize(Roles = Constant.String.RoleAdmin + "," + Constant.String.RoleMod)]
    public class AdminController : BaseController
    {
        private IAdminService aService;
        private ICommonService cService;
        private CPMathHubModelContainer context;
        private Microsoft.AspNet.SignalR.IHubContext _hub;

        public AdminController()
        {
            context = new CPMathHubModelContainer();
            _hub = Microsoft.AspNet.SignalR.GlobalHost.ConnectionManager.GetHubContext<RealTimeHub>();

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

        [Authorize(Roles = Constant.String.RoleAdmin)]
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
            banAccount.BannedUser.Status = UserStatusEnum.Banned;
            banAccount.BanUser = cService.GetUser(User.Identity.GetUserId<int>());
            banAccount.Description = model.Description;
            banAccount.BanReasons = aService.GetListBanReason(model.Reasons);
            aService.BlockUser(banAccount);

            Notification notification = new Notification();
            notification.AuthorId = _currentUserId;
            notification.CreatedDate = DateTime.Now;
            notification.Content = banAccount.Duration + " ngày. Bắt đầu từ ngày " + banAccount.BannedDate.ToShortDateString();
            notification.Seen = false;
            notification.Type = NotificationSettingEnum.Banned;
            notification.UserId = model.BannedUserId;
            notification.Link = Url.Action("BannedPage", "Account");
            cService.AddNotification(notification);

            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), notification.UserId))
            {
                IEnumerable<string> connectionIds = RealTimeHub.Connections.GetConnections(notification.UserId);
                foreach (string conId in connectionIds)
                {
                    _hub.Clients.Client(conId).notifyNewActivity(rService.CountNewActivityNotification());
                }
            }

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
        [Authorize(Roles = Constant.String.RoleAdmin)]
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
            User user = cService.GetUser(model.UserId);
            Notification notification = new Notification();
            notification.AuthorId = _currentUserId;
            notification.CreatedDate = DateTime.Now;
            notification.Content = string.Join(",", user.Assessments.Select(u => u.Role.Name));
            notification.Seen = false;
            notification.Type = NotificationSettingEnum.Banned;
            notification.UserId = model.UserId;
            notification.Link = Url.Action("BannedPage", "Account");
            cService.AddNotification(notification);

            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), notification.UserId))
            {
                IEnumerable<string> connectionIds = RealTimeHub.Connections.GetConnections(notification.UserId);
                foreach (string conId in connectionIds)
                {
                    _hub.Clients.Client(conId).notifyNewActivity(rService.CountNewActivityNotification());
                }
            }
            return true;
        }
        [Authorize(Roles = Constant.String.RoleAdmin)]
        public ActionResult ManageRule()
        {
            List<BanReason> list = aService.GetBanReasons();
            RulesViewModel model = new RulesViewModel();
            ICollection<RuleViewModel> rulesVM = list.Select(Mapper.Map<BanReason, RuleViewModel>).ToList();
            model.Items = rulesVM;
            ViewBag.Page = Constant.Admin.String.ManageRulePage;
            return View("Views/ManageRulesView", model);
        }
        [Authorize(Roles = Constant.String.RoleAdmin)]
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

        [Authorize(Roles = Constant.String.RoleAdmin)]
        [HttpPost]
        public ActionResult InsertRule(RulesViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View("Partials/RuleCreatePartialView", model);
            }
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
        public ActionResult InsertTag(CreateTagViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View("Partials/_CreateTagPartialView", model);
            }
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
        //Post: Admin/ResolveDuplicateTag
        [HttpPost]
        public bool ResolveDuplicateTags(List<int> tagIds, string tagName, string description)
        {
            aService.ResolveDuplicateTags(tagIds, tagName, description);
            return true;
        }
        //Get: Admin/SendEMail
        public ActionResult SendEmail()
        {
            SendMailViewModel model = new SendMailViewModel();
            User user = cService.GetUser(User.Identity.GetUserId<int>(), "Activity");
            model.Users = cService.GetUsers("Profile,BannedAccounts,Avatar");
            ViewBag.Page = Constant.Admin.String.SendEMail;
            return View("Views/SendEMailView", model);
        }
        //Post: Admin/SendEMail
        [HttpPost, ValidateInput(false)]
        public ActionResult SendEmail(SendMailViewModel model)
        {
            var message = new MailMessage();
            string TargetEmail = model.UserEmails;
            List<string> TargetEmails = TargetEmail.Replace(" ", "").Split(',').ToList();
            foreach (string s in TargetEmails)
            {
                message.To.Add(new MailAddress(s)); //Get mail list
            }
            message.Subject = model.Subject;
            message.Body = model.Message;
            message.IsBodyHtml = true;
            if (model.Upload != null && model.Upload.ContentLength > 0)
            {
                message.Attachments.Add(new Attachment(model.Upload.InputStream, Path.GetFileName(model.Upload.FileName)));
            }
            using (var smtp = new SmtpClient())
            {
                smtp.Send(message);
                return RedirectToAction("ManageContact");
            }
        }
        //Post: Admin/ManageContact

        public ActionResult ManageContact()
        {
            ManageContactViewModel model = new ManageContactViewModel();
            List<Feedback> list = aService.GetFeedback();
            model.Feedbacks = list;
            return View("Views/ManageContactView", model);
        }
        public bool DeleteFeedback(List<int> ids)
        {
            aService.DeleteFeedbacks(ids);
            return true;
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
            bool check = aService.UpdatePost(post);
            if (check)
            {
                Notification notification = new Notification();
                notification.AuthorId = _currentUserId;
                notification.CreatedDate = DateTime.Now;
                notification.Seen = false;
                notification.UserId = post.UserId;

                #region Track Post Type
                if (post is MainPost)
                {
                    notification.Type = NotificationSettingEnum.BlockedMainPost;
                    notification.Content = ((MainPost)post).Title;
                    if (post is Question)
                    {
                        notification.Link = Url.Action("Detail", "Question", new { id = id });
                    }
                    else if (post is Discussion)
                    {
                        notification.Link = Url.Action("Detail", "Discussion", new { id = id });
                    }
                    else
                    {
                        notification.Link = Url.Action("Detail", "Blog", new { id = id });
                    }

                }
                else if (post is Answer)
                {
                    notification.Type = NotificationSettingEnum.BlockedAnswer;
                    notification.Content = ((Answer)post).Question.Title;
                    notification.Link = Url.Action("Detail", "Question", new { id = ((Answer)post).Question.Id });
                }
                else if (post is Comment)
                {
                    notification.Type = NotificationSettingEnum.BlockedComment;
                    Comment comment = (Comment)post;
                    if (comment.Post is Answer)
                    {
                        notification.Content = ((Answer)comment.Post).Question.Title;
                        notification.Link = Url.Action("Detail", "Question", new { id = ((Answer)comment.Post).Question.Id });
                    }
                    else if (comment.Post is Comment)
                    {
                        Comment c = (Comment)comment.Post;
                        if (c.Post is Discussion)
                        {
                            notification.Content = ((Discussion)c.Post).Title;
                            notification.Link = Url.Action("Detail", "Discussion", new { id = ((Discussion)c.Post).Id });
                        }
                        else
                        {
                            notification.Content = ((Article)c.Post).Title;
                            notification.Link = Url.Action("Detail", "Blog", new { id = ((Article)c.Post).Id });
                        }
                    }
                    else
                    {
                        if (comment.Post is Discussion)
                        {
                            notification.Content = ((Discussion)comment.Post).Title;
                            notification.Link = Url.Action("Detail", "Discussion", new { id = ((Discussion)comment.Post).Id });
                        }
                        else if (comment.Post is Question)
                        {
                            notification.Content = ((Question)comment.Post).Title;
                            notification.Link = Url.Action("Detail", "Question", new { id = ((Question)comment.Post).Id });
                        }
                        else
                        {
                            notification.Content = ((Article)comment.Post).Title;
                            notification.Link = Url.Action("Detail", "Blog", new { id = ((Article)comment.Post).Id });
                        }
                    }
                }
                #endregion

                cService.AddNotification(notification);

                using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), notification.UserId))
                {
                    IEnumerable<string> connectionIds = RealTimeHub.Connections.GetConnections(notification.UserId);
                    foreach (string conId in connectionIds)
                    {
                        _hub.Clients.Client(conId).notifyNewActivity(rService.CountNewActivityNotification());
                    }
                }
            }
            return check;
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
            models.MainPosts = listMainPostChecked.OrderByDescending(m => m.ReportedDate).ToList();
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
                model.Id = post.Id;
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
            models.NormalPosts = listNormalPostChecked.OrderByDescending(m => m.ReportedDate).ToList();
            #endregion
            ViewBag.Page = Constant.Admin.String.ManageInfracPosts;
            ViewBag.Tab = tab;
            return View("Views/ManageInfracPostsView", models);
        }

        //public ActionResult ManageInfracUsers(List<int> Filters =s null)
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
                model.Id = user.Id;
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
            modelList.Items = modelsChecked.OrderByDescending(m => m.ReportedDate).ToList();
            ViewBag.Page = Constant.Admin.String.ManageInfracUsers;
            return View("Views/ManageInfracUsersView", modelList);
        }

    }
}