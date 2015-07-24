using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;
using CP_MathHub.Models.Common;

namespace CP_MathHub.Models.Blog
{
    public class ArticleDetailViewModel
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public Nullable<DateTime> PublicDate { get; set; }
        public DateTime LastEditedDate { get; set; }
        public int View { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public int ReportNum { get; set; }
        public int FollowNum { get; set; }
        public int BookmarkNum { get; set; }
        public int ShareNum { get; set; }
        public int Like { get; set; }
        public bool Bookmarked { get; set; }
        public bool Liked { get; set; }
        public bool Edited { get; set; }
        public Nullable<PostStatusEnum> Status { get; set; }
        public MainPostPrivacyEnum Privacy { get; set; }

        public ICollection<CommentViewModel> Comments { get; set; }
        public UserInfoViewModel UserInfo { get; set; }
        public ICollection<Tag> Tags { get; set; }
    }
}