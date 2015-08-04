using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Entity;
using CP_MathHub.Core.Interfaces.DAL;
using CP_MathHub.DAL;
using CP_MathHub.Service.Helpers;

namespace CP_MathHub.Service.Services
{
    public class RealTimeService : IRealTimeService, IDisposable
    {
        private int _loginUserId;
        private IUnitOfWork _dal;
        private ICommonService _cService;
        public RealTimeService(CPMathHubModelContainer context, int userId = 0)
        {
            _loginUserId = userId;
            _dal = new MathHubUoW(context);
            _cService = new CommonService(context);
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

        public List<Conversation> GetConversations(int userId)
        {
            List<Conversation> conversations = new List<Conversation>();
            conversations = _dal.Repository<Conversation>().Get(
                    (c => c.Attendances.Count(a => a.UserId == userId) > 0),
                    (c => c.OrderByDescending(m => m.CreatedDate)),
                    "Attendances",
                    0,
                    0
                ).ToList();
            return conversations;
        }

        public List<Conversation> GetNotificationConversations(int userId)
        {
            List<Conversation> conversations = new List<Conversation>();
            conversations = _dal.Repository<Conversation>().Get(
                    (c => c.Attendances.Count(a => a.UserId == userId) > 0 &&
                          c.Attendances.SelectMany(a => a.Messages).Count() > 0),
                    (c => c.OrderByDescending(m => m.CreatedDate)),
                    "Attendances",
                    0,
                    0
                ).ToList();
            return conversations;
        }

        public List<Message> GetAllConversationMessages(int conversationId)
        {
            List<Message> messages = new List<Message>();
            messages = _dal.Repository<Message>().Get(
                    (m => m.Attendance.ConversationId == conversationId),
                    (m => m.OrderBy(a => a.CreatedDate)),
                    "Attendance",
                    0,
                    0
                ).ToList();
            return messages;
        }

        public Conversation GetConversation(int id)
        {
            return _dal.Repository<Conversation>().Include("Attendances").GetById(id);
        }

        public void AddMessage(Message message)
        {
            _dal.Repository<Message>().Insert(message);
            _dal.Save();
        }

        public string GetConversationName(Conversation conversation)
        {
            string name = string.Join(",", conversation.Attendances.Where(a => a.UserId != _loginUserId).Select(a => a.User.UserName).ToArray());
            return name;
        }

        public string GetConversationAvatar(Conversation conversation)
        {
            string avatar = conversation.Attendances.FirstOrDefault(a => a.UserId != _loginUserId).User.Avatar.Url;
            return avatar;
        }

        public void UpdateConversation(Conversation conversation)
        {
            _dal.Repository<Conversation>().Update(conversation);
            _dal.Save();
        }

        public int CountNewActivityNotification()
        {
            return _dal.Repository<Notification>().Table.Count(n => n.CreatedDate > n.User.Activity.LastSeenNotification && n.UserId == _loginUserId);
        }

        public int CountNewMessageNotification()
        {
            Activity activity = _dal.Repository<Activity>().Table.FirstOrDefault(a => a.User.Id == _loginUserId);
            if (activity == default(Activity))
                return 0;
            else
                return _dal.Repository<Conversation>().Table
                                                      .Count(c => c.Attendances.Count(a => a.UserId == _loginUserId) > 0 &&
                                                                  c.Attendances.Where(a => a.UserId != _loginUserId)
                                                                                  .SelectMany(a => a.Messages)
                                                                                  .OrderByDescending(m => m.CreatedDate)
                                                                                  .FirstOrDefault()
                                                                                  .CreatedDate > activity.LastSeenMessage);
        }

        public int CountNewFriendRequestNotification()
        {
            return _dal.Repository<UserFriendship>()
                       .Table
                       .Count(u => u.TargetUserId == _loginUserId &&
                                   u.CreatedDate > u.TargetUser.Activity.LastSeenFriendRequest &&
                                   u.Status == RelationshipEnum.Requesting);
        }

        public void UpdateLastSeenNotification()
        {
            Activity activity = _dal.Repository<Activity>().Table.FirstOrDefault(a => a.User.Id == _loginUserId);
            activity.LastSeenNotification = DateTime.Now;
            _dal.Repository<Activity>().Update(activity);
            _dal.Save();
        }

        public void UpdateLastSeenMessage()
        {
            Activity activity = _dal.Repository<Activity>().Table.FirstOrDefault(a => a.User.Id == _loginUserId);
            activity.LastSeenMessage = DateTime.Now;
            _dal.Repository<Activity>().Update(activity);
            _dal.Save();
        }

        public void UpdateLastSeenRequest()
        {
            Activity activity = _dal.Repository<Activity>().Table.FirstOrDefault(a => a.User.Id == _loginUserId);
            activity.LastSeenFriendRequest = DateTime.Now;
            _dal.Repository<Activity>().Update(activity);
            _dal.Save();
        }
    }
}
