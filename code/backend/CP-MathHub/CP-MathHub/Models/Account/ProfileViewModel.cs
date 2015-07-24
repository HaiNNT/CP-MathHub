using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CP_MathHub.Entity;
using CP_MathHub.Helper;

namespace CP_MathHub.Models.Account
{
    public class ProfileViewModel
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public Nullable<int> Reputation { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<UserStatusEnum> Status { get; set; }
        public string PhoneNumber { get; set; }

        public Profile Profile { get; set; }
        public ICollection<Tag> FavoriteTags { get; set; }
        public ICollection<Accessment> Assessments { get; set; }
        public ICollection<Privilege> Privileges { get; set; }
        public PrivacySetting PrivacySetting { get; set; }
        public Image Avatar { get; set; }

        public ICollection<ProfileHistory> ProfileHistories { get; set; }
        public ICollection<Group> SubscribedGroups { get; set; }
        public ICollection<User> Followers { get; set; }
        public ICollection<User> Followees { get; set; }
        public Activity Activity { get; set; }

        public int FriendNumber { get; set; }
        public FriendStatusEnum RequestStatus { get; set; }
    }

    public enum FriendStatusEnum : int
    {
        ActiveRequesting = 1,
        Friend = 2,
        Blocked = 3,
        PasssiveRequesting = 4,
        Stranger = 5
    }
}