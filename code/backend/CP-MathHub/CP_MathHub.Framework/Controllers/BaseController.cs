using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using CP_MathHub.Entity;

namespace CP_MathHub.Framework.Controllers
{
    public class BaseController : Controller
    {
        protected int _currentUserId;

        protected override void Initialize(RequestContext requestContext)
        {
            base.Initialize(requestContext);

            if (requestContext.HttpContext.User.Identity.IsAuthenticated)
            {
                _currentUserId = requestContext.HttpContext.User.Identity.GetUserId<int>();
            }
            else
            {
                _currentUserId = 0;
            }

        }
    }
}
