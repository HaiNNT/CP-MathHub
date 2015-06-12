using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Entity;
using CP_MathHub.Core.Configuration;

namespace CP_MathHub.Core.Interfaces.Services
{
    public interface IQuestionService
    {
        /// <summary>
        /// Get Default Questions
        /// </summary>
        /// <returns></returns>
        List<Question> getQuestions(string homeTab, int skip = 0);
        /// <summary>
        /// Get Questions by Author
        /// </summary>
        /// <returns></returns>
        List<Question> getQuestions(int authorId);
    }
}
