using CP_MathHub.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Account
{
    public class UsersPageViewModel
    {
        public string Tab { get; set; }
        public List<User> ListUsers { get; set; } 
    }
}