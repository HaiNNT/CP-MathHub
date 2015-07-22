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
        List<Question> GetQuestions(string homeTab, int skip = 0);

        /// <summary>
        /// Get Questions by Author
        /// </summary>
        /// <returns></returns>
        List<Question> GetQuestions(int authorId, int skip = 0);

        /// <summary>
        /// Get answers of one user
        /// </summary>
        /// <param name="authorId"></param>
        /// <param name="skip"></param>
        /// <returns></returns>
        List<Answer> GetAnswers(int authorId, int skip = 0);

        /// <summary>
        /// Count question of user
        /// </summary>
        /// <param name="authorId"></param>
        /// <returns></returns>
        int CountUserQuestion(int authorId);

        /// <summary>
        /// Count answer of user
        /// </summary>
        /// <param name="authorId"></param>
        /// <returns></returns>
        int CountUserAnswer(int authorId);

        /// <summary>
        /// Get Questions by Tag
        /// </summary>
        /// <returns></returns>
        List<Question> GetQuestions(int skip, string tagName);

        /// <summary>
        /// Get a Question By Id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Question GetQuestion(int id);

        /// <summary>
        /// Insert a Question
        /// </summary>
        /// <param name="question"></param>
        /// <returns></returns>
        void InsertQuestion(Question question);

        /// Edit a Question
        /// </summary>
        /// <param name="question"></param>
        /// <returns></returns>
        void EditQuestion(Question question);

        /// <summary>
        /// Delete a Qusetion
        /// </summary>
        /// <param name="question"></param>
        void DeleteQuestion(Question question);

        /// <summary>
        /// Search Questions
        /// </summary>
        /// <param name="searchString"></param>
        /// <returns></returns>
        List<Question> SearchQuestion(string searchString, int skip);

        /// <summary>
        /// Count search result
        /// </summary>
        /// <param name="searchString"></param>
        /// <returns></returns>
        int CountSearchResult(string searchString);

        /// <summary>
        /// Get Answers of Quuestion
        /// </summary>
        /// <returns></returns>
        List<Answer> GetAnswers(int questionId, AnswerEnum type = 0);

        /// <summary>
        /// Get Comments of Post
        /// </summary>
        /// <returns></returns>
        List<Comment> GetComments(int postId);

        /// <summary>
        /// Add comment for answers
        /// </summary>
        /// <param name="answers"></param>
        void IncludeCommentForAnswers(List<Answer> answers);

        /// <summary>
        /// Add author for comments
        /// </summary>
        /// <param name="comments"></param>
        void IncludeUserForComments(List<Comment> comments);

        /// <summary>
        /// Create answer for a question
        /// </summary>
        /// <param name="answe"></param>
        void AnswerQuestion(Answer answer);

        /// <summary>
        /// Edit an answer
        /// </summary>
        /// <param name="answer"></param>
        Answer EditAnswer(Answer answer, int userId, bool hasPermission);

        /// <summary>
        /// Vote for an answer or a question
        /// </summary>
        /// <param name="vote"></param>
        bool Vote(Vote vote);

        /// <summary>
        /// Get votes for a post
        /// </summary>
        /// <param name="postId"></param>
        /// <returns></returns>
        List<Vote> GetVotes(int postId);

        /// <summary>
        /// Include user for vote
        /// </summary>
        /// <param name="votes"></param>
        void IncludeUserForVotes(List<Vote> votes);

        /// <summary>
        /// Increase view for a question
        /// </summary>
        /// <param name="questionId"></param>
        void IncreaseViewQuestion(Question question);

        /// <summary>
        /// Accept/Unaccept an answer
        /// </summary>
        /// <param name="answerId"></param>
        /// <returns></returns>
        bool Accept(int answerId);
    }
}
