using System.Globalization;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using CP_MathHub.Framework.Controllers;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Service.Services;
using CP_MathHub.Service.Helpers;
using CP_MathHub.Models.Account;
using CP_MathHub.Entity;
using CP_MathHub.Helper;
using CP_MathHub.Models.RealTime;
using AutoMapper;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Web.Routing;

namespace CP_MathHub.Controllers
{
    [Authorize]
    public class AccountController : BaseController
    {
        private IAccountService aService;
        private IDiscussionService dService;
        private ICommonService cService;
        private IQuestionService qService;
        private IBlogService bService;
        private IRealTimeService rService;
        private CPMathHubModelContainer context;
        public AccountController()
        {
            context = new CPMathHubModelContainer();
        }
        #region Authentication
        public AccountController(ApplicationUserManager userManager, ApplicationSignInManager signInManager)
        {
            UserManager = userManager;
            SignInManager = signInManager;
            context = new CPMathHubModelContainer();
        }
        protected override void Initialize(RequestContext requestContext)
        {
            base.Initialize(requestContext);

            if (requestContext.HttpContext.User.Identity.IsAuthenticated)
            {
                aService = new AccountService(context, _currentUserId);
                dService = new DiscussionService(context, _currentUserId);
                bService = new BlogService(context, _currentUserId);
                qService = new QuestionService(context, _currentUserId);
                rService = new RealTimeService(context, _currentUserId);
                cService = new CommonService(context, _currentUserId);
            }
            else
            {
                aService = new AccountService(context);
                dService = new DiscussionService(context);
                bService = new BlogService(context);
                qService = new QuestionService(context);
                cService = new CommonService(context);
            }

        }

        private ApplicationUserManager _userManager;
        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            private set
            {
                _userManager = value;
            }
        }

        //
        // GET: /Account/Login
        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            if (returnUrl == default(string) || returnUrl == "")
            {
                returnUrl = Request.Cookies.Get("returnUrl") != null ? Request.Cookies.Get("returnUrl").Value : "";
            }
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        private ApplicationSignInManager _signInManager;

        public ApplicationSignInManager SignInManager
        {
            get
            {
                return _signInManager ?? HttpContext.GetOwinContext().Get<ApplicationSignInManager>();
            }
            private set { _signInManager = value; }
        }
        //
        // POST: /Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Login(LoginViewModel model, string returnUrl)
        {
            //if (!ModelState.IsValid)
            //{
            //    return View(model);
            //}

            // This doen't count login failures towards lockout only two factor authentication
            // To enable password failures to trigger lockout, change to shouldLockout: true
            var result = await SignInManager.PasswordSignInAsync(model.Username, model.Password, model.RememberMe, shouldLockout: false);
            switch (result)
            {
                case SignInStatus.Success:
                    aService.LogLastLogin(model.Username);
                    return RedirectToLocal(returnUrl);
                case SignInStatus.LockedOut:
                    return View("Lockout");
                case SignInStatus.RequiresVerification:
                    return RedirectToAction("SendCode", new { ReturnUrl = returnUrl });
                case SignInStatus.Failure:
                default:
                    ModelState.AddModelError("", "Invalid login attempt.");
                    return View(model);
            }
        }

        //
        // GET: /Account/VerifyCode
        [AllowAnonymous]
        public async Task<ActionResult> VerifyCode(string provider, string returnUrl)
        {
            // Require that the user has already logged in via username/password or external login
            if (!await SignInManager.HasBeenVerifiedAsync())
            {
                return View("Error");
            }
            var user = await UserManager.FindByIdAsync(await SignInManager.GetVerifiedUserIdAsync());
            if (user != null)
            {
                ViewBag.Status = "For DEMO purposes the current " + provider + " code is: " + await UserManager.GenerateTwoFactorTokenAsync(user.Id, provider);
            }
            return View(new VerifyCodeViewModel { Provider = provider, ReturnUrl = returnUrl });
        }

        //
        // POST: /Account/VerifyCode
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> VerifyCode(VerifyCodeViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            var result = await SignInManager.TwoFactorSignInAsync(model.Provider, model.Code, isPersistent: false, rememberBrowser: model.RememberBrowser);
            switch (result)
            {
                case SignInStatus.Success:
                    return RedirectToLocal(model.ReturnUrl);
                case SignInStatus.LockedOut:
                    return View("Lockout");
                case SignInStatus.Failure:
                default:
                    ModelState.AddModelError("", "Invalid code.");
                    return View(model);
            }
        }

