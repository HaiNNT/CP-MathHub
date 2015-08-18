using CP_MathHub.Models.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Blog
{
    public class UserBlogViewModel
    {
        public string View { get; set; }
        public string Url { get; set; }
        public ICollection<ArticlePreviewViewModel> Articles { get; set; }
        public int UserId { get; set; }
        public string UserName { get; set; }
    }
}