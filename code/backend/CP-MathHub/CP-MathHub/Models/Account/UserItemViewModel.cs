using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Account
{
    public class UserItemViewModel
    {
        public User User { get; set; }
        public FriendStatusEnum RequestStatus { get; set; }
        public bool FollowStatus { get; set; }
    }
}