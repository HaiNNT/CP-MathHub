using CP_MathHub.Entity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Discussion
{
    public class DiscussionEditViewModel
    {
        public int Id { get; set; }
        [Required]
        [StringLength(100, MinimumLength = 10)]
        public string Title { get; set; }
        [Required]
        [MinLength(20)]
        public string Content { get; set; }
        public MainPostPrivacyEnum Privacy { get; set; }
    }
}