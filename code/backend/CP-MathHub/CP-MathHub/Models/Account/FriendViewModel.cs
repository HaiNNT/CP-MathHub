using CP_MathHub.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Account
{
    public class FriendViewModel
    {
        public int Id { get; set; }
        public int FriendNum { get; set; }
        public int FollowerNum { get; set; }
        public int FolloweeNum { get; set; }
        public List<User> ListFriends { get; set; }
        public List<User> ListFollowers { get; set; }
        public List<User> ListFollowees { get; set; }
        public List<User> ListRequested { get; set; }
    }
}