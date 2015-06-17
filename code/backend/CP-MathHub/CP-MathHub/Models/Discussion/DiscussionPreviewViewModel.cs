using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Models.Account;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Discussion
{
    public class DiscussionPreviewViewModel
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public DateTime CreatedDate { get; set; }
        public int ViewNum { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public int ReportNum { get; set; }
        public UserInfoViewModel UserInfo { get; set; }
        public ICollection<Tag> Tags { get; set; }
    }
}