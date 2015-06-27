using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Models.Blog;

namespace CP_MathHub.Models.Blog
{
    public class BlogHomeViewModel
    {
        public ICollection<ArticlePreviewViewModel> HotArticles { get; set; }
        public ICollection<ArticlePreviewViewModel> Articles { get; set; }

    }
}