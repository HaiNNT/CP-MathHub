using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using AutoMapper;
using System.Reflection;
using CP_MathHub.Helper;
using CP_MathHub.Models.Account;

namespace CP_MathHub
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            // Config AutoMapper by calling own initialize function
            var profileType = typeof(Profile);
            // Get an instance of each Profile in the executing assembly.
            var profiles = Assembly.GetExecutingAssembly().GetTypes()
                .Where(t => profileType.IsAssignableFrom(t)
                    && t.GetConstructor(Type.EmptyTypes) != null)
                .Select(Activator.CreateInstance)
                .Cast<Profile>();

            // Initialize AutoMapper with each instance of the profiles found.
            Mapper.Initialize(a => profiles.ToList().ForEach(a.AddProfile));

            // Initalize Binding Helper for binding model
            ModelBinders.Binders.Add(typeof(ProfileViewModel), new ProfileViewModelBinder());
            ModelBinders.Binders.Add(typeof(LoginViewModel), new LoginViewModelBinder());

        }
    }
}
