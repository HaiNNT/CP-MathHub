﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Account
{
    public class ActivityViewModel
    {
        public List<Entity.Discussion> DiscussionList { get; set; }
        public int DiscussionNum { get; set; }
        public List<Entity.Question> QuestionList { get; set; }
        public int QuestionNum { get; set; }
        public List<Entity.Article> ArticleList { get; set; }
        public int ArticleNum { get; set; }
        public List<Entity.Answer> AnswerList { get; set; }
        public int AnswerNum { get; set; }
    }
}