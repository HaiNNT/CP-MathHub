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
        public int CountFollower(int userId)
        {
            int result = dal.Repository<User>().Table
                .Count(u => u.Followers.Where(t => t.Id == userId).Count() > 0);
            return result;
        }

        public int CountFollowee(int userId)
        {
            int result = dal.Repository<User>().Table
                .Count(u => u.Followees.Where(t => t.Id == userId).Count() > 0);
            return result;
        }
        public int CountFollowee(User user)
        {
            int result = dal.Repository<User>().Table
                .Count(u => u.Followers.Contains(user));
            return result;
        }

        public void SendFriendRequest(int userId, int targetUserId)
        {
            UserFriendship friendship = new UserFriendship();
            friendship.CreatedDate = DateTime.Now;
            friendship.LastChangeStatus = DateTime.Now;
            friendship.Status = RelationshipEnum.Requesting;
            friendship.TargetUserId = targetUserId;
            friendship.UserId = userId;
            dal.Repository<UserFriendship>().Insert(friendship);
            dal.Save();
        }

        public void AcceptFriendRequest(int userId, int targetUserId)
        {
            UserFriendship friendship = new UserFriendship();
            friendship = dal.Repository<UserFriendship>().Table.Where(
                (u => (u.TargetUserId == targetUserId || u.TargetUserId == userId) && (u.UserId == targetUserId || u.UserId == userId))).FirstOrDefault();
            friendship.Status = RelationshipEnum.Friend;
            dal.Repository<UserFriendship>().Update(friendship);
            dal.Save();
        }
        public List<User> GetFriends(int userId, string tab, int skip = 0, int take = Constant.Integer.DefaultTake)
        {
            List<User> friends = new List<User>();
            switch (tab)
            {
                case Constant.Account.String.AllFriendTab:
                    List<UserFriendship> friendShips = dal.Repository<UserFriendship>().Get(
                            (u => (u.UserId == userId || u.TargetUserId == userId) && u.Status == RelationshipEnum.Friend)
                            , (u => u.OrderByDescending(m => m.LastChangeStatus))
                            , "User,TargetUser"
                            , skip
                            , take).ToList();
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
                    break;
                case Constant.Account.String.FollowerTab:
                    friends = dal.Repository<User>().Get(
                            ( u => u.Followees.Where(t => t.Id == userId).Count() >0)
                            , (u => u.OrderByDescending(m => m.UserName))
                            , ""
                            , skip
                            , take).ToList();
                    break;
                case Constant.Account.String.FolloweeTab:
                    friends = dal.Repository<User>().Get(
                            ( u => u.Followers.Where(t => t.Id == userId).Count() >0)
                            , (u => u.OrderByDescending(m => m.UserName))
                            , ""
                            , skip
                            , take).ToList();
                    break;
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
            foreach (MainPost post in posts)
            {
                foreach (Tag tag in post.Tags)
                {
                    if (tags.Where(t => t.Id == tag.Id).Count() == 0)
                        tags.Add(tag);
                }
            }
            return tags.Skip(0).Take(5).ToList();
        }

    }
}
