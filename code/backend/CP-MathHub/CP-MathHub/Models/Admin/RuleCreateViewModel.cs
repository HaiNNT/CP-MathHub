﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Admin
{
    public class RuleCreateViewModel
    {
        [Required(ErrorMessage="Tên quy định không được để trống.")]
        [StringLength(100, ErrorMessage = "Tên quy định từ 6 đến 100 ký tự.", MinimumLength = 6)]
        [RegularExpression(@"^[a-z0-9A-Z\s!.?\+\[\]_\-\*\/\=\p{L}]*$",
        ErrorMessage = "Tên quy định không được có ký tự đặt biệt.")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Miêu tả không được để trống.")]
        [StringLength(100, ErrorMessage = "Miêu tả có độ dài từ 6 đến 100 ký tự.", MinimumLength = 6)]
        [RegularExpression(@"^[a-z0-9A-Z\s!.?\+\[\]_\-\*\/\=\p{L}]*$",
        ErrorMessage = "Miêu tả không được có ký tự đặt biệt.")]
        public string Description { get; set; }
        public int Duration { get; set; }


    }
}