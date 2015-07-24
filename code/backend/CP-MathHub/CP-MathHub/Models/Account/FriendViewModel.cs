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
        public string UserName { get; set; }
        public int FriendNum { get; set; }
        public int FollowerNum { get; set; }
        public int FolloweeNum { get; set; }
        public int RequestNum { get; set; }
        public List<UserItemViewModel> ListFriends { get; set; }
        public List<UserItemViewModel> ListFollowers { get; set; }
        public List<UserItemViewModel> ListFollowees { get; set; }
        public List<UserItemViewModel> ListRequested { get; set; }
    }
}