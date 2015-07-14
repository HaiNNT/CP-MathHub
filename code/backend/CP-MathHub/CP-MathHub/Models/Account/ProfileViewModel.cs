﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

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

        public virtual Profile Profile { get; set; }
        public virtual ICollection<Tag> FavoriteTags { get; set; }
        public virtual ICollection<Accessment> Assessments { get; set; }
        public virtual ICollection<Privilege> Privileges { get; set; }
        public virtual ICollection<UserFriendship> ActiveRelationships { get; set; }
        public virtual ICollection<UserFriendship> PassiveRelationship { get; set; }
        public virtual PrivacySetting PrivacySetting { get; set; }
        public virtual Image Avatar { get; set; }

        public virtual ICollection<ProfileHistory> ProfileHistories { get; set; }
        public virtual ICollection<Group> SubscribedGroups { get; set; }
        public virtual ICollection<User> Followers { get; set; }
        public virtual ICollection<User> Followees { get; set; }
        public virtual Activity Activity { get; set; }

    }
}