using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Admin
{
    public class BlockUserViewModel
    {
        public int Duration { get; set; }
        public int BannedUserId { get; set; }
        public string Description { get; set; }
        public UserStatusEnum Status { get; set; }
    }
}