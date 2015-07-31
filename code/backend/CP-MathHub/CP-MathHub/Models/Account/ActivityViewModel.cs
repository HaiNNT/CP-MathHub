using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;
using CP_MathHub.Models.RealTime;

namespace CP_MathHub.Models.Account
{
    public class ActivityViewModel
    {
        public List<Entity.Discussion> DiscussionList { get; set; }
        public List<Entity.Question> QuestionList { get; set; }
        public List<Entity.Article> ArticleList { get; set; }
        public List<Entity.Answer> AnswerList { get; set; }
        public List<Tag> TagList { get; set; }
        public int CountTagPost { get; set; }

        public List<Entity.Discussion> FollowDiscussionList { get; set; }
        public List<Entity.Question> FollowQuestionList { get; set; }
        public List<Entity.Article> FollowArticleList { get; set; }
        public List<Entity.MainPost> InvitedList { get; set; }

        public List<ConversationPreviewViewModel> Conversations { get; set; }
        public ConversationDetailViewModel Conversation { get; set; }
    }
}