using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Question
{
    public class QuestionDeleteViewModel
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime LastEditedDate { get; set; }
        public int View { get; set; }
        public int VoteUp { get; set; }
        public int VoteDown { get; set; }
        public int HintNum { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public int ReportNum { get; set; }
        public int FollowNum { get; set; }
        public int BookmarkNum { get; set; }
        public int ShareNum { get; set; }
    }
}