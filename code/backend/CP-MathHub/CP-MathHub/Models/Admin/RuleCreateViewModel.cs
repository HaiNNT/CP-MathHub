using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Admin
{
    public class RuleCreateViewModel
    {
        [Required]
        [StringLength(100, ErrorMessage = "{0} phải có độ dài ít nhất {2} ký tự.", MinimumLength = 6)]
        public string Name { get; set; }
        [Required]
        [StringLength(100, ErrorMessage = "{0} phải có độ dài ít nhất {2} ký tự.", MinimumLength = 6)]
        public string Description { get; set; }
        public int Duration { get; set; }


    }
}