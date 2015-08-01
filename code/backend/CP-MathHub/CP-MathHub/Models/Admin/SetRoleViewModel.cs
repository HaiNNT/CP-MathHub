using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Admin
{
    public class SetRoleViewModel
    {
        public int UserId { get; set; }
        public List<int> RoleId { get; set; }
    }
}