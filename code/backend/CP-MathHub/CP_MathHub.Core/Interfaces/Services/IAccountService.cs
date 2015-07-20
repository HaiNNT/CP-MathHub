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
        /// Count number of friends of User
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        int CountFriend(int userId);

        /// <summary>
        /// Count number of followers of User
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        int CountFollower(User user);

        /// <summary>
        /// Count number of followees of User
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        int CountFollowee(User user);

        /// <summary>
        /// Get all friends of User
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        List<User> GetFriends(int userId, string tab, int skip = 0, int take = Constant.Integer.DefaultTake);

        /// <summary>
        /// Get all tags that user participate in
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        List<Tag> GetFavoriteTags(int userId);
    }
}
