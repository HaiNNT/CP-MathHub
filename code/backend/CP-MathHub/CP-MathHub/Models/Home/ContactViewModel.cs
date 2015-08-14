using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Home
{
    public class ContactViewModel
    {
        [Required(ErrorMessage = "Bạn phải nhập họ tên!")]
        [StringLength(100, MinimumLength = 6, ErrorMessage = "Họ tên gồm từ 6 - 100 ký tự.")]
        [RegularExpression(@"^[a-z0-9A-Z\s!.?\+\[\]_\-\*\/\=\p{L}]*$",
        ErrorMessage = "Họ tên không được có ký tự đặt biệt.")]
        public string FullName { get; set; }
        [EmailAddress(ErrorMessage="Địa chỉ Email không hợp lệ")]
        public string Email { get; set; }
        [RegularExpression(@"^[0-9\s]*$", ErrorMessage = "Số điện thoại không hợp lệ.")]
        public string Phone { get; set; }
        [Required(ErrorMessage = "Bạn phải nhập nội dung!")]
        [StringLength(300, MinimumLength = 6, ErrorMessage = "Nội dung gồm từ 6 - 300 ký tự.")]
        [RegularExpression(@"^[a-z0-9A-Z\s!.?\+\[\]_\-\*\/\=\p{L}]*$",
        ErrorMessage = "Nội dung không được có ký tự đặt biệt.")]
        public string Message { get; set; }
    }
}