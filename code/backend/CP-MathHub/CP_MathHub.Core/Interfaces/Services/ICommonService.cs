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
        List<Tag> GetCategorys();

        /// <summary>
        /// Get category
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
        bool InsertTag(Tag tag, int userId);

        /// <summary>
        /// Bookmark/UnBookmark a MainPost
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        bool Bookmark(int id, User user);

        /// <summary>
        /// Like/Unlike a Post
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
        User GetUser(int userId, string include = "");

        /// <summary>
        /// Get list user by Name with tab filter
        /// </summary>
        /// <returns></returns>
        List<User> GetUsers(string name, int skip, string tab = "");

        /// <summary>
        /// Get list user by tab filter
        /// </summary>
        /// <returns></returns>
        List<User> GetUsers(int skip, string tab);

        /// <summary>
        /// Get all users
        /// </summary>
        /// <returns></returns>
        List<User> GetUsers(string include = "");

        /// <summary>
        /// Get list user by list id
        /// </summary>
        /// <returns></returns>
        List<Invitation> GetInvitations(List<int> userIds, int userId);

        /// <summary>
        /// Comment for a post
        /// </summary>
        /// <param name="comment"></param>
        void CommentPost(Comment comment);

        /// <summary>
        /// Update a comment
        /// </summary>
        /// <param name="comment"></param>
        Comment UpdateComment(Comment comment, int userId);

        /// <summary>
        /// Disable comments
        /// </summary>
        /// <param name="postId"></param>
        void DisableComment(int postId);

        /// <summary>
        /// Enable comments
        /// </summary>
        /// <param name="postId"></param>
        void EnableComment(int postId);

        /// <summary>
        /// Get comments of a post
        /// </summary>
        /// <param name="postId"></param>
        /// <returns></returns>
        List<Comment> GetComments(int postId);

        /// <summary>
        /// Get comment by Id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Comment GetComment(int id, string include = "");

        /// <summary>
        /// Get Vote by post and user
        /// </summary>
        /// <param name="postId"></param>
        /// <param name="userId"></param>
        /// <returns></returns>
        Vote GetVote(int postId, int userId);

        /// <summary>
        /// Create a report
        /// </summary>
        /// <param name="report"></param>
        bool CreateReport(Report report);

        /// <summary>
        /// Get all tag
        /// </summary>
        /// <returns></returns>
        List<Tag> GetAllTags();

        /// <summary>
        /// Get all tag order by name
        /// </summary>
        /// <returns></returns>
        List<Tag> GetAllTagsOrderByName();

        /// <summary>
        /// Get edited logs
        /// </summary>
        /// <param name="postId"></param>
        /// <returns></returns>
        List<EditedLog> GetEditedLog(int postId);

        /// <summary>
        /// Get a main post by id
        /// </summary>
        /// <param name="mainPostId"></param>
        /// <returns></returns>
        MainPost GetMainPost(int mainPostId, string include = "");

        /// <summary>
        /// Get list main posts
        /// </summary>
        /// <param name="mainPostId"></param>
        /// <returns></returns>
        List<MainPost> GetMainPosts(string type, int skip = 0, int take = 0);

        /// <summary>
        /// Get a post by id
        /// </summary>
        /// <param name="mainPostId"></param>
        /// <returns></returns>
        Post GetPost(int postId, string include = "");

        /// <summary>
        /// Search friend of an user by friend name
        /// </summary>
        /// <param name="name"></param>
        /// <param name="userId"></param>
        /// <returns></returns>
        List<User> SearchFriend(string name, int userId, int skip = 0, int take = 0);

        /// <summary>
        /// Plus reputation
        /// </summary>
        /// <param name="type"></param>
        void PlusReputation(int postId, string type);
    }
}
