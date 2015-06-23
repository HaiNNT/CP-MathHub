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
    }
}
