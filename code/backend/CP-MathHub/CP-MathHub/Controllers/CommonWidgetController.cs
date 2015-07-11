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
        private ICommonService cService;
        private CPMathHubModelContainer context;
        //private ApplicationUserManager uManager;

        public CommonWidgetController()
        {
            context = new CPMathHubModelContainer();
            cService = new CommonService(context);
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
                User user = cService.GetUser(Int32.Parse(User.Identity.GetUserId()));
                profileWidgetVm = Mapper.Map<User, ProfileWidgetViewModel>(user);
            }
            return PartialView("Widgets/_ProfileWidget", profileWidgetVm);
        }
        public virtual ActionResult UserHeaderWidget()
        {
            UserHeaderViewModel userHeaderVM = null;
            if (User.Identity.IsAuthenticated)
            {
                User user = cService.GetUser(Int32.Parse(User.Identity.GetUserId()));
                userHeaderVM = Mapper.Map<User, UserHeaderViewModel>(user);
            }

            return PartialView("Widgets/_UserHeaderWidget", userHeaderVM);
        }

        //public virtual ActionResult FavoriteTagWidget()
        //{
        //    ICollection<Tag> tags = _userQueryService.GetLoginFavoriteTag().ToList();
        //    return PartialView("_FavoriteTagWidget", tags);
        //}

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