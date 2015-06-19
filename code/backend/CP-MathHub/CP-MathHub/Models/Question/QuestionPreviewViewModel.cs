using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Models.Common;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Question
{
    public class QuestionPreviewViewModel
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public DateTime CreatedDate { get; set; }
        public int ViewNum { get; set; }
        public int VoteUp { get; set; }
        public int VoteDown { get; set; }
        public int AnswerNum { get; set; }
        public int HintNum { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public int BookmarkNum { get; set; }
        public int ReportNum { get; set; }
        public int ShareNum { get; set; }

        public UserInfoViewModel UserInfo { get; set; }
        public ICollection<Tag> Tags { get; set; }
    }
}