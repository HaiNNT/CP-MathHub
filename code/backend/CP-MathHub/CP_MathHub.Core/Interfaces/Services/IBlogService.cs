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
        List<Article> GetArticles(string tab, int skip = 0, int userId = 0);

        /// <summary>
        /// Get Articles by tab and userId
        /// </summary>
        /// <param name="tab"></param>
        /// <param name="skip"></param>
        /// <returns></returns>
        List<Article> GetArticles(int userId, string tab, int skip);

        /// <summary>
        /// Get articles of user
        /// </summary>
        /// <param name="authorId"></param>
        /// <param name="skip"></param>
        /// <returns></returns>
        List<Article> GetArticles(int authorId, int skip = 0);

        /// <summary>
        /// Count article of user
        /// </summary>
        /// <param name="authorId"></param>
        /// <returns></returns>
        int CountUserArticle(int authorId);

        /// <summary>
        /// Get an Article by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Article GetArticle(int id, int userId = 0);

        /// <summary>
        /// Get Detail Article by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Article GetDetailArticle(int id);

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
        /// Get Related Article
        /// </summary>
        /// <param name="article"></param>
        /// <param name="skip"></param>
        /// <returns></returns>
        List<Article> GetRelatedArticles(MainPost mainPost, int skip = 0);
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

        /// <summary>
        /// Update an Article
        /// </summary>
        /// <param name="article"></param>
        void UpdateArticle(Article article);

        /// <summary>
        /// Increase view num
        /// </summary>
        /// <param name="article"></param>
        void IncreaseViewArticle(Article article);

        /// <summary>
        /// Count bookmark article
        /// </summary>
        /// <returns></returns>
        int CountBookmarkArticle();
    }
}
