using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Account
{
    public class ChangePasswordViewModel
    {
        [Required(ErrorMessage="Bạn phải nhập mật khẩu.")]
        [StringLength(100, ErrorMessage = "Mật khẩu có độ dài từ 6 đến 100 ký tự.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        public string Password { get; set; }
        [Required(ErrorMessage = "Bạn phải nhập mật khẩu mới.")]
        [StringLength(100, ErrorMessage = "Mật khẩu có độ dài từ 6 đến 100 ký tự.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Mật khẩu")]
        public string NewPassword { get; set; }
        [DataType(DataType.Password)]
        [Display(Name = "Xác nhận mật khẩu")]
        [Compare("NewPassword", ErrorMessage = "Xác nhận mật khẩu không đúng")]
        public string ConfirmPassword { get; set; }
    }
}