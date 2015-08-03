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
        private int _loginUserId;
        private IUnitOfWork _dal;
        private ICommonService _cService;
        public QuestionService(CPMathHubModelContainer context, int userId = 0)
        {
            _loginUserId = userId;
            _dal = new MathHubUoW(context);
            _cService = new CommonService(context);
        }
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                _dal.Dispose();
            }

        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
        public List<Question> GetQuestions(string homeTab, int skip = 0, int take = 0)
        {
            List<Question> list = new List<Question>();
            switch (homeTab)
            {
                case Constant.Question.String.HomeNewestTab:
                    list = _dal.Repository<Question>() // Get Question Repository
                                .Get(ExpressionHelper.QuestionHelper.NewestQuestion(_loginUserId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)), //Order Question by CreatedDate
                                    "Author,BookmarkUsers,Sharers,Tags,Reports", // Include Author Property
                                    skip
                                ).ToList();
                    break;
                case Constant.Question.String.HomeUnAnsweredTab:
                    list = _dal.Repository<Question>()
                                .Get(
                                    ExpressionHelper.QuestionHelper.UnAnsweredQuestion(_loginUserId), // Get unanswered Question lambda expression
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                                    skip
                                ).ToList();
                    break;
                case Constant.Question.String.HomeHotTab:
                    list = _dal.Repository<Question>()
                                .Get(
                                    ExpressionHelper.QuestionHelper.HotQuestion(_loginUserId),// Get hot Question lambda expression
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                                    skip
                                ).ToList();
                    break;
                case Constant.Question.String.FollowQuestion:
                    list = _dal.Repository<Question>()
                                .Get(
                                    ExpressionHelper.QuestionHelper.FollowQuestion(_loginUserId),// Get hot Question lambda expression
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                                    skip
                                ).ToList();
                    break;
                default:
                    list = _dal.Repository<Question>()
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
            return _dal.Repository<Question>() //Get Question Repository
                .Get(
                    ExpressionHelper.QuestionHelper.UserQuestion(authorId, _loginUserId), //Filter Question by Author
                    (p => p.OrderBy(s => s.CreatedDate)), //Order Question by CreatedDate
                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                    skip
                ).ToList();
        }
        public int CountUserQuestion(int authorId)
        {
            int result = _dal.Repository<Question>().Table.Count(ExpressionHelper.QuestionHelper.UserQuestion(authorId, _loginUserId));
            return result;
        }
        public int CountUserAnswer(int authorId)
        {
            int result = _dal.Repository<Answer>().Table.Count(d => d.UserId == authorId);
            return result;
        }
        public List<Answer> GetAnswers(int authorId, int skip = 0)
        {
            return _dal.Repository<Answer>() //Get Question Repository
                .Get(
                    (a => a.UserId == authorId), //Filter Question by Author
                    (p => p.OrderBy(s => s.CreatedDate)), //Order Question by CreatedDate
                    "Author,Reports",
                    skip
                ).ToList();
        }
        public Answer GetAnswer(int id)
        {
            return _dal.Repository<Answer>().GetById(id);
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
            return _dal.Repository<Question>() //Get Question Repository
                .Get(ExpressionHelper.QuestionHelper.TagQuestion(tagName, _loginUserId), //Contain tag
                        (p => p.OrderBy(s => s.CreatedDate)),
                        "Author,BookmarkUsers,Sharers,Tags,Reports",
                        skip
                ).ToList();
        }
        public Question GetQuestion(int id)
        {
            Question question = _dal.Repository<Question>().GetById(id, "Author,BookmarkUsers,Sharers,Tags,Reports,Votes");
            question.Author = _cService.GetUser(question.UserId);
            return question;
        }
        public Question GetDetailQuestion(int id)
        {
            Question question = _dal.Repository<Question>()
                                        .Include("Author,BookmarkUsers,Sharers,Tags,Reports,Votes").Table
                                        .Where(ExpressionHelper.QuestionHelper.DetailQuestion(id, _loginUserId))
                                        .FirstOrDefault();
            if (question != default(Question))
                question.Author = _cService.GetUser(question.UserId);
            return question;
        }
        public void InsertQuestion(Question question)
        {
            _dal.Repository<Question>().Insert(question);
            _dal.Save();
        }
        public void EditQuestion(Question question)
        {
            _dal.Repository<Question>().Update(question);
            _dal.Save();
        }
        public void DeleteQuestion(Question question)
        {
            _dal.Repository<Question>().Delete(question);
            _dal.Save();
        }
        public List<Question> SearchQuestion(string searchString, int skip)
        {
            List<Question> list = new List<Question>();
            if (searchString != null)
            {
                IEnumerable<Question> ienum = _dal.Repository<Question>()
                               .Get(ExpressionHelper.QuestionHelper.SearchQuestion(searchString, _loginUserId),
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
            return _dal.Repository<Question>().Table.Count(ExpressionHelper.QuestionHelper.SearchQuestion(searchString, _loginUserId));
        }
        public List<Answer> GetAnswers(int questionId, AnswerEnum type)
        {
            List<Answer> answers = new List<Answer>();
            switch (type)
            {
                case AnswerEnum.Answer:
                    answers = _dal.Repository<Answer>().Get(
                             ExpressionHelper.QuestionHelper.AnswerOfQuestion(questionId),
                             ExpressionHelper.QuestionHelper.OrderUsefulAnswer(),
                             "Author",
                             0,
                             0
                         ).ToList();
                    break;
                case AnswerEnum.Hint:
                    answers = _dal.Repository<Answer>().Get(
                            ExpressionHelper.QuestionHelper.HintOfQuestion(questionId),
                            ExpressionHelper.QuestionHelper.OrderUsefulAnswer(),
                            "Author",
                            0,
                            0
                        ).ToList();
                    break;
                default:
                    answers = _dal.Repository<Answer>().Get(
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
            List<Comment> comments = _dal.Repository<Comment>().Get(
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
                comment.Author = _dal.Repository<User>().Table.FirstOrDefault(m => m.Id == comment.UserId);
            }
        }
        public void AnswerQuestion(Answer answer)
        {
            EditedLog editedlog = new EditedLog();
            editedlog.Content = answer.Content;
            editedlog.CreatedDate = DateTime.Now;
            editedlog.UserId = answer.UserId;
            answer.EditedContents.Add(editedlog);
            _dal.Repository<Answer>().Insert(answer);
            _dal.Save();
        }
        public Answer EditAnswer(Answer answer, int userId, bool hasPermission)
        {
            Answer a = _dal.Repository<Answer>().GetById(answer.Id);
            if (a.UserId == userId || hasPermission)
            {
                a.Content = answer.Content;
                a.LastEditedDate = DateTime.Now;

                EditedLog editedlog = new EditedLog();
                editedlog.Content = answer.Content;
                editedlog.CreatedDate = a.LastEditedDate;
                editedlog.UserId = userId;

                a.EditedContents.Add(editedlog);
                _dal.Save();
                return a;
            }
            return a;
        }
        public bool Vote(Vote vote)
        {
            if (_dal.Repository<Vote>().Table.Where(v => v.UserId == vote.UserId && v.PostId == vote.PostId).Count() > 0)
            {
                return false;
            }
            Post post = _dal.Repository<Post>().GetById(vote.PostId);
            if (vote.Type == VoteEnum.VoteUp)
            {
                ++post.VoteUp;
                if (post.GetType().BaseType == typeof(Question))
                {
                    _cService.PlusReputation(vote.PostId, Constant.String.ReputationQuestionUpVote);
                }
                else
                {
                    _cService.PlusReputation(vote.PostId, Constant.String.ReputationAnswerUpVote);
                }
            }
            else
            {
                ++post.VoteDown;
                if (post.GetType().BaseType == typeof(Question))
                {
                    _cService.PlusReputation(vote.PostId, Constant.String.ReputationQuestionDownVote);
                }
                else
                {
                    _cService.PlusReputation(vote.PostId, Constant.String.ReputationAnswerDownVote);
                }
            }
            _dal.Repository<Vote>().Insert(vote);
            _dal.Repository<Post>().Update(post);
            _dal.Save();

            return true;
        }
        public List<Vote> GetVotes(int postId)
        {
            List<Vote> votes = new List<Vote>();
            votes = _dal.Repository<Vote>().Table.Where(v => v.PostId == postId).ToList();
            return votes;
        }
        public void IncludeUserForVotes(List<Vote> votes)
        {
            foreach (Vote vote in votes)
            {
                vote.User = _dal.Repository<User>().Table.FirstOrDefault(m => m.Id == vote.UserId);
            }
        }
        public void IncreaseViewQuestion(Question question)
        {
            question.View++;
            EditQuestion(question);
        }
        public bool Accept(int answerId)
        {
            Answer answer = _dal.Repository<Answer>().GetById(answerId);
            if (_dal.Repository<Answer>().Table.Count(m => m.QuestionId == answer.QuestionId && m.Accepted == true) > 0 && !_dal.Repository<Answer>().GetById(answerId).Accepted)
            {
                return false;
            }
            answer.Accepted = !answer.Accepted;
            _dal.Repository<Answer>().Update(answer);
            _dal.Save();
            _cService.PlusReputation(answerId, Constant.String.ReputationAcceptedAnswer);
            return true;
        }
    }
}
