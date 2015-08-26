using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Admin
{
    public class CreateTagViewModel
    {
        [Required(ErrorMessage = "Tên thẻ không được để trống.")]
        [StringLength(100, ErrorMessage = "Tên tag từ 6 đến 100 ký tự.", MinimumLength = 6)]
        [RegularExpression(@"^[a-z0-9A-Z\s!.?\+\[\]_\-\*\/\=\p{L}]*$",
        ErrorMessage = "Tên thẻ không được có ký tự đặt biệt.")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Miêu tả không được để trống.")]
        [StringLength(100, ErrorMessage = "Miêu tả có độ dài từ 6 đến 100 ký tự.", MinimumLength = 6)]
        [RegularExpression(@"^[a-z0-9A-Z\s!.?\+\[\]_\-\*\/\=\p{L}]*$",
        ErrorMessage = "Miêu tả không được có ký tự đặt biệt.")]
        public string Description { get; set; }
    }
}