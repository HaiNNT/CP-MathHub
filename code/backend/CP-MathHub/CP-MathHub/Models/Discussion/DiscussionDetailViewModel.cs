using CP_MathHub.Entity;
using CP_MathHub.Models.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Discussion
{
    public class DiscussionDetailViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int UserId { get; set; }
        public DateTime CreatedDate { get; set; }
        public int View { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public int CommentNum { get; set; }
        public int ReportNum { get; set; }
        public int Like { get; set; }
        public bool Bookmarked { get; set; }
        public int BookmarkNum { get; set; }
        public bool Liked { get; set; }
        public Nullable<PostStatusEnum> Status { get; set; }
        public ICollection<CommentViewModel> Comments { get; set; }
        public UserInfoViewModel UserInfo { get; set; }
        public ICollection<Tag> Tags { get; set; }
        //public ICollection<DiscussionEditedLogViewModel> EditedLog { get; set; }
    }
}