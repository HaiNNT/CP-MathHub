using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Entity;
using CP_MathHub.Core.Interfaces.DAL;
using CP_MathHub.DAL;

namespace CP_MathHub.Service.Services
{
    public class QuestionService : IQuestionService
    {
        private IUnitOfWork dal;
        public QuestionService()
        {
            dal = new MathHubUoW();   
        }
        public List<Question> getQuestions()
        {

            return dal.Repository<Question>() // Get Question Repository
                    .Get(
                        (a => a.Answers.Count > 0), //Filter Question by Answer num > 0
                        (p => p.OrderBy(s => s.CreatedDate)) //Order Question by CreatedDate
                    ).ToList();
        }
        /// <summary>
        /// Get Questions by Author
        /// </summary>
        /// <param name="authorId"></param>
        /// <returns></returns>
        public List<Question> getQuestions(int authorId)
        {
            return dal.Repository<Question>() //Get Question Repository
                .Get(
                    (a => a.UserId > 0), //Filter Question by Author
                    (p => p.OrderBy(s => s.CreatedDate)) //Order Question by CreatedDate
                ).ToList();
        }
    }
}
