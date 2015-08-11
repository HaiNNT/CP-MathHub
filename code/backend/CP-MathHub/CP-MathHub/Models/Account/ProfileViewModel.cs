using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CP_MathHub.Entity;
using CP_MathHub.Helper;
using System.ComponentModel.DataAnnotations;

namespace CP_MathHub.Models.Account
{
    public class ProfileViewModel
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        [EmailAddress]
        public string Email { get; set; }
        public Nullable<int> Reputation { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<UserStatusEnum> Status { get; set; }
        [Phone]
        public string PhoneNumber { get; set; }
        public string Password { get; set; }
        public string NewPassword { get; set; }
        public string ConfirmPassword { get; set; }

        public Profile Profile { get; set; }
        [StringLength(30, MinimumLength=5, ErrorMessage="Họ tên từ 5 đến 30 ký tự.")]
        public string FullName { get; set; }
        [StringLength(100, MinimumLength = 10, ErrorMessage = "Địa chỉ từ 10 đến 100 ký tự.")]
        public string Address { get; set; }
        [StringLength(300, MinimumLength = 10, ErrorMessage = "Quan điểm từ 10 đến 100 ký tự.")]
        public string ViewPoint { get; set; }
        [StringLength(300, MinimumLength = 10, ErrorMessage = "Tóm tắt từ 10 đến 100 ký tự.")]
        public string Summary { get; set; }
        public Image Avatar { get; set; }

        public int FriendNumber { get; set; }
        public FriendStatusEnum RequestStatus { get; set; }
        public bool FollowStatus { get; set; }
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