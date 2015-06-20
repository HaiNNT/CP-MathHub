using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;
using System.ComponentModel.DataAnnotations;

namespace CP_MathHub.Models.Question
{
    public class QuestionCreateViewModel
    {
        [Required]
        [StringLength(100, MinimumLength = 10)]
        public string Title { get; set; }
        [Required]
        [MinLength(20)]
        public string Content { get; set; }
        public List<int> TagIds { get; set; }
        public List<int> Invitations { get; set; }
    }
}