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
        /// Get all tag 
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        List<Tag> GetTags(int skip);

        /// <summary>
        /// Get tag by Id
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        Tag GetTag(int id);

        /// <summary>
        /// Search Tags
        /// </summary>
        /// <param name="searchString"></param>
        /// <param name="skip"></param>
        /// <returns></returns>
        List<Tag> SearchTags(string searchString, int skip);

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
        /// Get a part of list tag by tab filter
        /// </summary>
        /// <returns></returns>
        List<Tag> GetTags(int skip, string tab);

        /// <summary>
        /// Get a part of list tag by list tag name
        /// </summary>
        /// <param name="listTagId"></param>
        /// <returns></returns>
        List<Tag> GetTags(string name, int skip);

        /// <summary>
        /// Get a part of list tag by list tag name with tab filter
        /// </summary>
        /// <param name="listTagId"></param>
        /// <returns></returns>
        List<Tag> GetTags(string tab, string name, int skip);

        /// <summary>
        /// Insert a new tag
        /// </summary>
        /// <returns></returns>
        bool InsertTag(Tag tag);

        /// <summary>
        /// Bookmark/UnBookmark a MainPost
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        bool Bookmark(int id, User user);

        /// <summary>
        /// Like/Unlike a MainPost
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        bool Like(int id, int userId);

        /// <summary>
        /// Get an entity User that logging in with current session
        /// </summary>
        /// <returns></returns>
        User GetLoginUser();

        /// <summary>
        /// Get an entity User by id
        /// </summary>
        /// <returns></returns>
        User GetUser(int userId);

        /// <summary>
        /// Get list user by Name with tab filter
        /// </summary>
        /// <returns></returns>
        List<User> GetUsers(string name, int skip, string tab);

        /// <summary>
        /// Get list user by tab filter
        /// </summary>
        /// <returns></returns>
        List<User> GetUsers(int skip, string tab);

        /// <summary>
        /// Comment for a post
        /// </summary>
        /// <param name="comment"></param>
        void CommentPost(Comment comment);

        /// <summary>
        /// Get comments of a post
        /// </summary>
        /// <param name="postId"></param>
        /// <returns></returns>
        List<Comment> GetComments(int postId);

        /// <summary>
        /// Get Vote by post and user
        /// </summary>
        /// <param name="postId"></param>
        /// <param name="userId"></param>
        /// <returns></returns>
        Vote GetVote(int postId, int userId);

    }
}
