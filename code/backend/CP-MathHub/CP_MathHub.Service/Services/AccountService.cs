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
        private int _loginUserId;
        private IUnitOfWork _dal;
        public AccountService(CPMathHubModelContainer context, int userId = 0)
        {
            _loginUserId = userId;
            _dal = new MathHubUoW(context);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                _dal.Dispose();
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
            return _dal.Repository<User>().Table.FirstOrDefault(m => m.Id == 56);

        }

        public User GetUser(int userId, string include = "")
        {
            return _dal.Repository<User>().Include(include).Table.FirstOrDefault(m => m.Id == userId);
        }
        public User GetUser(string username, string include = "")
        {
            return _dal.Repository<User>().Include(include).Table.FirstOrDefault(m => m.UserName == username);
        }

        public void UpdateUser(User user)
        {
            _dal.Repository<User>().Update(user);
            _dal.Save();
        }

        public void CreateProfile(int userId)
        {
            Profile profile = new Profile();
            profile.User = GetUser(userId);
            _dal.Repository<Profile>().Insert(profile);
            User user = GetUser(userId);
            user.CreatedDate = DateTime.Now;
            user.Reputation = 0;
            user.Status = UserStatusEnum.Active;
            _dal.Repository<User>().Update(user);
            _dal.Save();
        }
        public void CreatePrivacy(int userId)
        {
            PrivacySetting privacy = new PrivacySetting();
            privacy.User = GetUser(userId);
            privacy.Notification = 0;
            privacy.ReceiveEmail = true;
            privacy.SeenBlog = SeenBlogEnum.Everyone;
            privacy.SendRequest = FriendRequestEnum.Everyone;
            _dal.Repository<PrivacySetting>().Insert(privacy);
            _dal.Save();
        }
        public void CreateAvatar(int userId)
        {
            Image avatar = new Image();
            avatar.User = GetUser(userId);
            avatar.Url = "~/Content/img/user.jpg";
            avatar.Caption = "";
            _dal.Repository<Image>().Insert(avatar);
            _dal.Save();
        }
        public void CreateActivity(int userId, string ip = "")
        {
            Activity activity = new Activity();
            activity.LastLogin = DateTime.Now;
            activity.LastSeenFriendRequest = DateTime.Now;
            activity.LastSeenInvitation = DateTime.Now;
            activity.LastSeenSubcription = DateTime.Now;
            activity.LastSeenNotification = DateTime.Now;
            activity.LastSeenMessage = DateTime.Now;
            activity.LastIp = ip;
            activity.User = GetUser(userId);
            _dal.Repository<Activity>().Insert(activity);
            _dal.Save();
        }
        public int CountFriend(int userId)
        {
            int result = _dal.Repository<UserFriendship>().Table
                .Count(u => (u.UserId == userId || u.TargetUserId == userId) && u.Status == RelationshipEnum.Friend);
            return result;
        }
        public int CountFriendRequest(int userId)
        {
            int result = _dal.Repository<UserFriendship>().Table
                .Count(u => (u.TargetUserId == userId) && u.Status == RelationshipEnum.Requesting);
            return result;
        }
        public int CountFollower(int userId)
        {
            int result = _dal.Repository<User>().Table
                .Count(u => u.Followees.Where(t => t.Id == userId).Count() > 0);
            return result;
        }

        public int CountFollowee(int userId)
        {
            int result = _dal.Repository<User>().Table
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
            _dal.Repository<UserFriendship>().Insert(friendship);
            _dal.Save();
        }
        public void AcceptFriendRequest(int userId, int targetUserId)
        {
            UserFriendship friendship = new UserFriendship();
            friendship = _dal.Repository<UserFriendship>().Table.Where(
                (u => (u.TargetUserId == userId) && (u.UserId == targetUserId))).FirstOrDefault();
            friendship.Status = RelationshipEnum.Friend;
            _dal.Repository<UserFriendship>().Update(friendship);
            _dal.Save();
        }
        public bool CheckExistConversation(int userId, int tagUserId)
        {
            Conversation con = _dal.Repository<Conversation>().Table.FirstOrDefault(t => t.Attendances.Count == 2 && t.Attendances.Count(a => a.UserId == userId || a.UserId == tagUserId) == 2);
            return con != default(Conversation);
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
            con.Avatar = "";
            con.CreatedDate = DateTime.Now;
            _dal.Repository<Conversation>().Insert(con);
            _dal.Save();
        }
        public void CancelFriend(int userId, int targetUserId)
        {
            UserFriendship friendship = new UserFriendship();
            friendship = _dal.Repository<UserFriendship>().Table.Where(
                (u => (u.TargetUserId == targetUserId || u.TargetUserId == userId) && (u.UserId == targetUserId || u.UserId == userId) && (u.Status == RelationshipEnum.Requesting || u.Status == RelationshipEnum.Friend))).FirstOrDefault();
            _dal.Repository<UserFriendship>().Delete(friendship);
            _dal.Save();
        }
        public void FollowUser(int followeeId, int followerId)
        {
            User followee = _dal.Repository<User>().GetById(followeeId);
            User follower = _dal.Repository<User>().GetById(followerId);
            followee.Followers.Add(follower);
            _dal.Repository<User>().Update(followee);
            _dal.Save();
        }
        public void UnFollowUser(int followeeId, int followerId)
        {
            User followee = _dal.Repository<User>().GetById(followeeId);
            User follower = _dal.Repository<User>().GetById(followerId);
            followee.Followers.Remove(follower);
            _dal.Repository<User>().Update(followee);
            _dal.Save();
        }
        public List<User> GetMutualFriends(int userId, int friendId, int skip = 0, int take = 0)
        {
            List<User> mutualfriends = new List<User>();
            List<User> friends = new List<User>();
            List<User> userfriends = new List<User>();
            List<UserFriendship> friendship1 = _dal.Repository<UserFriendship>().Get(
                            (u => (u.UserId == userId || u.TargetUserId == userId) && u.Status == RelationshipEnum.Friend)
                            , (u => u.OrderByDescending(m => m.LastChangeStatus))
                            , "User.ActiveRelationships,User.PassiveRelationship,TargetUser.ActiveRelationships,TargetUser.PassiveRelationship"
                            , skip
                            , take).ToList();
            //foreach (UserFriendship friendShip1 in friendship1)
            //{
            //    if (friendShip1.TargetUserId == userId)
            //    {
            //        friends.Add(friendShip1.User);
            //    }
            //    else
            //    {
            //        friends.Add(friendShip1.TargetUser);
            //    }
            //}
            friends.AddRange(friendship1.Where(f => f.TargetUserId == userId).Select(f => f.User));
            friends.AddRange(friendship1.Where(f => f.TargetUserId != userId).Select(f => f.TargetUser));
            List<UserFriendship> friendship2 = _dal.Repository<UserFriendship>().Get(
                            (u => (u.UserId == friendId || u.TargetUserId == friendId) && u.Status == RelationshipEnum.Friend)
                            , (u => u.OrderByDescending(m => m.LastChangeStatus))
                            , "User.ActiveRelationships,User.PassiveRelationship,TargetUser.ActiveRelationships,TargetUser.PassiveRelationship"
                            , skip
                            , take).ToList();
            //foreach (UserFriendship friendShip2 in friendship2)
            //{
            //    if (friendShip2.TargetUserId == friendId)
            //    {
            //        userfriends.Add(friendShip2.User);
            //    }
            //    else
            //    {
            //        userfriends.Add(friendShip2.TargetUser);
            //    }
            //}
            userfriends.AddRange(friendship2.Where(f => f.TargetUserId == friendId).Select(f => f.User));
            userfriends.AddRange(friendship2.Where(f => f.TargetUserId != friendId).Select(f => f.TargetUser));
            mutualfriends = friends.Intersect(userfriends).ToList();
            return mutualfriends;
        }
        //public int CountMutualFriend(int userId, int friendId, int skip = 0, int take = 0)
        //{
        //    int result = 0;
        //    List<User> mutualfriends = new List<User>();
        //    List<User> friends = new List<User>();
        //    List<User> userfriends = new List<User>();
        //    List<UserFriendship> friendship1 = _dal.Repository<UserFriendship>().Get(
        //                    (u => (u.UserId == userId || u.TargetUserId == userId) && u.Status == RelationshipEnum.Friend)
        //                    , (u => u.OrderByDescending(m => m.LastChangeStatus))
        //                    , "User.ActiveRelationships,User.PassiveRelationship,TargetUser.ActiveRelationships,TargetUser.PassiveRelationship"
        //                    , skip
        //                    , take).ToList();
        //    //foreach (UserFriendship friendShip1 in friendship1)
        //    //{
        //    //    if (friendShip1.TargetUserId == userId)
        //    //    {
        //    //        friends.Add(friendShip1.User);
        //    //    }
        //    //    else
        //    //    {
        //    //        friends.Add(friendShip1.TargetUser);
        //    //    }
        //    //}
        //    friends.AddRange(friendship1.Where(f => f.TargetUserId == userId).Select(f => f.User));
        //    friends.AddRange(friendship1.Where(f => f.TargetUserId != userId).Select(f => f.TargetUser));
        //    List<UserFriendship> friendship2 = _dal.Repository<UserFriendship>().Get(
        //                    (u => (u.UserId == friendId || u.TargetUserId == friendId) && u.Status == RelationshipEnum.Friend)
        //                    , (u => u.OrderByDescending(m => m.LastChangeStatus))
        //                    , "User.ActiveRelationships,User.PassiveRelationship,TargetUser.ActiveRelationships,TargetUser.PassiveRelationship"
        //                    , skip
        //                    , take).ToList();
        //    //foreach (UserFriendship friendShip2 in friendship2)
        //    //{
        //    //    if (friendShip2.TargetUserId == friendId)
        //    //    {
        //    //        userfriends.Add(friendShip2.User);
        //    //    }
        //    //    else
        //    //    {
        //    //        userfriends.Add(friendShip2.TargetUser);
        //    //    }
        //    //}
        //    userfriends.AddRange(friendship2.Where(f => f.TargetUserId == friendId).Select(f => f.User));
        //    userfriends.AddRange(friendship2.Where(f => f.TargetUserId != friendId).Select(f => f.TargetUser));
        //    mutualfriends = friends.Intersect(userfriends).ToList();
        //    result = mutualfriends.Count;
        //    return result;
        //}
        public List<User> GetFriends(int userId, string tab = Constant.Account.String.AllFriendTab, int skip = 0, int take = 0)
        {
            List<User> friends = new List<User>();
            switch (tab)
            {
                case Constant.Account.String.AllFriendTab:
                    List<UserFriendship> friendShips = _dal.Repository<UserFriendship>().Get(
                            (u => (u.UserId == userId || u.TargetUserId == userId) && u.Status == RelationshipEnum.Friend)
                            , (u => u.OrderByDescending(m => m.LastChangeStatus))
                            , "User.ActiveRelationships,User.PassiveRelationship,TargetUser.ActiveRelationships,TargetUser.PassiveRelationship"
                            , skip
                            , take).ToList();
                    //foreach (UserFriendship friendShip in friendShips)
                    //{
                    //    if (friendShip.TargetUserId == userId)
                    //    {
                    //        friends.Add(friendShip.User);
                    //    }
                    //    else
                    //    {
                    //        friends.Add(friendShip.TargetUser);
                    //    }
                    //}
                    friends.AddRange(friendShips.Where(f => f.TargetUserId == userId).Select(f => f.User));
                    friends.AddRange(friendShips.Where(f => f.TargetUserId != userId).Select(f => f.TargetUser));
                    break;
                case Constant.Account.String.FollowerTab:
                    friends = _dal.Repository<User>().Get(
                            (u => u.Followees.Where(t => t.Id == userId).Count() > 0)
                            , (u => u.OrderByDescending(m => m.UserName))
                            , ""
                            , skip
                            , take).ToList();
                    break;
                case Constant.Account.String.FolloweeTab:
                    friends = _dal.Repository<User>().Get(
                            (u => u.Followers.Where(t => t.Id == userId).Count() > 0)
                            , (u => u.OrderByDescending(m => m.UserName))
                            , ""
                            , skip
                            , take).ToList();
                    break;
                case Constant.Account.String.RequestTab:
                    List<UserFriendship> friendrequests = _dal.Repository<UserFriendship>().Get(
                            (u => (u.TargetUserId == userId) && u.Status == RelationshipEnum.Requesting)
                            , (u => u.OrderByDescending(m => m.LastChangeStatus))
                            , "User,TargetUser"
                            , skip
                            , take).ToList();
                    friends = friendrequests.Select(r => r.User).ToList();
                    break;
            }
            return friends;
        }

        public List<Tag> GetFavoriteTags(int userId, int take = 0)
        {
            List<Tag> tags = new List<Tag>();
            List<MainPost> posts = _dal.Repository<MainPost>().Get(
                    (m => m.UserId == userId),
                    null,
                    "Tags",
                    0,
                    0
                ).ToList();
            //foreach (MainPost post in posts)
            //{
            //    foreach (Tag tag in post.Tags)
            //    {
            //        if (tags.Where(t => t.Id == tag.Id).Count() == 0)
            //            tags.Add(tag);
            //    }
            //}
            tags = posts.Select(p => p.Tags).SelectMany(t => t).GroupBy(t => t.Id).Select(t => t.FirstOrDefault()).ToList();
            if (take == 0)
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
            _dal.Repository<User>().Update(user);
            _dal.Save();
        }
    }
}
