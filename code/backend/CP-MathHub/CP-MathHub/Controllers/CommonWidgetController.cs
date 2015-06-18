using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CP_MathHub.Framework.Controllers;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Service.Services;
using CP_MathHub.Service.Helpers;
using CP_MathHub.Models.Question;
using CP_MathHub.Models.Common;
using CP_MathHub.Entity;
using AutoMapper;

namespace CP_MathHub.Controllers
{
    [ChildActionOnly]
    public partial class CommonWidgetController : BaseController
    {
        private IAccountService aService;

        public CommonWidgetController()
        {
            aService = new AccountService();
        }

        #region User Widget
        public virtual ActionResult ProfileWidget()
        {
            User user = aService.GetLoginUser();
            ProfileWidgetViewModel profileWidgetVm = Mapper.Map<User, ProfileWidgetViewModel>(user);

            return PartialView("_ProfileWidget", profileWidgetVm);
        }
        public virtual ActionResult UserHeaderWidget()
        {
            User user = aService.GetLoginUser();
            UserHeaderViewModel userHeaderVM = Mapper.Map<User, UserHeaderViewModel>(user);

            return PartialView("_UserHeaderWidget", userHeaderVM);
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