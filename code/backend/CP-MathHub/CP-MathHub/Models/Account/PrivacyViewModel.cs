using CP_MathHub.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Account
{
    public class PrivacyViewModel
    {
        public Boolean ReceiveEmail { get; set; }
        public FriendRequestEnum SendRequest { get; set; }
        public SeenBlogEnum SeenBlog { get; set; }
        public int Notification { get; set; }

    }
}