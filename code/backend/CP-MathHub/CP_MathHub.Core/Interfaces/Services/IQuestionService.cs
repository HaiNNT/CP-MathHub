﻿using System;
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

    }
}
