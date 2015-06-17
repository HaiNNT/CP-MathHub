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
using CP_MathHub.Service.Helpers;

namespace CP_MathHub.Service.Services
{
    public class QuestionService : IQuestionService
    {
        private IUnitOfWork dal;
        public QuestionService()
        {
            dal = new MathHubUoW();   
        }
        public List<Question> GetQuestions(string homeTab, int skip = 0)
        {
            List<Question> list = new List<Question>();
            switch (homeTab)
            {
                case Constant.Question.String.HomeNewestTab:
                    list = dal.Repository<Question>() // Get Question Repository
                                .Get(null,
                                    (p => p.OrderByDescending(s => s.CreatedDate)), //Order Question by CreatedDate
                                    "Author", // Include Author Property
                                    skip
                                ).ToList();
                    break;
                case Constant.Question.String.HomeUnAnsweredTab:
                    list = dal.Repository<Question>()
                                .Get(
                                    ExpressionHelper.QuestionHelper.UnAnsweredQuestion(), // Get unanswered Question lambda expression
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author",
                                    skip
                                ).ToList();
                    break;
                case Constant.Question.String.HomeHotTab:
                    list = dal.Repository<Question>()
                                .Get(
                                    ExpressionHelper.QuestionHelper.HotQuestion(),// Get hot Question lambda expression
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author"
                                ).ToList();
                    break;
                default:
                    list = dal.Repository<Question>()
                                .Get(null,
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author",
                                    skip
                                ).ToList();
                    break;
            }
            return list;
        }
        public List<Question> GetQuestions(int authorId)
        {
            return dal.Repository<Question>() //Get Question Repository
                .Get(
                    (a => a.UserId > 0), //Filter Question by Author
                    (p => p.OrderBy(s => s.CreatedDate)), //Order Question by CreatedDate
                    "Author"
                ).ToList();
        }
        public Question GetQuestionDetail(int id)
        {
            return dal.Repository<Question>().GetById(id);
        }
        public void InsertQuestion(Question question)
        {
            dal.Repository<Question>().Insert(question);
            dal.Save();
        }
        public void EditQuestion(Question question)
        {
            dal.Repository<Question>().Update(question);
            dal.Save();
        }
        public void DeleteQuestion(Question question)
        {
            dal.Repository<Question>().Delete(question);
            dal.Save();
        }
        public List<Question> SearchQuestion(string searchString)
        {
            List<Question> list = new List<Question>();
            if (!String.IsNullOrEmpty(searchString))
            {
                list = dal.Repository<Question>()
                               .Get(p => p.Title.Contains(searchString),
                               (p => p.OrderBy(s => s.CreatedDate)),
                               "Author"
                               ).ToList();
            }
            return list;
        }
    }
}
