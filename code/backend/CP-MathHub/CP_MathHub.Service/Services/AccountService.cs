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
        public User GetUser(string username, string include = "")
        {
            return dal.Repository<User>().Include(include).Table.FirstOrDefault(m => m.UserName == username);
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
            User user = GetUser(userId);
            user.CreatedDate = DateTime.Now;
            user.Reputation = 0;
            user.Status = UserStatusEnum.Active;
            dal.Repository<User>().Update(user);
            dal.Save();
        }
        public void CreatePrivacy(int userId)
        {
            PrivacySetting privacy = new PrivacySetting();
            privacy.User = GetUser(userId);
            privacy.Notification = 0;
            privacy.ReceiveEmail = true;
            privacy.SeenBlog = SeenBlogEnum.Everyone;
            privacy.SendRequest = FriendRequestEnum.Everyone;
            dal.Repository<PrivacySetting>().Insert(privacy);
            dal.Save();
        }
        public void CreateAvatar(int userId)
        {
            Image avatar = new Image();
            avatar.User = GetUser(userId);
            avatar.Url = "~/Content/img/user.jpg";
            avatar.Caption = "";
            dal.Repository<Image>().Insert(avatar);
            dal.Save();
        }
        public void CreateActivity(int userId, string ip = "")
        {
            Activity activity = new Activity();
            activity.LastLogin = DateTime.Now;
            activity.LastSeenFriendRequest = DateTime.Now;
            activity.LastSeenInvitation = DateTime.Now;
            activity.LastSeenSubcription = DateTime.Now;
            activity.LastSeenNotification = DateTime.Now;
            activity.LastIp = ip;
            activity.User = GetUser(userId);
            dal.Repository<Activity>().Insert(activity);
            dal.Save();
        }
        public int CountFriend(int userId)
        {
            int result = dal.Repository<UserFriendship>().Table
                .Count(u => (u.UserId == userId || u.TargetUserId == userId) && u.Status == RelationshipEnum.Friend);
            return result;
        }
        public int CountFriendRequest(int userId)
        {
            int result = dal.Repository<UserFriendship>().Table
                .Count(u => (u.TargetUserId == userId) && u.Status == RelationshipEnum.Requesting);
            return result;
        }
        public int CountFollower(int userId)
        {
            int result = dal.Repository<User>().Table
                .Count(u => u.Followees.Where(t => t.Id == userId).Count() > 0);
            return result;
        }

        public int CountFollowee(int userId)
        {
            int result = dal.Repository<User>().Table
                .Count(u => u.Followers.Where(t => t.Id == userId).Count() > 0);
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
                (u => (u.TargetUserId == userId) && (u.UserId == targetUserId))).FirstOrDefault();
            friendship.Status = RelationshipEnum.Friend;
            dal.Repository<UserFriendship>().Update(friendship);
            dal.Save();
        }

        public void CreateConversation(int userId, int targetUserId)
        {
            Attendance att1 = new Attendance();
            att1.UserId = targetUserId;
            att1.JoinedDate = DateTime.Now;
            att1.SeenDate = DateTime.Now;
            Attendance att2 = new Attendance();
            att2.UserId = userId;
            att2.JoinedDate = DateTime.Now;
            att2.SeenDate = DateTime.Now;
            Conversation con = new Conversation();
            con.Attendances.Add(att1);
            con.Attendances.Add(att2);
            con.Name = "";
            con.CreatedDate = DateTime.Now;
            dal.Repository<Conversation>().Insert(con);
            dal.Save();
        }
        public void CancelFriend(int userId, int targetUserId)
        {
            UserFriendship friendship = new UserFriendship();
            friendship = dal.Repository<UserFriendship>().Table.Where(
                (u => (u.TargetUserId == targetUserId || u.TargetUserId == userId) && (u.UserId == targetUserId || u.UserId == userId) && (u.Status == RelationshipEnum.Requesting || u.Status == RelationshipEnum.Friend))).FirstOrDefault();
            dal.Repository<UserFriendship>().Delete(friendship);
            dal.Save();
        }
        public void FollowUser(int followeeId, int followerId)
        {
            User followee = dal.Repository<User>().GetById(followeeId);
            User follower = dal.Repository<User>().GetById(followerId);
            followee.Followers.Add(follower);
            dal.Repository<User>().Update(followee);
            dal.Save();
        }
        public void UnFollowUser(int followeeId, int followerId)
        {
            User followee = dal.Repository<User>().GetById(followeeId);
            User follower = dal.Repository<User>().GetById(followerId);
            followee.Followers.Remove(follower);
            dal.Repository<User>().Update(followee);
            dal.Save();
        }
        public List<User> GetMutualFriends(int userId, int friendId, int skip = 0, int take = 0)
        {
            List<User> mutualfriends = new List<User>();
            List<User> friends = new List<User>();
            List<User> userfriends = new List<User>();
            List<UserFriendship> friendship1 = dal.Repository<UserFriendship>().Get(
                            (u => (u.UserId == userId || u.TargetUserId == userId) && u.Status == RelationshipEnum.Friend)
                            , (u => u.OrderByDescending(m => m.LastChangeStatus))
                            , "User.ActiveRelationships,User.PassiveRelationship,TargetUser.ActiveRelationships,TargetUser.PassiveRelationship"
                            , skip
                            , take).ToList();
            foreach (UserFriendship friendShip1 in friendship1)
            {
                if (friendShip1.TargetUserId == userId)
                {
                    friends.Add(friendShip1.User);
                }
                else
                {
                    friends.Add(friendShip1.TargetUser);
                }
            }
            List<UserFriendship> friendship2 = dal.Repository<UserFriendship>().Get(
                            (u => (u.UserId == friendId || u.TargetUserId == friendId) && u.Status == RelationshipEnum.Friend)
                            , (u => u.OrderByDescending(m => m.LastChangeStatus))
                            , "User.ActiveRelationships,User.PassiveRelationship,TargetUser.ActiveRelationships,TargetUser.PassiveRelationship"
                            , skip
                            , take).ToList();
            foreach (UserFriendship friendShip2 in friendship2)
            {
                if (friendShip2.TargetUserId == friendId)
                {
                    userfriends.Add(friendShip2.User);
                }
                else
                {
                    userfriends.Add(friendShip2.TargetUser);
                }
            }
            mutualfriends = friends.Intersect(userfriends).ToList();
            return mutualfriends;
        }
        public int CountMutualFriend(int userId, int friendId, int skip = 0, int take = 0)
        {
            int result = 0;
            List<User> mutualfriends = new List<User>();
            List<User> friends = new List<User>();
            List<User> userfriends = new List<User>();
            List<UserFriendship> friendship1 = dal.Repository<UserFriendship>().Get(
                            (u => (u.UserId == userId || u.TargetUserId == userId) && u.Status == RelationshipEnum.Friend)
                            , (u => u.OrderByDescending(m => m.LastChangeStatus))
                            , "User.ActiveRelationships,User.PassiveRelationship,TargetUser.ActiveRelationships,TargetUser.PassiveRelationship"
                            , skip
                            , take).ToList();
            foreach (UserFriendship friendShip1 in friendship1)
            {
                if (friendShip1.TargetUserId == userId)
                {
                    friends.Add(friendShip1.User);
                }
                else
                {
                    friends.Add(friendShip1.TargetUser);
                }
            }
            List<UserFriendship> friendship2 = dal.Repository<UserFriendship>().Get(
                            (u => (u.UserId == friendId || u.TargetUserId == friendId) && u.Status == RelationshipEnum.Friend)
                            , (u => u.OrderByDescending(m => m.LastChangeStatus))
                            , "User.ActiveRelationships,User.PassiveRelationship,TargetUser.ActiveRelationships,TargetUser.PassiveRelationship"
                            , skip
                            , take).ToList();
            foreach (UserFriendship friendShip2 in friendship2)
            {
                if (friendShip2.TargetUserId == friendId)
                {
                    userfriends.Add(friendShip2.User);
                }
                else
                {
                    userfriends.Add(friendShip2.TargetUser);
                }
            }
            mutualfriends = friends.Intersect(userfriends).ToList();
            result = mutualfriends.Count;
            return result;
        }
        public List<User> GetFriends(int userId, string tab = Constant.Account.String.AllFriendTab, int skip = 0, int take = 0)
        {
            List<User> friends = new List<User>();
            switch (tab)
            {
                case Constant.Account.String.AllFriendTab:
                    List<UserFriendship> friendShips = dal.Repository<UserFriendship>().Get(
                            (u => (u.UserId == userId || u.TargetUserId == userId) && u.Status == RelationshipEnum.Friend)
                            , (u => u.OrderByDescending(m => m.LastChangeStatus))
                            , "User.ActiveRelationships,User.PassiveRelationship,TargetUser.ActiveRelationships,TargetUser.PassiveRelationship"
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
                case Constant.Account.String.RequestTab:
                    List<UserFriendship> friendrequests = dal.Repository<UserFriendship>().Get(
                            (u => (u.TargetUserId == userId) && u.Status == RelationshipEnum.Requesting)
                            , (u => u.OrderByDescending(m => m.LastChangeStatus))
                            , "User,TargetUser"
                            , skip
                            , take).ToList();
                    foreach (UserFriendship friendShip in friendrequests)
                    {
                        if (friendShip.TargetUserId == userId)
                        {
                            friends.Add(friendShip.User);
                        }
                    }
                    break;
            }
            return friends;
        }
        public List<Tag> GetFavoriteTags(int userId, int take = 0)
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
            if(take == 0)
            {
                return tags;
            }
            else
            {
                return tags.Skip(0).Take(take).ToList();
            }           
        }
        public List<User> SearchFriend(string name, int userId, int skip = 0, int take = 0)
        {
            List<User> users = new List<User>();
            users = GetFriends(userId).Where(ExpressionHelper.UserHelper.ContainNameFunc(name)).ToList();
            if (take != 0)
                users = users.Skip(skip).Take(take).ToList();
            return users;
        }
        public void LogLastLogin(string username)
        {
            User user = GetUser(username, "Activity");
            user.Activity.LastLogin = DateTime.Now;
            dal.Repository<User>().Update(user);
            dal.Save();
        }
    }
}
