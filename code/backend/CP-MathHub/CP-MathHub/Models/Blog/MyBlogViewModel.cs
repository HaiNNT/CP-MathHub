using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Blog
{
    public class MyBlogViewModel
    {
        public ICollection<ArticlePreviewViewModel> articles { get; set; }
    }
}