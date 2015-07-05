using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Blog
{
    public class MyBlogViewModel
    {
        public string View { get; set; }
        public string Url { get; set; }
        public ICollection<ArticlePreviewViewModel> Articles { get; set; }
    }
}