using CP_MathHub.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CP_MathHub.Core.Interfaces.Services
{
    public interface IDiscussionService
    {
        /// <summary>
        /// Get Default Questions
        /// </summary>
        /// <returns></returns>
        List<Discussion> GetDiscussions(string homeTab, int skip = 0);

        /// <summary>
        /// Get Discussions by Author
        /// </summary>
        /// <returns></returns>
        List<Discussion> GetDiscussions(int authorId, int skip = 0);

        /// <summary>
        /// Get lastest discussion
        /// </summary>
        /// <param name="skip"></param>
        /// <returns></returns>
        Discussion GetLastestDiscussion(int tagid);

        /// <summary>
        /// Get Discussions by Tag
        /// </summary>
        /// <returns></returns>
        List<Discussion> GetDiscussions(int skip, string tagName);

        /// <summary>
        /// Insert a Discussion
        /// </summary>
        /// <param name="question"></param>
        void InsertDiscussion(Discussion discusssion);

        /// <summary>
        /// Search Questions
        /// </summary>
        /// <param name="searchString"></param>
        /// <returns></returns>
        List<Discussion> SearchDiscussions(string searchString, int skip);

        /// <summary>
        /// Count search result
        /// </summary>
        /// <param name="searchString"></param>
        /// <returns></returns>
        int CountSearchResult(string searchString);

        /// <summary>
        /// Get Comments of Post
        /// </summary>
        /// <returns></returns>
        //List<Comment> GetComments(int postId);

        /// <summary>
        /// Edit Discussion
        /// </summary>
        /// <param name="discussion"></param>
        void EditDiscussion(Discussion discussion);

        /// <summary>
        /// Get Comments of Post
        /// </summary>
        /// <returns></returns>
        List<Comment> GetComments(int postId);

        /// <summary>
        /// Add author for comments
        /// </summary>
        /// <param name="comments"></param>
        void IncludeUserForComments(List<Comment> comments);

        /// <summary>
        /// Get A Discussion
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Discussion GetDiscussion(int id);

        /// <summary>
        /// <summary>
        /// Delete Discussion
        /// </summary>
        /// <param name="discussion"></param>
        void DeleteDiscussion(Discussion discussion);
    }
}
