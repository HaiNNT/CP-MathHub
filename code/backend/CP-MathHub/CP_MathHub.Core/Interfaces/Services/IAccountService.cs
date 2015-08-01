using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Entity;
using CP_MathHub.Core.Configuration;

namespace CP_MathHub.Core.Interfaces.Services
{
    public interface IAccountService
    {
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
        /// Get an entity User by name
        /// </summary>
        /// <returns></returns>
        User GetUser(string username, string include = "");

        /// <summary>
        /// Update User
        /// </summary>
        /// <param name="user"></param>
        void UpdateUser(User user);

        /// <summary>
        /// Create Profile
        /// </summary>
        /// <param name="userId"></param>
        void CreateProfile(int userId);

        /// <summary>
        /// Create Privacy
        /// </summary>
        /// <param name="userId"></param>
        void CreatePrivacy(int userId);

        /// <summary>
        /// Create Avatar
        /// </summary>
        /// <param name="userId"></param>
        void CreateAvatar(int userId);

        /// <summary>
        /// Create Activity
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="ip"></param>
        void CreateActivity(int userId, string ip = "");

        /// <summary>
        /// Count number of friends of User
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        int CountFriend(int userId);

        /// <summary>
        /// Count friend request number
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        int CountFriendRequest(int userId);

        /// <summary>
        /// Count number of followers of User
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        int CountFollower(int userId);

        /// <summary>
        /// Count number of followees of User
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        int CountFollowee(int userId);

        /// <summary>
        /// Get all friends of User
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        List<User> GetFriends(int userId, string tab, int skip = 0, int take = 0);

        /// <summary>
        /// Follow a user
        /// </summary>
        /// <param name="followeeId"></param>
        /// <param name="followerId"></param>
        void FollowUser(int followeeId, int followerId);

        /// <summary>
        /// Get mutual friend of 2 user
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="friendId"></param>
        /// <param name="skip"></param>
        /// <param name="take"></param>
        /// <returns></returns>
        List<User> GetMutualFriends(int userId, int friendId, int skip = 0, int take = 0);

        /// <summary>
        /// Count mutual friend of 2 user
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="friendId"></param>
        /// <param name="skip"></param>
        /// <param name="take"></param>
        /// <returns></returns>
        int CountMutualFriend(int userId, int friendId, int skip = 0, int take = 0);

        /// <summary>
        /// Unfollow a user
        /// </summary>
        /// <param name="followeeId"></param>
        /// <param name="followerId"></param>
        void UnFollowUser(int followeeId, int followerId);

        /// <summary>
        /// Send friend request
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="targetUserId"></param>
        void SendFriendRequest(int userId, int targetUserId);

        /// <summary>
        /// Accept friend request
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="targetUserId"></param>
        void AcceptFriendRequest(int userId, int targetUserId);

        /// <summary>
        /// Create first conversation
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="targetUserId"></param>
        void CreateConversation(int userId, int targetUserId);

        /// <summary>
        /// Get all tags that user participate in
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        List<Tag> GetFavoriteTags(int userId, int take = 0);

        /// <summary>
        /// Cancel friend request or cancel friend
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="targetUserId"></param>
        void CancelFriend(int userId, int targetUserId);

        /// <summary>
        /// Search friend of an user by friend name
        /// </summary>
        /// <param name="name"></param>
        /// <param name="userId"></param>
        /// <returns></returns>
        List<User> SearchFriend(string name, int userId, int skip = 0, int take = 0);

        /// <summary>
        /// Log last login time of user
        /// </summary>
        /// <param name="userId"></param>
        void LogLastLogin(string username);
    }
}
