using CP_MathHub.Entity;
using CP_MathHub.Models.Account;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Discussion
{
    public class DiscussionDetailViewModel
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public DateTime CreatedDate { get; set; }
        public UserInfoViewModel UserInfo { get; set; }
        public ICollection<Tag> Tags { get; set; }
    }
}