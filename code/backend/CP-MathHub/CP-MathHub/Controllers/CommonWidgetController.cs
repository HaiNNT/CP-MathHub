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
using System.Web.Routing;
using CP_MathHub.Models.RealTime;

namespace CP_MathHub.Controllers
{

    public partial class CommonWidgetController : BaseController
    {
        private CPMathHubModelContainer _context;
        private ICommonService _cService;
        private IAccountService _aService;
        private IQuestionService _qService;
        private IBlogService _bService;
        private IDiscussionService _dService;
        private IRealTimeService _rService;
        //private ApplicationUserManager uManager;

        public CommonWidgetController()
        {
            _context = new CPMathHubModelContainer();
            //UserManager = userManager;
        }

        protected override void Initialize(RequestContext requestContext)
        {
            base.Initialize(requestContext);

            if (requestContext.HttpContext.User.Identity.IsAuthenticated)
            {
                _qService = new QuestionService(_context, _currentUserId);
                _cService = new CommonService(_context, _currentUserId);
                _aService = new AccountService(_context, _currentUserId);
                _bService = new BlogService(_context, _currentUserId);
                _dService = new DiscussionService(_context, _currentUserId);
                _rService = new RealTimeService(_context, _currentUserId);
            }
            else
            {
                _cService = new CommonService(_context);
                _aService = new AccountService(_context);
                _bService = new BlogService(_context);
                _dService = new DiscussionService(_context);
                _qService = new QuestionService(_context);
                _rService = new RealTimeService(_context);
            }

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

        [ChildActionOnly]
        [Authorize]
        public virtual ActionResult ProfileWidget()
        {
            ProfileWidgetViewModel profileWidgetVm = null;
            if (User.Identity.IsAuthenticated)
            {
                User user = _cService.GetUser(User.Identity.GetUserId<int>());
                profileWidgetVm = Mapper.Map<User, ProfileWidgetViewModel>(user);
            }
            return PartialView("Widgets/_ProfileWidget", profileWidgetVm);
        }

        [ChildActionOnly]
        public virtual ActionResult UserHeaderWidget()
        {
            UserHeaderViewModel userHeaderVM = null;
            if (User.Identity.IsAuthenticated)
            {
                User user = _cService.GetUser(User.Identity.GetUserId<int>());
                userHeaderVM = Mapper.Map<User, UserHeaderViewModel>(user);
                userHeaderVM.CountNewActivity = _rService.CountNewActivityNotification();
                userHeaderVM.CountNewFriendRequest = _rService.CountNewFriendRequestNotification();
                userHeaderVM.CountNewMessage = _rService.CountNewMessageNotification();
            }

            return PartialView("Widgets/_UserHeaderWidget", userHeaderVM);
        }

        [ChildActionOnly]
        [Authorize]
        public virtual ActionResult FavoriteTagWidget()
        {
            ICollection<Tag> tags = _aService.GetFavoriteTags(User.Identity.GetUserId<int>(), 5);
            return PartialView("Widgets/_FavoriteTagWidget", tags);
        }
        [ChildActionOnly]
        [Authorize]
        public virtual ActionResult FavoritePostWidget()
        {
            FavoritePostViewModel model = new FavoritePostViewModel();
            model.FavoriteDiscussionNum = _dService.CountBookmarkDiscussion();
            model.FavoriteArticleNum = _bService.CountBookmarkArticle();
            model.FavoriteQuestionNum = _qService.CountBookmarkQuestion();
            model.InvitedMainPostNum = _cService.CountInvitedMainPost();
            return PartialView("Widgets/_FavoritePostWidget", model);
        }
        [ChildActionOnly]
        [Authorize]
        public virtual ActionResult FolloweeWidget()
        {
            List<User> followees = _aService.GetFollowee();
            return PartialView("Widgets/_FolloweeWidget", followees);
        }
        [ChildActionOnly]
        public virtual ActionResult UserWidgetHover(int userid){
            User user = _aService.GetUser(userid,"Profile");
            UserHoverViewModel model = new UserHoverViewModel();
            model = Mapper.Map<User, UserHoverViewModel>(user);
            model.FollowStatus = user.Followers.Count(t => t.Id == User.Identity.GetUserId<int>()) > 0;
            UserFriendship friendship1 = user.PassiveRelationship.Where(r => r.UserId == User.Identity.GetUserId<int>()).FirstOrDefault();
            UserFriendship friendship2 = user.ActiveRelationships.Where(r => r.TargetUserId == User.Identity.GetUserId<int>()).FirstOrDefault();
            if (friendship1 != default(UserFriendship))
            {
                switch (friendship1.Status)
                {
                    case RelationshipEnum.Requesting:
                        model.RequestStatus = FriendStatusEnum.ActiveRequesting;
                        break;
                    case RelationshipEnum.Friend:
                        model.RequestStatus = FriendStatusEnum.Friend;
                        break;
                    case RelationshipEnum.Blocked:
                        model.RequestStatus = FriendStatusEnum.Blocked;
                        break;
                    default:
                        model.RequestStatus = FriendStatusEnum.Stranger;
                        break;
                }
            }
            else if (friendship2 != default(UserFriendship))
            {
                switch (friendship2.Status)
                {
                    case RelationshipEnum.Requesting:
                        model.RequestStatus = FriendStatusEnum.PasssiveRequesting;
                        break;
                    case RelationshipEnum.Friend:
                        model.RequestStatus = FriendStatusEnum.Friend;
                        break;
                    case RelationshipEnum.Blocked:
                        model.RequestStatus = FriendStatusEnum.Blocked;
                        break;
                    default:
                        model.RequestStatus = FriendStatusEnum.Stranger;
                        break;
                }
            }
            else
            {
                model.RequestStatus = FriendStatusEnum.Stranger;
            }
            return PartialView("Widgets/_UserHoverWidget", model);
        }
        [Authorize(Roles = Constant.String.RoleAdmin + "," + Constant.String.RoleMod)]
        public virtual ActionResult AdminHeaderWidget()
        {
            CP_MathHub.Models.Admin.UserHeaderViewModel userHeaderVM;
            User user = _cService.GetUser(User.Identity.GetUserId<int>());
            userHeaderVM = Mapper.Map<User, CP_MathHub.Models.Admin.UserHeaderViewModel>(user);

            return PartialView("../Admin/Partials/_UserHeaderPartialView", userHeaderVM);
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

        #region MainPost Widget
        [ChildActionOnly]
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
                    model.MainPosts = _qService.GetQuestions(Constant.Question.String.HomeHotTab).Take(5).ToList<MainPost>();
                    break;
                case "Blog":
                    model.Name = "Bài viết";
                    model.Type = RecommendedMainPostTypeEnum.Hot;
                    model.MainPosts = _bService.GetArticles(Constant.Blog.String.HomeHotTab, _currentUserId).Take(5).ToList<MainPost>();
                    break;
                case "Discussion":
                    model.Name = "Thảo luận";
                    model.Type = RecommendedMainPostTypeEnum.Hot;
                    model.MainPosts = _dService.GetDiscussions(Constant.Discussion.String.HomeHotTab).Take(5).ToList<MainPost>();
                    break;
                default:
                    model.Name = "Bài Viết";
                    model.Type = RecommendedMainPostTypeEnum.Hot;
                    model.System = "Blog";
                    model.MainPosts = _bService.GetArticles(Constant.Blog.String.HomeHotTab, _currentUserId).Take(5).ToList<MainPost>();
                    break;
            }
            return PartialView("../CommonWidget/Widgets/_RecommendedMainPost", model);
        }
        [ChildActionOnly]
        public virtual ActionResult RelatedMainPost(string system, int postId)
        {
            MainPost mainPost = _cService.GetMainPost(postId, "Tags");
            List<MainPost> list = new List<MainPost>();
            RecommendedMainPostViewModel model = new RecommendedMainPostViewModel();
            model.Name = "Bài viết";
            model.Type = RecommendedMainPostTypeEnum.Related;
            model.System = system;
            model.MainPosts = _bService.GetRelatedArticles(mainPost, 0).Take(5).ToList<MainPost>();
            return PartialView("../CommonWidget/Widgets/_RecommendedMainPost", model);
        }
        #endregion

