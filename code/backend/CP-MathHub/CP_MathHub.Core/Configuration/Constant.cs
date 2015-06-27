using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CP_MathHub.Core.Configuration
{
    /// <summary>
    /// Store all common constant
    /// </summary>
    public static class Constant
    {
        /// <summary>
        /// Constant group for Question
        /// </summary>
        public static class Question
        {
            public static class Integer
            {
                public const int PagingDefaultTake = 10;
                public const int UserPagingDefaultTake = 30;
                public const int TagPagingDefaultTake = 30;

            }

            public static class String
            {
                //Home Tab Constant
                public const string HomeDefaultTab = "Newest";
                public const string HomeNewestTab = "Newest";
                public const string HomeUnAnsweredTab = "Unanswered";
                public const string HomeHotTab = "Hot";
                public const string HomeTagTab = "Tag";
                public const string HomeUserTab = "Users";
                public const string CreateTab = "Create";
                public const string SearchTab = "Search";
                //User Tab Constant
                public const string UserNewTab = "newuser";
                public const string UserReputationTab = "reputation";
                public const string UserModTab = "mod";
                public const string UserExpertTab = "expert";
                //Tag Tab Costant
                public const string TagNewTab = "newtag";
                public const string TagPopularTab = "popular";
                public const string TagNameTab = "name";

            }

        }
        /// <summary>
        /// Constant group for Blog
        /// </summary>
        public static class Blog
        {
            public static class Integer
            {
                public const int PagingDefaultTake = 10;
            }

            public static class String
            {
                public const string HomeDefaultTab = "Home";
                public const string HomeHomeTab = "Home";
                public const string HomeSubcribeTab = "Subcribe";
                public const string HomeBookmarkTab = "Bookmark";
                public const string HomeFriendTab = "Friend";
                public const string HomeHotTab = "Hot";
                public const string MyArticleTab = "Mine";
            }
        }
        /// <summary>
        /// Constant group for Discussion
        /// </summary>
        public static class Discussion
        {
            public static class Integer
            {
                public const int PagingDefaultTake = 10;

            }

            public static class String
            {
                //Home Tab Constant
                public const string HomeDefaultTab = "Newest";
                public const string HomeNewestTab = "Newest";
                public const string HomeUnAnsweredTab = "Unanswered";
                public const string HomeHotTab = "Hot";
            }

        }
    }
}
