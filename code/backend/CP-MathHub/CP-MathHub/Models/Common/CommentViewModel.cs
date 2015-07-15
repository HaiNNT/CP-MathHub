using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Common
{
    public class CommentViewModel
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public int UserId { get; set; }
        public DateTime CreatedDate { get; set; }
        public string Content { get; set; }
        public bool Liked { get; set; }
        public string Avatar { get; set; }
        public int Like { get; set; }
        public Nullable<PostStatusEnum> Status { get; set; }

        public ICollection<CommentViewModel> Comments { get; set; }
        public ICollection<Vote> Votes { get; set; }
    }
}