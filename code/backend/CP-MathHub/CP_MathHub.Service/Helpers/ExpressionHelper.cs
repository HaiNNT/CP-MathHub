using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using CP_MathHub.Entity;

namespace CP_MathHub.Service.Helpers
{
    /// <summary>
    /// Lambda Expression Helper Class
    /// </summary>
    public class ExpressionHelper
    {
        /// <summary>
        /// Lambda Expression Helper Class For Question
        /// </summary>
        public class QuestionHelper
        {
            /// <summary>
            /// Get Detail Question lambda expression by id
            /// </summary>
            /// <param name="userId"></param>
            /// <returns></returns>
            public static Expression<Func<Question, bool>> FollowQuestion(int userId)
            {
                return (q => (q.BookmarkUsers.Count(b => b.Id == userId) > 0) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }
            /// <summary>
            /// Get Detail Question lambda expression by id
            /// </summary>
            /// <param name="userId"></param>
            /// <returns></returns>
            public static Expression<Func<Question, bool>> DetailQuestion(int id, int userId)
            {
                return (q => (q.Id == id) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }
            /// <summary>
            /// search Question lambda expression by name
            /// </summary>
            /// <param name="userId"></param>
            /// <returns></returns>
            public static Expression<Func<Question, bool>> SearchQuestion(string name, int userId)
            {
                return (q => (q.Title.ToLower().Contains(name.ToLower())) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }
            /// <summary>
            /// Get tag's Question lambda expression
            /// </summary>
            /// <param name="userId"></param>
            /// <returns></returns>
            public static Expression<Func<Question, bool>> TagQuestion(string tagName, int userId)
            {
                return (q => (q.Tags.Count(t => t.Name == tagName) > 0) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }
            /// <summary>
            /// Get user's Question lambda expression
            /// </summary>
            /// <param name="userId"></param>
            /// <returns></returns>
            public static Expression<Func<Question, bool>> UserQuestion(int authorId, int userId)
            {
                return (q => (q.UserId == authorId) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }
            /// <summary>
            /// Get Newest Question lambda expression
            /// </summary>
            /// <param name="userId"></param>
            /// <returns></returns>
            public static Expression<Func<Question, bool>> NewestQuestion(int userId)
            {
                return (q => q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0)));
            }
            /// <summary>
            /// Get hot Question lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Question, bool>> HotQuestion(int userId)
            {
                return (q => (q.Answers.Count > 2
                                && DbFunctions.DiffDays(q.CreatedDate, DateTime.Now) < 500
                                && (q.View > 500))
                              && (q.Status != PostStatusEnum.Hidden
                                && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }
            /// <summary>
            /// Get unanswered Question lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Question, bool>> UnAnsweredQuestion(int userId)
            {
                return (q => q.Answers.Count == 0
                        && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }
            /// <summary>
            /// Get answer by Id lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Answer, bool>> AnswerOfQuestion(int questionId)
            {
                return (a => a.Type == AnswerEnum.Answer && a.QuestionId == questionId);
            }
            /// <summary>
            /// Get answer by Id lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Answer, bool>> HintOfQuestion(int questionId)
            {
                return (a => a.Type == AnswerEnum.Hint && a.QuestionId == questionId);
            }
            /// <summary>
            /// Get order answer by vote and accepted
            /// </summary>
            /// <returns></returns>
            public static Func<IQueryable<Answer>, IOrderedQueryable<Answer>> OrderUsefulAnswer()
            {
                return (a => a.OrderByDescending(m => m.Accepted).OrderByDescending(m => (m.VoteUp - m.VoteDown)));
            }
        }
        public class DiscussionHelper
        {
            /// <summary>
            /// Detail Discussion lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Discussion, bool>> FollowDiscussion(int userId)
            {
                return (q => (q.BookmarkUsers.Count(b => b.Id == userId) > 0) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }
            /// <summary>
            /// Detail Discussion lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Discussion, bool>> DetailDiscussion(int id, int userId)
            {
                return (q => (q.Id == id) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }
            /// <summary>
            /// Search Discussion lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Discussion, bool>> SearchDiscussion(string title, int userId)
            {
                return (q => (q.Title.ToLower().Contains(title.ToLower())) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }
            /// <summary>
            /// Get tag's Discussion lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Discussion, bool>> TagDiscussion(string tagName, int userId)
            {
                return (q => (q.Tags.Count(t => t.Name == tagName) > 0) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }
            /// <summary>
            /// Get user's Discussion lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Discussion, bool>> UserDiscussion(int authorId, int userId)
            {
                return (q => (q.UserId == authorId) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }
            /// <summary>
            /// Get newest Discussion lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Discussion, bool>> NewestDiscussion(int userId)
            {
                return (q => q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0)));
            }
            /// <summary>
            /// Get hot Discussion lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Discussion, bool>> HotDiscussion(int userId)
            {
                return (q => (q.Comments.Count >= 0
                            && DbFunctions.DiffDays(q.CreatedDate, DateTime.Now) < 500
                            && (q.View > 500)) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }
            /// <summary>
            /// Get order answer by vote and accepted
            /// </summary>
            /// <returns></returns>
            public static Func<IQueryable<Answer>, IOrderedQueryable<Answer>> OrderUsefulAnswer()
            {
                return (a => a.OrderByDescending(m => m.Accepted).OrderByDescending(m => (m.VoteUp - m.VoteDown)));
            }
        }
        public class UserHelper
        {
            public static Expression<Func<User,bool>> MixRoleContainUser(string role, string name)
            {
                return (u => (u.Assessments.Where(a => a.Role.Name == role).Count() > 0) && (u.UserName.ToLower().Contains(name.ToLower())));
            }
            /// <summary>
            /// Get Expert User lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<User, bool>> RoledUsers(string role)
            {
                return (u => u.Assessments.Where(a => a.Role.Name == role).Count() > 0);
            }
            /// <summary>
            /// Get contain name lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Expression<Func<User, bool>> ContainName(string name)
            {
                return (u => u.UserName.ToLower().Contains(name.ToLower()));
            }
            /// <summary>
            /// Get contain name lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Func<User, bool> ContainNameFunc(string name)
            {
                return (u => u.UserName.ToLower().Contains(name.ToLower()));
            }
        }
        public class TagHelper
        {
            /// <summary>
            /// Get contain name lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Expression<Func<Tag, bool>> ContainName(string name)
            {
                return (u => u.Name.ToLower().Contains(name.ToLower()));
            }
        }
        public class BlogHelper
        {
            /// <summary>
            /// Get follow articles lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> FollowArticle(int loginUserId)
            {
                return (q => (q.BookmarkUsers.Count(b => b.Id == loginUserId) > 0 && q.PublicDate <= DateTime.Now) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == loginUserId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == loginUserId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == loginUserId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == loginUserId) > 0))));
            }
            /// <summary>
            /// Search article lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> SearchArticle(string title, int loginUserId)
            {
                return (q => (q.Title.ToLower().Contains(title.ToLower()) && q.PublicDate <= DateTime.Now) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == loginUserId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == loginUserId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == loginUserId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == loginUserId) > 0))));
            }
            /// <summary>
            /// Get detail article lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> DetailArticle(int id, int loginUserId)
            {
                return (q => (q.Id == id && q.PublicDate <= DateTime.Now) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == loginUserId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == loginUserId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == loginUserId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == loginUserId) > 0))));
            }
            /// <summary>
            /// Get user's article lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> TagArticle(int tagId, int loginUserId)
            {
                return (q => (q.Tags.Count(t => t.Id == tagId) > 0 && q.PublicDate <= DateTime.Now) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == loginUserId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == loginUserId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == loginUserId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == loginUserId) > 0))));
            }
            /// <summary>
            /// Get user's article lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> UserArticle(int userId, int loginUserId)
            {
                return (q => (userId == loginUserId && q.Status != PostStatusEnum.Hidden) || ((q.UserId == userId && q.PublicDate <= DateTime.Now) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == loginUserId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == loginUserId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == loginUserId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == loginUserId) > 0)))));
            }
            /// <summary>
            /// Get newest article lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> NewestArticle(int userId)
            {
                return (q => (q.PublicDate <= DateTime.Now) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }
            /// <summary>
            /// Get subcribed article lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> SubcribedArticle(int userId)
            {
                return (q => (q.Author.Followers.Count(m => m.Id == userId) > 0 && q.PublicDate <= DateTime.Now) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }

            /// <summary>
            /// Get Friend Article lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> FriendArticle(int userId)
            {
                return (q => ((q.Author.ActiveRelationships.Count(m => m.TargetUserId == userId) > 0
                            || q.Author.PassiveRelationship.Count(m => m.UserId == userId) > 0) && q.PublicDate <= DateTime.Now) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }

            /// <summary>
            /// Get bookmark article lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> BookmarkArticle(int userId, int loginUserId)
            {
                return (q => (q.BookmarkUsers.Count(m => m.Id == userId) > 0 && q.PublicDate <= DateTime.Now) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == loginUserId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == loginUserId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == loginUserId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == loginUserId) > 0))));
            }

            /// <summary>
            /// Get hot Article lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> HotArticle(int userId)
            {
                return (q => (q.Comments.Count >= 0
                            && DbFunctions.DiffDays(q.CreatedDate, DateTime.Now) < 500
                            && (q.View > 500)
                            && q.PublicDate <= DateTime.Now) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }

            /// <summary>
            /// Get feature Article lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> FeatureArticle(int userId)
            {
                return (q => (q.Comments.Count > 1
                            && DbFunctions.DiffDays(q.CreatedDate, DateTime.Now) < 1000
                            && (q.View > 500)
                            && q.PublicDate <= DateTime.Now) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }

            /// <summary>
            /// Get feature Article lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> RecomendedArticle(int userId)
            {
                return (q => (q.Author.Followers.Count(m => m.Id == userId) > 0 && q.PublicDate <= DateTime.Now) && (q.Status != PostStatusEnum.Hidden
                             && ((q.Privacy == MainPostPrivacyEnum.Everyone) || q.UserId == userId
                                || (q.Privacy == MainPostPrivacyEnum.Friend
                                    && (q.Author.ActiveRelationships.Count(r => r.TargetUserId == userId) > 0
                                        || q.Author.PassiveRelationship.Count(r => r.UserId == userId) > 0))
                                || (q.Privacy == MainPostPrivacyEnum.Invited
                                    && q.Invitations.Count(i => i.InviteeId == userId) > 0))));
            }

            /// <summary>
            /// Get my Article lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> MyArticle(int userId)
            {
                return (a => a.UserId == userId && a.Status != PostStatusEnum.Hidden);
            }

            /// <summary>
            /// Get comments of an article lambda expression
            /// </summary>
            /// <param name="articleId"></param>
            /// <returns></returns>
            public static Expression<Func<Comment, bool>> CommentOfArticle(int articleId)
            {
                return (a => a.PostId == articleId);
            }
        }
    }
}
