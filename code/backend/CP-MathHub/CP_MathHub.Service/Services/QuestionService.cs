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
    public class QuestionService : IQuestionService, IDisposable
    {
        private IUnitOfWork dal;
        private ICommonService cService;
        public QuestionService(CPMathHubModelContainer context)
        {
            dal = new MathHubUoW(context);
            cService = new CommonService(context);
        }
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                dal.Dispose();
            }

        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
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
                                    "Author,BookmarkUsers,Sharers,Tags,Reports", // Include Author Property
                                    skip
                                ).ToList();
                    break;
                case Constant.Question.String.HomeUnAnsweredTab:
                    list = dal.Repository<Question>()
                                .Get(
                                    ExpressionHelper.QuestionHelper.UnAnsweredQuestion(), // Get unanswered Question lambda expression
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                                    skip
                                ).ToList();
                    break;
                case Constant.Question.String.HomeHotTab:
                    list = dal.Repository<Question>()
                                .Get(
                                    ExpressionHelper.QuestionHelper.HotQuestion(),// Get hot Question lambda expression
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                                    skip
                                ).ToList();
                    break;
                default:
                    list = dal.Repository<Question>()
                                .Get(null,
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                                    skip
                                ).ToList();
                    break;
            }
            return list;
        }
        public List<Question> GetQuestions(int authorId, int skip = 0)
        {
            return dal.Repository<Question>() //Get Question Repository
                .Get(
                    (a => a.UserId == authorId), //Filter Question by Author
                    (p => p.OrderBy(s => s.CreatedDate)), //Order Question by CreatedDate
                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                    skip
                ).ToList();
        }
        public int CountUserQuestion(int authorId)
        {
            int result = dal.Repository<Question>().Table.Count(d => d.UserId == authorId);
            return result;
        }
        public int CountUserAnswer(int authorId)
        {
            int result = dal.Repository<Answer>().Table.Count(d => d.UserId == authorId);
            return result;
        }
        public List<Answer> GetAnswers(int authorId, int skip = 0)
        {
            return dal.Repository<Answer>() //Get Question Repository
                .Get(
                    (a => a.UserId == authorId), //Filter Question by Author
                    (p => p.OrderBy(s => s.CreatedDate)), //Order Question by CreatedDate
                    "Author,Reports",
                    skip
                ).ToList();
        }
        //public List<Question> GetRelatedQuestions(int tagId, int skip = 0)
        //{
        //    return dal.Repository<Question>()
        //        .Get(
        //            (a=>a.Tags.Where(t=>t.Id == tagId).Count() > 0),
        //            (p => p.OrderBy(s => s.CreatedDate)),
        //            "Author,BookmarkUsers,Sharers,Tags,Reports",
        //            skip
        //        ).ToList();
        //}
        public List<Question> GetQuestions(int skip, string tagName)
        {
            return dal.Repository<Question>() //Get Question Repository
                .Get(a => a.Tags.Where(t => t.Name == tagName).Count() > 0, //Contain tag
                        (p => p.OrderBy(s => s.CreatedDate)),
                        "Author,BookmarkUsers,Sharers,Tags,Reports",
                        skip
                ).ToList();
        }
        public Question GetQuestion(int id)
        {
            Question question = dal.Repository<Question>().GetById(id, "Author,BookmarkUsers,Sharers,Tags,Reports,Votes");
            question.Author = cService.GetUser(question.UserId);
            return question;
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
        public List<Question> SearchQuestion(string searchString, int skip)
        {
            List<Question> list = new List<Question>();
            if (searchString != null)
            {
                IEnumerable<Question> ienum = dal.Repository<Question>()
                               .Get(a => a.Title.ToLower().Contains(searchString.ToLower()),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                                    skip
                               );
                ienum.Distinct();
                list = ienum.ToList();
            }
            return list;
        }
        public int CountSearchResult(string searchString)
        {
            return dal.Repository<Question>().Table.Count(m => m.Title.ToLower().Contains(searchString.ToLower()));
        }
        public List<Answer> GetAnswers(int questionId, AnswerEnum type = 0)
        {
            List<Answer> answers = new List<Answer>();
            switch (type)
            {
                case AnswerEnum.Answer:
                    answers = dal.Repository<Answer>().Get(
                             ExpressionHelper.QuestionHelper.AnswerOfQuestion(questionId),
                             ExpressionHelper.QuestionHelper.OrderUsefulAnswer(),
                             "Author",
                             0,
                             0
                         ).ToList();
                    break;
                case AnswerEnum.Hint:
                    answers = dal.Repository<Answer>().Get(
                            ExpressionHelper.QuestionHelper.HintOfQuestion(questionId),
                            ExpressionHelper.QuestionHelper.OrderUsefulAnswer(),
                            "Author",
                            0,
                            0
                        ).ToList();
                    break;
                default:
                    answers = dal.Repository<Answer>().Get(
                             (a => a.QuestionId == questionId),
                             ExpressionHelper.QuestionHelper.OrderUsefulAnswer(),
                             "Author",
                             0,
                             0
                         ).ToList();
                    break;
            }
            IncludeCommentForAnswers(answers);
            return answers;
        }
        public List<Comment> GetComments(int postId)
        {
            List<Comment> comments = dal.Repository<Comment>().Get(
                    (c => c.PostId == postId),
                    (c => c.OrderByDescending(m => m.CreatedDate)),
                    "",
                    0,
                    0
                ).ToList();
            IncludeUserForComments(comments);
            return comments;
        }
        public void IncludeCommentForAnswers(List<Answer> answers)
        {
            foreach (Answer answer in answers)
            {
                IncludeUserForComments(answer.Comments.ToList());
            }
        }
        public void IncludeUserForComments(List<Comment> comments)
        {
            foreach (Comment comment in comments)
            {
                comment.Author = dal.Repository<User>().Table.FirstOrDefault(m => m.Id == comment.UserId);
            }
        }
        public void AnswerQuestion(Answer answer)
        {
            EditedLog editedlog = new EditedLog();
            editedlog.Content = answer.Content;
            editedlog.CreatedDate = DateTime.Now;
            editedlog.UserId = answer.UserId;
            answer.EditedContents.Add(editedlog);
            dal.Repository<Answer>().Insert(answer);
            dal.Save();
        }
        public bool EditAnswer(Answer answer, int userId, bool hasPermission)
        {
            Answer a = dal.Repository<Answer>().GetById(answer.Id);
            if (answer.UserId == userId || hasPermission)
            {
                a.Content = answer.Content;
                a.LastEditedDate = DateTime.Now;

                EditedLog editedlog = new EditedLog();
                editedlog.Content = answer.Content;
                editedlog.CreatedDate = a.LastEditedDate;
                editedlog.UserId = userId;

                a.EditedContents.Add(editedlog);
                dal.Save();
                return true;
            }
            return false;
        }
        public bool Vote(Vote vote)
        {
            if (dal.Repository<Vote>().Table.Where(v => v.UserId == vote.UserId && v.PostId == vote.PostId).Count() > 0)
            {
                return false;
            }
            Post post = dal.Repository<Post>().GetById(vote.PostId);
            if (vote.Type == VoteEnum.VoteUp)
            {
                ++post.VoteUp;
            }
            else
            {
                ++post.VoteDown;
            }
            dal.Repository<Vote>().Insert(vote);
            dal.Repository<Post>().Update(post);
            dal.Save();
            return true;
        }
        public List<Vote> GetVotes(int postId)
        {
            List<Vote> votes = new List<Vote>();
            votes = dal.Repository<Vote>().Table.Where(v => v.PostId == postId).ToList();
            return votes;
        }
        public void IncludeUserForVotes(List<Vote> votes)
        {
            foreach (Vote vote in votes)
            {
                vote.User = dal.Repository<User>().Table.FirstOrDefault(m => m.Id == vote.UserId);
            }
        }
    }
}
