using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Entity;

namespace CP_MathHub.Core.Configuration
{
    /// <summary>
    /// Store all common constant
    /// </summary>
    public static class Constant
    {
        /// <summary>
        /// Constant String for all Systems
        /// </summary>
        public static class String
        {
            public const string QuestionSystem = "Question";
            public const string BlogSystem = "Blog";
            public const string DiscussionSystem = "Discussion";
            public const string AccountSystem = "Account";
            public const string AdminSystem = "Admin";
            public const string ProfileSystem = "Profile";
            public const string AuthenSystem = "Authen";

            public const string ProfilePage = "profile";

            public const string QuestionHomePage = "question-home";
            public const string QuestionDetailPage = "question-detail";
            public const string QuestionCreatePage = "question-create";
            public const string QuestionEditPage = "question-edit";
            public const string QuestionTagsPage = "question-tags";
            public const string QuestionUsersPage = "question-users";

            public const string BlogHomePage = "blog-home";
            public const string BlogDetailPage = "blog-detail";
            public const string BlogCreatePage = "blog-create";
            public const string BlogEditPage = "blog-edit";
            public const string BlogMyPage = "blog-my";

            public const string DiscussionDetailPage = "discussion-detail";


        }
        /// <summary>
        /// Constant Int for all Systems
        /// </summary>
        public static class Integer
        {
            public const int DefaultTake = 10;
        }

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
                public const string UserFavoriteTag = "favorite";
                //Type
                public const string FollowQuestion = "Follow";
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
                public const string HomeFeatureTab = "Feature";
                public const string HomeRecomendedTab = "Recomended";
                public const string HomeSearchTab = "Search";
                public const string HomeTagTab = "Tag";
                public const string MyArticleTab = "Mine";
                public const string UserArticleTab = "User";
                public const string UserBookmarkTab = "UserBookmark";
                public const string FollowArticle = "Follow";

                public const string GridView = "grid";
                public const string ListView = "list";
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
                public const int CategoryDefaultLoad = 5;
                public const int TagPagingDefaultTake = 30;
                public const int UserPagingDefaultTake = 30;

            }

            public static class String
            {
                //Home Tab Constant
                public const string HomeCategoryTab = "CategoryIndex";
                public const string HomeTagTab = "Tag";
                public const string HomeDefaultTab = "Newest";
                public const string HomeNewestTab = "Newest";
                public const string HomeUserTab = "Users";
                public const string HomeHomeTab = "Home";
                public const string HomeHotTab = "Hot";
                public const string HomeSearchTab = "Search";
                //User Tab Constant
                public const string UserReputationTab = "reputation";
                //Tag Tab Constant
                public const string TagNewTab = "newtag";
                public const string TagPopularTab = "popular";
                public const string TagNameTab = "name";
                //Type
                public const string FollowDiscussion = "Follow";
            }

        }
        /// <summary>
        /// Constant group for Account
        /// </summary>
        public static class Account
        {
            public static class String
            {
                //Friend Tab Constant
                public const string AllFriendTab = "allfriend";
                public const string FollowerTab = "follower";
                public const string FolloweeTab = "followee";
                public const string RequestTab = "friendrequest";
                public const string MutualFriend = "mutualfriend";
            }

            public class Dictionary
            {
                public static Dictionary<int, string> GenderName = new Dictionary<int, string> { { 1, "Nam" }, { 2, "Nữ" }, { 0, "Khác" } };
                public static Dictionary<int, string> EducationName = new Dictionary<int, string> { { 1, "Cấp 1" }, { 2, "Cấp 2" }, { 3, "Cấp 3" }, { 4, "Sinh viên" }, { 5, "Cử nhân" }, { 6, "Thạc sĩ" }, { 7, "Tiến sĩ" }, { 8, "Giáo sư" }, { 0, "Khác" } };
                public static Dictionary<int, string> RequestSend = new Dictionary<int, string> { { 1, "Mọi người" }, { 2, "Bạn của bạn bè" } };
                public static Dictionary<int, string> SeenBlog = new Dictionary<int, string> { { 1, "Mọi người" }, { 2, "Bạn bè" }, { 3, "Bạn của bạn bè" } };

            }
        }
        /// <summary>
        /// Constant group for Admin
        /// </summary>
        public static class Admin
        {
            public static class Integer
            { 
                
            }
            public static class String
            {
                public const string DashboardPage = "Dashboard";
                public const string ManageUsersPage = "ManageUsers";
                public const string ManageRulePage = "ManageRules";
                public const string ManageInfracPosts = "ManageInfracPosts";
                public const string ManagerTagsPage = "ManageTags";
            }
        }
    }
}
