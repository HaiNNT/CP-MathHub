//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CP_MathHub.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        public User()
        {
            this.Posts = new HashSet<Post>();
            this.FavoriteTags = new HashSet<Tag>();
            this.Tags = new HashSet<Tag>();
            this.Bookmarks = new HashSet<MainPost>();
            this.FollowPosts = new HashSet<MainPost>();
            this.Followers = new HashSet<Subscription>();
            this.Followings = new HashSet<Subscription>();
            this.Invitations = new HashSet<Invitation>();
            this.Votes = new HashSet<Vote>();
            this.Assessments = new HashSet<Assessment>();
            this.Privileges = new HashSet<Privilege>();
            this.Attendances = new HashSet<Attendance>();
            this.SharedMainPosts = new HashSet<MainPost>();
            this.ActiveRelationship = new HashSet<UserRelationship>();
            this.PassiveRelationship = new HashSet<UserRelationship>();
            this.Notifications = new HashSet<Notification>();
            this.GroupParticipations = new HashSet<Participation>();
        }
    
        public int Id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public int Reputaion { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public int Status { get; set; }
    
        public virtual ICollection<Post> Posts { get; set; }
        public virtual Profile Profile { get; set; }
        public virtual ICollection<Tag> FavoriteTags { get; set; }
        public virtual ICollection<Tag> Tags { get; set; }
        public virtual ICollection<MainPost> Bookmarks { get; set; }
        public virtual ICollection<MainPost> FollowPosts { get; set; }
        public virtual ICollection<Subscription> Followers { get; set; }
        public virtual ICollection<Subscription> Followings { get; set; }
        public virtual ICollection<Invitation> Invitations { get; set; }
        public virtual ICollection<Vote> Votes { get; set; }
        public virtual ICollection<Assessment> Assessments { get; set; }
        public virtual ICollection<Privilege> Privileges { get; set; }
        public virtual ICollection<Attendance> Attendances { get; set; }
        public virtual ICollection<MainPost> SharedMainPosts { get; set; }
        public virtual ICollection<UserRelationship> ActiveRelationship { get; set; }
        public virtual ICollection<UserRelationship> PassiveRelationship { get; set; }
        public virtual ICollection<Notification> Notifications { get; set; }
        public virtual PrivacySetting PrivacySetting { get; set; }
        public virtual ICollection<Participation> GroupParticipations { get; set; }
        public virtual Activity Activity { get; set; }
    }
}
