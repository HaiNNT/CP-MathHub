﻿using System;
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
            //Role constant
            public const string RoleAdmin = "Administrator";
            public const string RoleMod = "Moderator";
            public const string RoleExpert = "Expert";
            public const string RoleUser = "User";

            //System name constant
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

            //Plus reputaion
            public const string ReputationCommentLike = "CommentLike";
            public const string ReputationQuestionUpVote = "QuestionUpVote";
            public const string ReputationQuestionDownVote = "QuestionDownVote";
            public const string ReputationDiscussionLike = "DiscussionLike";
            public const string ReputationArticleLike = "ArticleLike";
            public const string ReputationAnswerUpVote = "AnswerUpVote";
            public const string ReputationAnswerDownVote = "AnswerDownVote";
            public const string ReputationAcceptedAnswer = "AcceptedAnswer";

        }
        /// <summary>
        /// Constant Int for all Systems
        /// </summary>
        public static class Integer
        {
            public const int DefaultTake = 10;
        }

        public static class Enum
        {
            public enum LikeResult : int
            {
                Fail = 0,
                Article = 1,
                Discussion = 2,
                Comment = 3,
                Reply = 4,
                Unlike = 5
            }
        }

        /// <summary>
        /// Constant group for Question
        /// </summary>
        public static class Question
        {
            public static class Integer
            {
                public const int PagingDefaultTake = 5;
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
                public const string BookmarkQuestion = "Bookmark";
            }

        }
        /// <summary>
        /// Constant group for Blog
        /// </summary>
        public static class Blog
        {
            public static class Integer
            {
                public const int PagingDefaultTake = 5;
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
                public const string BookmarkArticle = "BookmarkArticle";

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
                public const int PagingDefaultTake = 5;
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
                public const string BookmarkDiscussion = "Bookmark";
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
        //    DuplicateQuestion = 1,
        //Swearing = 2,
        //SpamComment = 3,
        //Other = 0,
        //SpamAnswer = 4,
        //ClonedAccount = 5,
        //SpamQuestion = 6,
        //WrongMainPostPosition = 7
            public class Dictionary
            {
                public static Dictionary<int, string> GenderName = new Dictionary<int, string> { { 1, "Nam" }, { 2, "Nữ" }, { 0, "Khác" } };
                public static Dictionary<string, string> EducationAndPostPrivacyName = new Dictionary<string, string> { { "PrimarySchool", "Cấp 1" }, { "SecondarySchool", "Cấp 2" }, { "HighSchool", "Cấp 3" }, { "Student", "Sinh viên" }, { "Bachelor", "Cử nhân" }, { "Master", "Thạc sĩ" }, { "Doctor", "Tiến sĩ" }, { "Professor", "Giáo sư" }, { "Others", "Khác" }, { "Everyone", "Mọi người" }, { "Friend", "Bạn bè" }, { "Invited", "Người được mời" }, {"FriendOfFriend", "Bạn của bạn bè"} };
                public static Dictionary<int, string> EducationName = new Dictionary<int, string> { { 1, "Cấp 1" }, { 2, "Cấp 2" }, { 3, "Cấp 3" }, { 4, "Sinh viên" }, { 5, "Cử nhân" }, { 6, "Thạc sĩ" }, { 7, "Tiến sĩ" }, { 8, "Giáo sư" }, { 0, "Khác" } };
                public static Dictionary<int, string> RequestSend = new Dictionary<int, string> { { 1, "Mọi người" }, { 2, "Bạn của bạn bè" } };
                public static Dictionary<int, string> ChatPrivacy = new Dictionary<int, string> { { 1, "Bạn bè" } };
                public static Dictionary<int, string> ReportType = new Dictionary<int, string> {{1,"Câu hỏi trùng"}, {2,"Sử dụng từ ngữ không phù hợp"}, {3,"Bình luận spam"},
                                                                                               {4,"Trả lời spam"}, {5,"Sử dụng tài khoản ão"},{6,"Câu hỏi spam"}, {7,"Sai vị trí"}, {0,"Lý do khác"}};
                public static Dictionary<string, string> RoleColor =
                    new Dictionary<string, string> { { Constant.String.RoleAdmin, "red" }, { Constant.String.RoleMod, "yellow" }, { Constant.String.RoleExpert, "green" }, { Constant.String.RoleUser, "black" } };
                public static Dictionary<string, string> RoleName = new Dictionary<string, string> { { "User", "Người dùng" }, { "Moderator", "Quản trị viên" }, { "Expert", "Chuyên gia" }, { "Administrator", "Admin" } };
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
                public const string ManageInfracUsers = "ManageInfracUsers";
                public const string ManageContact = "ManageContact";

                public const string NormalLoadTags = "default";
                public const string AllDuplicatetags = "duplicate";
                public const string SendEMail = "SendEMail";
            }
        }
    }
}
