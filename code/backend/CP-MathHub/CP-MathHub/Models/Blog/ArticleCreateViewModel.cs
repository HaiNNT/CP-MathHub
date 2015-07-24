using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;
using System.ComponentModel.DataAnnotations;

namespace CP_MathHub.Models.Blog
{
    public class ArticleCreateViewModel
    {
        [Required]
        [StringLength(100, MinimumLength = 10)]
        public string Title { get; set; }
        [Required]
        [MinLength(20)]
        public string Content { get; set; }
        [DataType(DataType.Date)]
        public Nullable<DateTime> PublicDate { get; set; }
        public MainPostPrivacyEnum Privacy { get; set; }
        public List<int> TagIds { get; set; }
        public List<int> InviteIds { get; set; }
    }
}