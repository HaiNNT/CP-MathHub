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
        /// Get Questions by Author
        /// </summary>
        /// <returns></returns>
        List<Discussion> GetDiscussions(int authorId);

        /// <summary>
        /// Insert a Discussion
        /// </summary>
        /// <param name="question"></param>
        void InsertDiscussion(Discussion discusssion);

        /// <summary>
        /// Search Discussions
        /// </summary>
        /// <param name="searchString"></param>
        /// <returns></returns>
        List<Discussion> SearchDiscussions(string searchString);

        /// <summary>
        /// Edit Discussion
        /// </summary>
        /// <param name="discussion"></param>
        void EditDiscussion(Discussion discussion);

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
