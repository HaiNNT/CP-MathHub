using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Entity;
using CP_MathHub.Core.Configuration;

namespace CP_MathHub.Core.Interfaces.Services
{
    public interface ICommonService
    {
        /// <summary>
        /// Get tag by Name
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        Tag GetTag(string name);

        /// <summary>
        /// Get tag by Id
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        Tag GetTag(int id);

        /// <summary>
        /// Get list of tag by list tag id
        /// </summary>
        /// <param name="listTagId"></param>
        /// <returns></returns>
        List<Tag> GetTags(List<int> tagIds);

        /// <summary>
        /// Get list of tag by list tag name
        /// </summary>
        /// <param name="listTagId"></param>
        /// <returns></returns>
        List<Tag> GetTags(string name);

        /// <summary>
        /// Bookmark/UnBookmark a MainPost
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        bool Bookmark(int id, User user);

        /// <summary>
        /// Get an entity User that logging in with current session
        /// </summary>
        /// <returns></returns>
        User GetLoginUser();

        /// <summary>
        /// Insert a new tag
        /// </summary>
        /// <returns></returns>
        bool InsertTag(Tag tag);
    }
}
