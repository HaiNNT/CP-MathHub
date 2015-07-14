using CP_MathHub.Models.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Discussion
{
    public class DiscussionEditedLogViewModel
    {
        public int Id { get; set; }
        public DateTime CreatedDate { get; set; }
        public string Content { get; set; }
        public string Title { get; set; }
        public UserInfoViewModel UserInfo { get; set; }

    }
}