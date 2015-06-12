using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
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
                            && (a.CreatedDate - new DateTime()).Days < 5
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
        
    }
}
