using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;
using CP_MathHub.Models.Account;

namespace CP_MathHub.Models.Common
{
    public class UserHoverViewModel
    {
        public string Username { get; set; }
        public Profile Profile { get; set; }
        public int Reputation { get; set; }
        public int Id { get; set; }

        public Image Avatar { get; set; }
        public FriendStatusEnum RequestStatus { get; set; }
        public bool FollowStatus { get; set; }
    }
}