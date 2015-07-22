using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using CP_MathHub.Framework.Controllers;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Service.Services;
using CP_MathHub.Service.Helpers;
using CP_MathHub.Models.Question;
using CP_MathHub.Models.Common;
using CP_MathHub.Models.Account;
using CP_MathHub.Entity;
using AutoMapper;

namespace CP_MathHub.Controllers
{
    [ChildActionOnly]
    public partial class CommonWidgetController : BaseController
    {
        private CPMathHubModelContainer context;
        private ICommonService cService;
        private IAccountService aService;
        private IQuestionService qService;
        private IBlogService bService;
        private IDiscussionService dService;
        //private ApplicationUserManager uManager;

        public CommonWidgetController()
        {
            context = new CPMathHubModelContainer();
            cService = new CommonService(context);
            aService = new AccountService(context);
            bService = new BlogService(context);
            dService = new DiscussionService(context);
            qService = new QuestionService(context);
            //UserManager = userManager;
        }
        //public ApplicationUserManager UserManager
        //{
        //    get
        //    {
        //        return uManager ?? HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>();
        //    }
        //    private set
        //    {
        //        uManager = value;
        //    }
        //}

        #region User Widget
        public virtual ActionResult ProfileWidget()
        {
            ProfileWidgetViewModel profileWidgetVm = null;
            if (User.Identity.IsAuthenticated)
            {
                User user = cService.GetUser(User.Identity.GetUserId<int>());
                profileWidgetVm = Mapper.Map<User, ProfileWidgetViewModel>(user);
            }
            return PartialView("Widgets/_ProfileWidget", profileWidgetVm);
        }
        public virtual ActionResult UserHeaderWidget()
        {
            UserHeaderViewModel userHeaderVM = null;
            if (User.Identity.IsAuthenticated)
            {
                User user = cService.GetUser(User.Identity.GetUserId<int>());
                userHeaderVM = Mapper.Map<User, UserHeaderViewModel>(user);
            }

            return PartialView("Widgets/_UserHeaderWidget", userHeaderVM);
        }

        public virtual ActionResult FavoriteTagWidget()
        {
            ICollection<Tag> tags = aService.GetFavoriteTags(User.Identity.GetUserId<int>());
            return PartialView("Widgets/_FavoriteTagWidget", tags);
        }

        public virtual ActionResult HotMainPost(string system)
        {
            List<MainPost> list = new List<MainPost>();
            RecommendedMainPostViewModel model = new RecommendedMainPostViewModel();
            model.System = system;
            switch (system)
            {
                case "Question":
                    model.Name = "Câu hỏi";
                    model.Type = RecommendedMainPostTypeEnum.Hot;               
                    model.MainPosts = qService.GetQuestions(Constant.Question.String.HomeHotTab).Take(5).ToList<MainPost>();
                    break;
                case "Blog":
                    model.Name = "Bài viết";
                    model.Type = RecommendedMainPostTypeEnum.Hot;
                    model.MainPosts = bService.GetArticles(Constant.Blog.String.HomeHotTab, 0).Take(5).ToList<MainPost>();
                    break;
                case "Discussion":
                    model.Name = "Thảo luận";
                    model.Type = RecommendedMainPostTypeEnum.Hot;
                    model.MainPosts = dService.GetDiscussions(Constant.Discussion.String.HomeHotTab).Take(5).ToList<MainPost>();
                    break;
                default:
                    model.Name = "Bài Viết";
                    model.Type = RecommendedMainPostTypeEnum.Hot;
                    model.System = "Blog";
                    model.MainPosts = bService.GetArticles(Constant.Blog.String.HomeHotTab, 0).Take(5).ToList<MainPost>();
                    break;
            }
            return PartialView("../CommonWidget/Widgets/_RecommendedMainPost", model);
        }

        public virtual ActionResult RelatedMainPost(string system, int postId)
        {
            MainPost mainPost = cService.GetMainPost(postId, "Tags");
            List<MainPost> list = new List<MainPost>();
            RecommendedMainPostViewModel model = new RecommendedMainPostViewModel();
            model.Name = "Bài viết";
            model.Type = RecommendedMainPostTypeEnum.Related;
            model.System = system;
            model.MainPosts = bService.GetRelatedArticles(mainPost, 0).Take(5).ToList<MainPost>();
            return PartialView("../CommonWidget/Widgets/_RecommendedMainPost", model);
        }

        //public virtual ActionResult GroupWidget()
        //{
        //    return PartialView("_GroupWidget");
        //}

        //public virtual ActionResult MySubscriptionWidget()
        //{

        //    return PartialView("_MySubscriptionWidget");
        //}

        //public virtual ActionResult SubscriptionWidget()
        //{
        //    ICollection<Subscription> subscriptions = _userQueryService.GetLoginAllSubscriptions().ToList();
        //    return PartialView("_SubscriptionWidget", subscriptions);
        //}

        //public virtual ActionResult YourActivityWidget()
        //{
        //    return PartialView("_YourActivityWidget");
        //}
        #endregion
    }
}