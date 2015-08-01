using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Admin
{
    public class UnBlockUserViewModel
    {
        public int BannedUserId { get; set; }
        public UserStatusEnum Status { get; set; }
    }
}