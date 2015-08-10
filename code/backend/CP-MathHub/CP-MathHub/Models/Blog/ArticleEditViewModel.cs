using CP_MathHub.Entity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Blog
{
    public class ArticleEditViewModel
    {
        public int Id { get; set; }
        [Required(ErrorMessage = "Bạn phải nhập tiêu đề!")]
        [StringLength(100, MinimumLength = 10, ErrorMessage = "Tiêu đề từ 10 - 100 ký tự.")]
        [RegularExpression(@"^[a-z0-9A-Z\s!.?\+\-\*\/\=\p{L}]*$",
        ErrorMessage = "Tiêu đề không được có ký tự đặt biệt.")]
        public string Title { get; set; }
        [Required(ErrorMessage = "Bạn phải nhập nội dung!")]
        [MinLength(20, ErrorMessage = "Nội dung có ít nhất 20 ký tự.")]
        public string Content { get; set; }
        public int UserId { get; set; }
        public Nullable<System.DateTime> PublicDate { get; set; }
        public MainPostPrivacyEnum Privacy { get; set; }
    }
}