        //
        // GET: /Account/Register
        [AllowAnonymous]
        public ActionResult Register()
        {
            return View();
        }

        //
        // POST: /Account/Register
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Register(RegisterViewModel model)
        {
            if (ModelState.IsValid)
            {
                var user = new ApplicationUser { UserName = model.Username, Email = model.Email };
                var result = await UserManager.CreateAsync(user, model.Password);
                if (result.Succeeded)
                {
                    var code = await UserManager.GenerateEmailConfirmationTokenAsync(user.Id);
                    var callbackUrl = Url.Action("ConfirmEmail", "Account", new { userId = user.Id, code = code }, protocol: Request.Url.Scheme);
                    await UserManager.SendEmailAsync(user.Id, "Confirm your account", "Please confirm your account by clicking this link: <a href=\"" + callbackUrl + "\">link</a>");
                    ViewBag.Link = callbackUrl;
                    aService.CreatePrivacy(user.Id);
                    aService.CreateProfile(user.Id);
                    aService.CreateAvatar(user.Id);
                    aService.CreateActivity(user.Id, Request.UserHostAddress);
                    return View("DisplayEmail");
                }
                AddErrors(result);
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        //
        // GET: /Account/ConfirmEmail
        [AllowAnonymous]
        public async Task<ActionResult> ConfirmEmail(int userId, string code)
        {
            if (userId == default(int) || code == null)
            {
                return View("Error");
            }
            var result = await UserManager.ConfirmEmailAsync(userId, code);
            return View(result.Succeeded ? "ConfirmEmail" : "Error");
        }

        //
        // GET: /Account/ForgotPassword
        [AllowAnonymous]
        public ActionResult ForgotPassword()
        {
            return View();
        }

        //
        // POST: /Account/ForgotPassword
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ForgotPassword(ForgotPasswordViewModel model)
        {
            if (ModelState.IsValid)
            {
                var user = await UserManager.FindByNameAsync(model.Email);
                if (user == null || !(await UserManager.IsEmailConfirmedAsync(user.Id)))
                {
                    // Don't reveal that the user does not exist or is not confirmed
                    return View("ForgotPasswordConfirmation");
                }

                var code = await UserManager.GeneratePasswordResetTokenAsync(user.Id);
                var callbackUrl = Url.Action("ResetPassword", "Account", new { userId = user.Id, code = code }, protocol: Request.Url.Scheme);
                await UserManager.SendEmailAsync(user.Id, "Reset Password", "Please reset your password by clicking here: <a href=\"" + callbackUrl + "\">link</a>");
                ViewBag.Link = callbackUrl;
                return View("ForgotPasswordConfirmation");
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        //
        // GET: /Account/ForgotPasswordConfirmation
        [AllowAnonymous]
        public ActionResult ForgotPasswordConfirmation()
        {
            return View();
        }

        //
        // GET: /Account/ResetPassword
        [AllowAnonymous]
        public ActionResult ResetPassword(string code)
        {
            return code == null ? View("Error") : View();
        }

        //
        // POST: /Account/ResetPassword
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ResetPassword(ResetPasswordViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }
            var user = await UserManager.FindByNameAsync(model.Email);
            if (user == null)
            {
                // Don't reveal that the user does not exist
                return RedirectToAction("ResetPasswordConfirmation", "Account");
            }
            var result = await UserManager.ResetPasswordAsync(user.Id, model.Code, model.Password);
            if (result.Succeeded)
            {
                return RedirectToAction("ResetPasswordConfirmation", "Account");
            }
            AddErrors(result);
            return View();
        }

        //
        // GET: /Account/ResetPasswordConfirmation
        [AllowAnonymous]
        public ActionResult ResetPasswordConfirmation()
        {
            return View();
        }

        //
        // POST: /Account/ExternalLogin
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult ExternalLogin(string provider, string returnUrl)
        {
            // Request a redirect to the external login provider
            return new ChallengeResult(provider, Url.Action("ExternalLoginCallback", "Account", new { ReturnUrl = returnUrl }));
        }

        //
        // GET: /Account/SendCode
        [AllowAnonymous]
        public async Task<ActionResult> SendCode(string returnUrl)
        {
            var userId = await SignInManager.GetVerifiedUserIdAsync();
            if (userId == default(int))
            {
                return View("Error");
            }
            var userFactors = await UserManager.GetValidTwoFactorProvidersAsync(userId);
            var factorOptions = userFactors.Select(purpose => new SelectListItem { Text = purpose, Value = purpose }).ToList();
            return View(new SendCodeViewModel { Providers = factorOptions, ReturnUrl = returnUrl });
        }

        //
        // POST: /Account/SendCode
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> SendCode(SendCodeViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View();
            }

            // Generate the token and send it
            if (!await SignInManager.SendTwoFactorCodeAsync(model.SelectedProvider))
            {
                return View("Error");
            }
            return RedirectToAction("VerifyCode", new { Provider = model.SelectedProvider, ReturnUrl = model.ReturnUrl });
        }

        //
        // GET: /Account/ExternalLoginCallback
        [AllowAnonymous]
        public async Task<ActionResult> ExternalLoginCallback(string returnUrl)
        {
            var loginInfo = await AuthenticationManager.GetExternalLoginInfoAsync();
            if (loginInfo == null)
            {
                return RedirectToAction("Login");
            }

            // Sign in the user with this external login provider if the user already has a login
            var result = await SignInManager.ExternalSignInAsync(loginInfo, isPersistent: false);
            switch (result)
            {
                case SignInStatus.Success:
                    return RedirectToLocal(returnUrl);
                case SignInStatus.LockedOut:
                    return View("Lockout");
                case SignInStatus.RequiresVerification:
                    return RedirectToAction("SendCode", new { ReturnUrl = returnUrl });
                case SignInStatus.Failure:
                default:
                    // If the user does not have an account, then prompt the user to create an account
                    ViewBag.ReturnUrl = returnUrl;
                    ViewBag.LoginProvider = loginInfo.Login.LoginProvider;
                    return View("ExternalLoginConfirmation", new ExternalLoginConfirmationViewModel { Email = loginInfo.Email });
            }
        }

        //
        // POST: /Account/ExternalLoginConfirmation
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ExternalLoginConfirmation(ExternalLoginConfirmationViewModel model, string returnUrl)
        {
            if (User.Identity.IsAuthenticated)
            {
                return RedirectToAction("Index", "Manage");
            }

            if (ModelState.IsValid)
            {
                // Get the information about the user from the external login provider
                var info = await AuthenticationManager.GetExternalLoginInfoAsync();
                if (info == null)
                {
                    return View("ExternalLoginFailure");
                }
                var user = new ApplicationUser { UserName = model.Email, Email = model.Email };
                var result = await UserManager.CreateAsync(user);
                if (result.Succeeded)
                {
                    result = await UserManager.AddLoginAsync(user.Id, info.Login);
                    if (result.Succeeded)
                    {
                        await SignInManager.SignInAsync(user, isPersistent: false, rememberBrowser: false);
                        return RedirectToLocal(returnUrl);
                    }
                }
                AddErrors(result);
            }

            ViewBag.ReturnUrl = returnUrl;
            return View(model);
        }

        //
        // POST: /Account/LogOff
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LogOff()
        {
            AuthenticationManager.SignOut();
            Response.Cookies["returnUrl"].Expires = DateTime.Now.AddDays(-1);
            return RedirectToAction("Index", "Home");
        }

        //
        // GET: /Account/ExternalLoginFailure
        [AllowAnonymous]
        public ActionResult ExternalLoginFailure()
        {
            return View();
        }
        #endregion

        public ActionResult BannedPage()
        {
            Entity.User user = aService.GetUser(User.Identity.GetUserId<int>());
            BanAccount model = user.BannedAccounts.Where(b => b.UnBanedDate > DateTime.Now).FirstOrDefault();
            return View(model);
        }

        #region Helpers
        // Used for XSRF protection when adding external logins
        private const string XsrfKey = "XsrfId";

        private IAuthenticationManager AuthenticationManager
        {
            get
            {
                return HttpContext.GetOwinContext().Authentication;
            }
        }

        private void AddErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
        }

        private ActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return Redirect(returnUrl);
            }
            return RedirectToAction("Index", "Home");
        }

        internal class ChallengeResult : HttpUnauthorizedResult
        {
            public ChallengeResult(string provider, string redirectUri)
                : this(provider, redirectUri, null)
            {
            }

            public ChallengeResult(string provider, string redirectUri, string userId)
            {
                LoginProvider = provider;
                RedirectUri = redirectUri;
                UserId = userId;
            }

            public string LoginProvider { get; set; }
            public string RedirectUri { get; set; }
            public string UserId { get; set; }

            public override void ExecuteResult(ControllerContext context)
            {
                var properties = new AuthenticationProperties { RedirectUri = RedirectUri };
                if (UserId != null)
                {
                    properties.Dictionary[XsrfKey] = UserId;
                }
                context.HttpContext.GetOwinContext().Authentication.Challenge(properties, LoginProvider);
            }
        }
        #endregion

        #region Profile

        //Get: /Account/MyProfile
        public ActionResult MyProfile()
        {
            Entity.User user = new User();
            user = aService.GetUser(User.Identity.GetUserId<int>(), "Profile");
            ProfileViewModel model = Mapper.Map<User, ProfileViewModel>(user);
            ViewBag.System = Constant.String.ProfileSystem;
            return View("Views/ProfileView", model);
        }

        //Post: /Account/UpdateProfile
        [HttpPost]
        public ActionResult UpdateProfile([ModelBinder(typeof(BindingHelper))]ProfileViewModel model, string Property, string Image = "")
        {
            Entity.User user = new User();
            user = aService.GetUser(User.Identity.GetUserId<int>(), "Profile");

            switch (Property)
            {
                case "FullName":
                    user.Profile.FullName = model.Profile.FullName;
                    break;
                case "Gender":
                    user.Profile.Gender = model.Profile.Gender;
                    break;
                case "BirthDay":
                    user.Profile.Birthday = model.Profile.Birthday != null ? model.Profile.Birthday : DateTime.Now;
                    break;
                case "Address":
                    user.Profile.Address = model.Profile.Address;
                    break;
                case "PhoneNumber":
                    user.PhoneNumber = model.PhoneNumber;
                    break;
                case "Email":
                    user.Email = model.Email;
                    break;
                case "Facebook":
                    user.Profile.Facebook = model.Profile.Facebook;
                    break;
                case "School":
                    user.Profile.School = model.Profile.School;
                    break;
                case "Education":
                    user.Profile.Education = model.Profile.Education;
                    break;
                case "ViewPoint":
                    user.Profile.ViewPoint = model.Profile.ViewPoint;
                    break;
                case "Summary":
                    user.Profile.Summary = model.Profile.Summary;
                    break;
                case "Password":
                    //PasswordHasher hash = new PasswordHasher();
                    if (UserManager.ChangePassword(User.Identity.GetUserId<int>(), model.Password, model.NewPassword).Succeeded)
                    {
                        return RedirectToAction("MyProfile");
                    }
                    else
                    {
                        return RedirectToAction("MyProfile");
                    }
                //if (hash.VerifyHashedPassword(user.PasswordHash, model.Password) == PasswordVerificationResult.Success
                //    && model.NewPassword == model.ConfirmPassword)
                //{
                //    user.PasswordHash = hash.HashPassword(model.NewPassword);
                //}
                //else
                //{

                //}
                case "Avatar":
                    if (Image != "")
                    {
                        byte[] data = Convert.FromBase64String(Image.Replace("data:image/png;base64,", ""));
                        System.Drawing.Image image;
                        using (MemoryStream ms = new MemoryStream(data))
                        {
                            image = System.Drawing.Image.FromStream(ms);
                        }
                        string pathToSave = Server.MapPath("~/Content/upload/");
                        string filename = Path.GetFileName(User.Identity.Name + ".png");
                        image.Save(Path.Combine(pathToSave, filename));
                        user.Avatar = new Image();
                        user.Avatar.Url = Path.Combine("/Content/upload/", filename);
                        user.Avatar.Caption = "";
                    }
                    break;
                default:
                    break;
            }
            aService.UpdateUser(user);
            return RedirectToAction("MyProfile");
        }

        //Get: /Account/UserProfile
        public ActionResult UserProfile(int userId)
        {
            Entity.User user = new User();
            user = aService.GetUser(userId, "Profile");
            ProfileViewModel model = Mapper.Map<User, ProfileViewModel>(user);
            ViewBag.System = Constant.String.ProfileSystem;
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
            return View("Views/UserProfileView", model);
        }
        #endregion
        #region Friend
        public ActionResult Friend(int page = 0, string tab = "allfriend")
        {
            int userId = User.Identity.GetUserId<int>();
            Entity.User user = new User();
            user = aService.GetUser(userId, "Profile");
            int skip = page * Constant.Question.Integer.UserPagingDefaultTake;
            List<UserItemViewModel> friends = Helper.ListHelper.ListUserToListUserItem(aService.GetFriends(userId, Constant.Account.String.AllFriendTab, skip), User.Identity.GetUserId<int>());
            List<UserItemViewModel> followers = Helper.ListHelper.ListUserToListUserItem(aService.GetFriends(userId, Constant.Account.String.FollowerTab, skip), User.Identity.GetUserId<int>());
            List<UserItemViewModel> followees = Helper.ListHelper.ListUserToListUserItem(aService.GetFriends(userId, Constant.Account.String.FolloweeTab, skip), User.Identity.GetUserId<int>());
            List<UserItemViewModel> requests = Helper.ListHelper.ListUserToListUserItem(aService.GetFriends(userId, Constant.Account.String.RequestTab, skip), User.Identity.GetUserId<int>());
            if (page == 0)
            {
                FriendViewModel model = new FriendViewModel();
                model.ListFollowers = followers;
                model.FriendNum = aService.CountFriend(userId);
                model.FollowerNum = aService.CountFollower(userId);
                model.FolloweeNum = aService.CountFollowee(userId);
                model.ListFriends = friends;
                model.ListFollowees = followees;
                model.ListRequested = requests;
                model.RequestNum = aService.CountFriendRequest(userId);
                model.Id = User.Identity.GetUserId<int>();
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires = DateTime.Now.AddMinutes(5);
                Response.Cookies.Add(cookie);
                ViewBag.System = Constant.String.ProfileSystem;
                ViewBag.Tab = tab;
                return View("Views/FriendView", model);
            }
            else
            {
                return PartialView("Partials/_FriendListPartialView", friends);
            }
        }
        //Account/User Friend
        public ActionResult UserFriend(int friendId, int page = 0, string tab = "allfriend", string searchString = "")
        {
            Entity.User user = new User();
            user = aService.GetUser(friendId, "Profile");
            int skip = page * Constant.Question.Integer.UserPagingDefaultTake;
            List<UserItemViewModel> friends = Helper.ListHelper.ListUserToListUserItem(aService.GetFriends(friendId, Constant.Account.String.AllFriendTab, skip), User.Identity.GetUserId<int>());
            List<UserItemViewModel> followers = Helper.ListHelper.ListUserToListUserItem(aService.GetFriends(friendId, Constant.Account.String.FollowerTab, skip), User.Identity.GetUserId<int>());
            List<UserItemViewModel> followees = Helper.ListHelper.ListUserToListUserItem(aService.GetFriends(friendId, Constant.Account.String.FolloweeTab, skip), User.Identity.GetUserId<int>());
            List<UserItemViewModel> requests = Helper.ListHelper.ListUserToListUserItem(aService.GetFriends(friendId, Constant.Account.String.RequestTab, skip), User.Identity.GetUserId<int>());
            List<UserItemViewModel> mutualfriends = Helper.ListHelper.ListUserToListUserItem(aService.GetMutualFriends(User.Identity.GetUserId<int>(), friendId), User.Identity.GetUserId<int>());
            if (page == 0)
            {
                FriendViewModel model = new FriendViewModel();
                model.Id = friendId;
                model.UserName = user.UserName;
                model.ListFollowers = followers;
                model.FriendNum = aService.CountFriend(friendId);
                model.FollowerNum = aService.CountFollower(friendId);
                model.FolloweeNum = aService.CountFollowee(friendId);
                model.ListFriends = friends;
                model.ListFollowees = followees;
                model.ListRequested = requests;
                model.ListMutualFriend = mutualfriends;
                model.RequestNum = aService.CountFriendRequest(friendId);
                model.MutualFriendNum = aService.CountMutualFriend(User.Identity.GetUserId<int>(), friendId);
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires = DateTime.Now.AddMinutes(5);
                Response.Cookies.Add(cookie);
                ViewBag.System = Constant.String.ProfileSystem;
                ViewBag.Tab = tab;
                ViewBag.SearchString = searchString;
                return View("Views/UserFriendView", model);
            }
            else
            {
                return PartialView("Partials/_UserFriendListPartialView", friends);
            }
        }
        //Post: SendFriendRequest
        [HttpPost]
        public ActionResult SendFriendRequest(int targetUserId, int friendId = 0, string tab = "allfriend", string returnPage = "UserProfile")
        {
            aService.SendFriendRequest(User.Identity.GetUserId<int>(), targetUserId);
            return RedirectToAction(returnPage, new { @userId = targetUserId, @tab = tab, @friendId = friendId });
        }
        //Account/AcceptFriend
        public ActionResult AcceptFriendRequest(int targetUserId, int friendId = 0, string tab = "allfriend", string returnPage = "UserProfile")
        {
            aService.AcceptFriendRequest(User.Identity.GetUserId<int>(), targetUserId);
            aService.CreateConversation(User.Identity.GetUserId<int>(), targetUserId);
            return RedirectToAction(returnPage, new { @userId = targetUserId, @tab = tab, @friendId = friendId });
        }

        //Post: Account/CancelFriend
        public ActionResult CancelFriend(int targetUserId, int friendId = 0, string tab = "allfriend", string returnPage = "UserProfile")
        {
            aService.CancelFriend(User.Identity.GetUserId<int>(), targetUserId);
            return RedirectToAction(returnPage, new { @userId = targetUserId, @tab = tab, @friendId = friendId });
        }

        public ActionResult FollowFriend(int targetUserId, int friendId = 0, string tab = "follower", string returnPage = "UserProfile")
        {
            aService.FollowUser(targetUserId, User.Identity.GetUserId<int>());
            return RedirectToAction(returnPage, new { @userId = targetUserId, @tab = tab, @friendId = friendId });
        }
        public ActionResult UnFollowFriend(int targetUserId, int friendId = 0, string tab = "followee", string returnPage = "UserProfile")
        {
            aService.UnFollowUser(targetUserId, User.Identity.GetUserId<int>());
            return RedirectToAction(returnPage, new { @userId = targetUserId, @tab = tab, @friendId = friendId });
        }
        public ActionResult SearchFriend(int friendId, string searchString, int skip = 0, int take = 0, string tab = "allfriend", string returnPage = "Friend")
        {
            List<User> friends = aService.SearchFriend(searchString, friendId);
            List<UserItemViewModel> friendUserItems = Helper.ListHelper.ListUserToListUserItem(friends, User.Identity.GetUserId<int>());
            return PartialView("Partials/_FriendListPartialView", friendUserItems);
        }
        public ActionResult SearchUserFriend(int friendId, string searchString, int skip = 0, int take = 0, string tab = "allfriend", string returnPage = "UserFriend")
        {
            List<User> friends = aService.SearchFriend(searchString, friendId);
            List<UserItemViewModel> friendUserItems = Helper.ListHelper.ListUserToListUserItem(friends, User.Identity.GetUserId<int>());
            return PartialView("Partials/_UserFriendListPartialView", friendUserItems);
        }
        //Get: Account/Users
        [HttpGet]
        public ActionResult Users(string tab = Constant.Question.String.UserReputationTab, int page = 0)
        {
            int skip = page * Constant.Question.Integer.UserPagingDefaultTake;
            List<User> users = cService.GetUsers(skip, tab);

            if (page == 0)
            {
                UsersPageViewModel model = new UsersPageViewModel();
                model.Tab = tab;
                model.ListUsers = users;
                ViewBag.Tab = Constant.Question.String.HomeUserTab;
                ViewBag.System = Constant.String.ProfileSystem;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires.AddHours(1);
                Response.Cookies.Add(cookie);
                return View("Views/UsersPageView", model);
            }
            else
            {
                return PartialView("Partials/_UserListPartialView", users);
            }

        }
        #endregion
        #region Activity
        public ActionResult MyActivity()
        {
            List<Discussion> discussions = dService.GetDiscussions(User.Identity.GetUserId<int>());
            List<Question> questions = qService.GetQuestions(User.Identity.GetUserId<int>());
            List<Article> articles = bService.GetArticles(User.Identity.GetUserId<int>());
            List<Answer> answers = qService.GetAnswers(User.Identity.GetUserId<int>());
            List<Tag> tags = aService.GetFavoriteTags(User.Identity.GetUserId<int>());
            List<Conversation> convers = rService.GetConversations(_currentUserId);
            List<ConversationPreviewViewModel> conversations =
                CP_MathHub.Helper.ListHelper.ConversationsToConversationViewModels(convers, _currentUserId);
            ConversationDetailViewModel conversation = new ConversationDetailViewModel();
            conversation.SetDates(rService.GetAllConversationMessages(convers.First().Id));
            conversation.Name = rService.GetConversationName(convers.First().Id);
            conversation.Id = convers.First().Id;

            Conversation conver = rService.GetConversation(convers.First().Id);
            for (int i = 0; i < conver.Attendances.Count; i++)
            {
                conver.Attendances.ElementAt(i).SeenDate = DateTime.Now;
            }
            rService.UpdateConversation(conver);

            ActivityViewModel model = new ActivityViewModel();
            model.DiscussionList = discussions;
            model.QuestionList = questions;
            model.ArticleList = articles;
            model.AnswerList = answers;
            model.TagList = tags;
            model.AnswerNum = qService.CountUserAnswer(User.Identity.GetUserId<int>());
            model.ArticleNum = bService.CountUserArticle(User.Identity.GetUserId<int>());
            model.DiscussionNum = dService.CountUserDiscussion(User.Identity.GetUserId<int>());
            model.QuestionNum = qService.CountUserQuestion(User.Identity.GetUserId<int>());
            model.Conversations = conversations;
            model.Conversation = conversation;
            //var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
            //cookie.Expires = DateTime.Now.AddMinutes(5);
            //Response.Cookies.Add(cookie);
            ViewBag.System = Constant.String.ProfileSystem;
            return View("Views/ActivityView", model);
        }
        #endregion
        #region Privacy
        //Get: /Account/Privacy
        [HttpGet]
        public ActionResult Privacy()
        {
            Entity.User user = new User();
            user = aService.GetUser(User.Identity.GetUserId<int>(), "PrivacySetting");
            PrivacyViewModel model = Mapper.Map<User, PrivacyViewModel>(user);
            ViewBag.System = Constant.String.ProfileSystem;
            return View("Views/PrivacyView", model);
        }
        //Post: /Account/UpdatePrivacy
        [HttpPost]
        public ActionResult UpdatePrivacy(PrivacyViewModel model, string Property)
        {
            Entity.User user = new User();
            user = aService.GetUser(User.Identity.GetUserId<int>(), "PrivacySetting");

            switch (Property)
            {
                case "ReceiveMail":
                    user.PrivacySetting.ReceiveEmail = model.ReceiveEmail;
                    break;
                case "SendRequest":
                    user.PrivacySetting.SendRequest = model.SendRequest;
                    break;
                case "SeenBlog":
                    user.PrivacySetting.SeenBlog = model.SeenBlog;
                    break;
                case "Notification":
                    user.PrivacySetting.Notification = model.Notification;
                    break;
                default:
                    break;
            }
            aService.UpdateUser(user);
            return RedirectToAction("Privacy");
        }

        #endregion
        #region Chat

        [Authorize]
        [HttpPost]
        public ActionResult LoadConversationDetail(int id)
        {
            ConversationDetailViewModel conversation = new ConversationDetailViewModel();
            conversation.SetDates(rService.GetAllConversationMessages(id));
            conversation.Name = rService.GetConversationName(id);
            conversation.Id = id;
            Conversation conver = rService.GetConversation(id);
            for (int i = 0; i < conver.Attendances.Count; i++ )
            {
                conver.Attendances.ElementAt(i).SeenDate = DateTime.Now;
            }
            rService.UpdateConversation(conver);
            return PartialView("Partials/_ConversationDetailPartialView", conversation);
        }
        #endregion
    }
}