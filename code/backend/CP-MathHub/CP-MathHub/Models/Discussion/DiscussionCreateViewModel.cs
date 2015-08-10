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
        [Required(ErrorMessage = "Bạn phải nhập tiêu đề!")]
        [StringLength(100, MinimumLength = 10, ErrorMessage = "Tiêu đề từ 10 - 100 ký tự.")]
        [RegularExpression(@"^[a-z0-9A-Z\s!.?\+\-\*\/\=\p{L}]*$",
        ErrorMessage = "Tiêu đề không được có ký tự đặt biệt.")]
        public string Title { get; set; }
        [Required(ErrorMessage = "Bạn phải nhập nội dung!")]
        [MinLength(20, ErrorMessage = "Nội dung có ít nhất 20 ký tự.")]
        public string Content { get; set; }
        public List<int> TagIds { get; set; }
        public MainPostPrivacyEnum Privacy { get; set; }
        public IEnumerable<Tag> TagList { get; set; }
        public List<int> InviteIds { get; set; }
        public int tagId { get; set; }
    }
}