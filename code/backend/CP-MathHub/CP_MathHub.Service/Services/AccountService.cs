using CP_MathHub.Core.Configuration;
using CP_MathHub.Core.Interfaces.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Core.Interfaces.DAL;
using CP_MathHub.DAL;
using CP_MathHub.Service.Helpers;
using CP_MathHub.Entity;

namespace CP_MathHub.Service.Services
{
    public class AccountService : IAccountService, IDisposable
    {
        private IUnitOfWork dal;
        public AccountService(CPMathHubModelContainer context)
        {
            dal = new MathHubUoW(context);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                dal.Dispose();
            }

        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        public User GetLoginUser()
        {
            User user = new User();
            user.UserName = "Văn Tâm";
            user.Reputation = 23142;
            //return user;
            //return dal.Repository<User>().GetById(55);
            return dal.Repository<User>().Table.FirstOrDefault(m => m.Id == 56);

        }

        public User GetUser(int userId, string include = "")
        {
            return dal.Repository<User>().Include(include).Table.FirstOrDefault(m => m.Id == userId);
        }

        public void UpdateUser(User user)
        {
            dal.Repository<User>().Update(user);
            dal.Save();
        }

        public void CreateProfile(int userId)
        {
            Profile profile = new Profile();
            profile.User = GetUser(userId);
            dal.Repository<Profile>().Insert(profile);
            dal.Save();
        }

        public int CountFriend(int userId)
        {
            int result = dal.Repository<UserFriendship>().Table
                .Count(u => (u.UserId == userId || u.TargetUserId == userId) && u.Status == RelationshipEnum.Friend);
            return result;
        }

        public int CountFollower(User user)
        {
            int result = dal.Repository<User>().Table
                .Count(u => u.Followees.Contains(user));
            return result;
        }

        public int CountFollowee(User user)
        {
            int result = dal.Repository<User>().Table
                .Count(u => u.Followers.Contains(user));
            return result;
        }

        public List<User> GetFriends(int userId, int skip = 0, int take = Constant.Integer.DefaultTake)
        {
            List<UserFriendship> friendShips = dal.Repository<UserFriendship>().Get(
                    (u => (u.UserId == userId || u.TargetUserId == userId) && u.Status == RelationshipEnum.Friend)
                    , (u => u.OrderByDescending(m => m.LastChangeStatus))
                    , "User,TargetUser"
                    , skip
                    , take).ToList();
            List<User> friends = new List<User>();
            foreach (UserFriendship friendShip in friendShips)
            {
                if (friendShip.TargetUserId == userId)
                {
                    friends.Add(friendShip.User);
                }
                else
                {
                    friends.Add(friendShip.TargetUser);
                }
            }
            return friends;
        }

        public List<Tag> GetFavoriteTags(int userId)
        {
            List<Tag> tags = new List<Tag>();
            List<MainPost> posts = dal.Repository<MainPost>().Get(
                    (m => m.UserId == userId),
                    null,
                    "Tags",
                    0,
                    0
                ).ToList();
            foreach(MainPost post in posts){
                foreach(Tag tag in post.Tags){
                    if (tags.Where(t => t.Id == tag.Id).Count() == 0)
                        tags.Add(tag);
                }
            }
            return tags.Skip(0).Take(5).ToList();
        }

    }
}
