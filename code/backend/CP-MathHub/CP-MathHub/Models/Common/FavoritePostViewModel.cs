using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Common
{
    public class FavoritePostViewModel
    {
        public int FavoriteQuestionNum { get; set; }
        public int FavoriteDiscussionNum { get; set; }
        public int FavoriteArticleNum { get; set; }
        public int InvitedMainPostNum { get; set; }
    }
}