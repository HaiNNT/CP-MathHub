using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Entity;
using CP_MathHub.Core.Configuration;

namespace CP_MathHub.Core.Interfaces.Services
{
    public interface IBlogService
    {
        /// <summary>
        /// Get Articles by tab
        /// </summary>
        /// <param name="tab"></param>
        /// <param name="skip"></param>
        /// <returns></returns>
        List<Article> GetArticles(string tab, int skip);

        /// <summary>
        /// Get an Article by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Article GetArticle(int id);

        /// <summary>
        /// Insert Article
        /// </summary>
        /// <param name="article"></param>
        void InsertArticle(Article article);

        /// <summary>
        /// Search article by name
        /// </summary>
        /// <param name="skip"></param>
        /// <param name="searchString"></param>
        /// <returns></returns>
        List<Article> SearchArticle(int skip, string searchString);

        /// <summary>
        /// Count search result
        /// </summary>
        /// <param name="searchString"></param>
        /// <returns></returns>
        int CountSearchResult(string searchString);

        /// <summary>
        /// Include replys for comments
        /// </summary>
        /// <param name="comments"></param>
        void IncludeReplyForComments(List<Comment> comments);

        /// <summary>
        /// Include users for comments
        /// </summary>
        /// <param name="comments"></param>
        void IncludeUserForComments(List<Comment> comments);

    }
}
