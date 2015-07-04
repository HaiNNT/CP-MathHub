using System;
using System.Web;
using System.Collections.Generic;
using System.Linq;
using CP_MathHub.Entity;
using System.ComponentModel.DataAnnotations;

namespace CP_MathHub.Models.Discussion
{
    public class DiscussionCreateViewModel
    {
        [Required]
        [StringLength(100, MinimumLength = 10)]
        public string Title { get; set; }
        [Required]
        [MinLength(20)]
        public string Content { get; set; }
        public List<int> TagIds { get; set; }
        public MainPostPrivacyEnum Privacy { get; set; }
    }
}