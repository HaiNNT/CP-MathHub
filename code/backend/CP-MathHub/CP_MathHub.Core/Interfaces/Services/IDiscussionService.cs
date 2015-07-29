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
        /// Count discussion of number
        /// </summary>
        /// <param name="authorId"></param>
        /// <returns></returns>
        int CountUserDiscussion(int authorId);

        /// <summary>
        /// Get discusstionCategorys
        /// </summary>
        /// <param name="tagId"></param>
        /// <param name="skip"></param>
        /// <returns></returns>
        List<Discussion> GetDiscussionCategorys(int tagId, int skip);

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
        List<Discussion> SearchDiscussions(int skip, string searchString);

        /// <summary>
        /// Count search result
        /// </summary>
        /// <param name="searchString"></param>
        /// <returns></returns>
        int CountSearchResult(string searchString);

        /// <summary>
        /// Get Edited Log
        /// </summary>
        /// <param name="postId"></param>
        /// <returns></returns>
        List<EditedLog> GetEditedLog(int postId, int skip = 0);

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
        /// Get Detail Discussion
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Discussion GetDetailDiscussion(int id);

        /// <summary>
        /// Include replys for comments
        /// </summary>
        /// <param name="comments"></param>
        void IncludeReplyForComments(List<Comment> comments);

        /// <summary>
        /// <summary>
        /// Delete Discussion
        /// </summary>
        /// <param name="discussion"></param>
        void DeleteDiscussion(Discussion discussion);

        /// <summary>
        /// Update Discussion
        /// </summary>
        /// <param name="discussion"></param>
        void UpdateDiscussion(Discussion discussion);

        /// <summary>
        /// Increase View
        /// </summary>
        /// <param name="discussion"></param>
        void IncreaseViewDiscussion(Discussion discussion);
    }
}
