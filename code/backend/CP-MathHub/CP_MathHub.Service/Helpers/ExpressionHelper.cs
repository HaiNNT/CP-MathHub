﻿using System;
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
            /// Get hot Question lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Question, bool>> HotQuestion()
            {
                return (a => a.Answers.Count > 2
                            && DbFunctions.DiffDays(a.CreatedDate,  DateTime.Now) < 500
                            && (a.View > 500));
            }
            /// <summary>
            /// Get unanswered Question lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Question, bool>> UnAnsweredQuestion()
            {
                return (a => a.Answers.Count == 0);
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
        public class UserHelper
        {
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
                return (u => u.Username.ToLower().Contains(name.ToLower()));
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
            /// Get subcribed article lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> SubcribedArticle(User user)
            {
                return (a => a.Author.Followers.Contains(user));
            }

            /// <summary>
            /// Get Friend Article lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> FriendArticle(User user)
            {
                return (a => a.Author.ActiveRelationships.Where(m => m.TargetUserId == user.Id).Count() > 0
                            && a.Author.PassiveRelationship.Where(m => m.UserId == user.Id).Count() > 0);
            }

            /// <summary>
            /// Get bookmark article lambda expression
            /// </summary>
            /// <param name="name"></param>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> BookmarkArticle(User user)
            {
                return (a => a.BookmarkUsers.Contains(user));
            }

            /// <summary>
            /// Get hot Article lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> HotArticle()
            {
                return (a => a.Comments.Count > 2
                            && DbFunctions.DiffDays(a.CreatedDate, DateTime.Now) < 500
                            && (a.View > 500));
            }

            /// <summary>
            /// Get my Article lambda expression
            /// </summary>
            /// <returns></returns>
            public static Expression<Func<Article, bool>> MyArticle(User user)
            {
                return (a => a.UserId == user.Id);
            }
        }
    }
}
