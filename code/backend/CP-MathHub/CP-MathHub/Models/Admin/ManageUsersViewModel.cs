using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Admin
{
    public class ManageUsersViewModel
    {
        public int NewUserNumber { get; set; }
        public int UserNumber { get; set; }
        List<User> Users { get; set; }
    }
}