        #region Notification
        public ActionResult FriendRequestNotification()
        {
            List<User> model = _aService.GetFriends(_currentUserId, Constant.Account.String.RequestTab);
            return PartialView("Widgets/_FriendRequestNotificationPartialView", model);
        }
        public ActionResult MessageNotification()
        {
            List<Conversation> convers = _rService.GetNotificationConversations(_currentUserId);
            List<ConversationPreviewViewModel> conversations =
                CP_MathHub.Helper.ListHelper.ConversationsToConversationViewModels(convers, _currentUserId);
            return PartialView("Widgets/_MessageNotificationPartialView", conversations);
        }
        public ActionResult ActivityNotification()
        {
            List<Notification> model = _cService.GetNotifications();
            return PartialView("Widgets/_ActivityNotificationPartialView", model);
        }
        #endregion

        #region Message
        [Authorize]
        public ActionResult GetOnlineConversation(List<int> ids)
        {
            if (ids == null)
            {
                ids = new List<int>();
            }
            List<Conversation> conversations = _rService.GetConversations(ids);
            List<ConversationPreviewViewModel> models =
                CP_MathHub.Helper.ListHelper.ConversationsToConversationViewModels(conversations, _currentUserId, true);
            return PartialView("Widgets/_ChatWidget", models);
        }
        #endregion
        #region Favorite Post

        #endregion
    }
}