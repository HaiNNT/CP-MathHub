using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Account
{
    public class ActivityViewModel
    {
        public List<Entity.Discussion> DiscussionList { get; set; }
        public List<Entity.Question> QuestionList { get; set; }
        public List<Entity.Article> ArticleList { get; set; }
        public List<Entity.Answer> AnswerList { get; set; }
    }
}