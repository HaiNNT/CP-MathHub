using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.SignalR;
using System.Threading.Tasks;
using Newtonsoft.Json;
using CP_MathHub.Entity;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Service.Services;

namespace CP_MathHub.RealTime
{
    [Authorize]
    public class RealTimeHub : Hub
    {
        private readonly static ConnectionMapping<int, int> _connections = new ConnectionMapping<int, int>();
        public static ConnectionMapping<int, int> Connections { get { return _connections; } }
        public void GetOnlineFriends()
        {
            //Show all online users
            Clients.Caller.showOnlineFriends(JsonConvert.SerializeObject(_connections.GetOnlineFriendConversationIds(
                                                 Context.User.Identity.GetUserId<int>()
                                            ), Formatting.Indented));
        }
        public void CheckOnline(int id)
        {
            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            {
                Conversation conversation = rService.GetConversation(id);
                List<int> users = conversation.Attendances.Select(c => c.User.Id).ToList();
                int count = users.Count(u => _connections.TrackOnlineUser(u));
                string cssClass = count > 1 ? "fa fa-circle mh-chat-status-icon-on conversation-status-" + id : "fa fa-circle mh-chat-status-icon-off conversation-status-" + id;
                Clients.Group(id + "").checkOnlineTrigger(id, cssClass);
            }
        }
        public override Task OnConnected()
        {
            using (AccountService aService = new AccountService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            {
                #region Notification

                Clients.Caller.notifyNewActivity(rService.CountNewActivityNotification());
                Clients.Caller.notifyNewMessage(rService.CountNewMessageNotification());
                Clients.Caller.notifyNewFriendRequest(rService.CountNewFriendRequestNotification());

                #endregion

                #region Message
                //User user = aService.GetUser(Context.User.Identity.GetUserId<int>());
                //if (user.Avatar == default(Image))
                //{
                //    user.Avatar.Url = "~/Content/img/user.jpg";
                //}
                if (!_connections.GetConnections(Context.User.Identity.GetUserId<int>()).Contains(Context.ConnectionId))
                {
                    _connections.Add(Context.User.Identity.GetUserId<int>(), Context.ConnectionId);
                }
                List<Conversation> conversations = rService.GetConversations(Context.User.Identity.GetUserId<int>());
                foreach (Conversation conversation in conversations)
                {
                    _connections.AddUserToConversation(conversation.Id, Context.User.Identity.GetUserId<int>());
                    JoinConversation(conversation.Id + "");
                    CheckOnline(conversation.Id);
                    Clients.OthersInGroup(conversation.Id + "").getOnlineFriends();
                }
                //Show all online users
                Clients.Caller.showOnlineFriends(JsonConvert.SerializeObject(_connections.GetOnlineFriendConversationIds(
                                     Context.User.Identity.GetUserId<int>()
                                ), Formatting.Indented));
                #endregion
            }
            return base.OnConnected();
        }
        public override Task OnDisconnected(bool stopCalled)
        {
            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            {
                _connections.Remove(Context.User.Identity.GetUserId<int>(), Context.ConnectionId);
                List<Conversation> conversations = rService.GetConversations(Context.User.Identity.GetUserId<int>());
                foreach (Conversation conversation in conversations)
                {
                    _connections.RemoveUserFromConversation(conversation.Id, Context.User.Identity.GetUserId<int>());
                    CheckOnline(conversation.Id);
                    //Show all online users
                    Clients.OthersInGroup(conversation.Id + "").getOnlineFriends();
                }
            }
            return base.OnDisconnected(stopCalled);
        }
        public override Task OnReconnected()
        {
            using (AccountService aSercive = new AccountService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            {
                #region Notification

                Clients.Caller.notifyNewActivity(rService.CountNewActivityNotification());
                Clients.Caller.notifyNewMessage(rService.CountNewMessageNotification());
                Clients.Caller.notifyNewFriendRequest(rService.CountNewFriendRequestNotification());

                #endregion

                #region Message
                User user = aSercive.GetUser(Context.User.Identity.GetUserId<int>());
                if (user.Avatar == default(Image))
                {
                    user.Avatar.Url = "~/Content/img/user.jpg";
                }
                if (!_connections.GetConnections(Context.User.Identity.GetUserId<int>()).Contains(Context.ConnectionId))
                {
                    _connections.Add(Context.User.Identity.GetUserId<int>(), Context.ConnectionId, user.Id + "", user.Avatar.Url);
                }
                List<Conversation> conversations = rService.GetConversations(user.Id);
                foreach (Conversation conversation in conversations)
                {
                    _connections.AddUserToConversation(conversation.Id, Context.User.Identity.GetUserId<int>());
                    JoinConversation(conversation.Id + "");
                    CheckOnline(conversation.Id);
                    Clients.OthersInGroup(conversation.Id + "").getOnlineFriends();
                }
                //Show all online users
                Clients.Caller.showOnlineFriends(JsonConvert.SerializeObject(_connections.GetOnlineFriendConversationIds(
                                     Context.User.Identity.GetUserId<int>()
                                ), Formatting.Indented));
                #endregion
            }
            return base.OnReconnected();
        }

        #region Message
        private Task JoinConversation(string conversationId)
        {
            return Groups.Add(Context.ConnectionId, conversationId);
        }

        private Task LeaveConversation(string conversationId)
        {
            return Groups.Remove(Context.ConnectionId, conversationId);
        }

        public void SendToConversation(string content, int conversationId)
        {
            //profileUrl, avatarUrl, username, content, time
            using (AccountService aService = new AccountService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            {
                User user = aService.GetUser(Context.User.Identity.GetUserId<int>());
                string profileUrl = user.Id == Context.User.Identity.GetUserId<int>() ? "/Account/MyProfile" : "/Account/UserProfile?userId=" + user.Id;
                string avatarUrl = user.Avatar.Url.Replace("~", "");
                string username = user.UserName;
                string time = DateTime.Now.ToShortTimeString();
                Conversation conversation = rService.GetConversation(conversationId);
                Message message = new Message();
                message.AttendanceId = conversation.Attendances.First(a => a.UserId == user.Id).Id;
                message.Content = content;
                message.CreatedDate = DateTime.Now;
                rService.AddMessage(message);
                Clients.Group(conversationId + "").addChatMessage(profileUrl, avatarUrl, username, content, time);
                Clients.OthersInGroup(conversationId + "").notifyNewMessage(rService.CountNewMessageNotification());
            }

        }
        #endregion

        #region Notification

        public void RefreshActivityNum()
        {
            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            {
                rService.UpdateLastSeenNotification();
            }
        }

        public void RefreshRequestNum()
        {
            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            {
                rService.UpdateLastSeenRequest();
            }
        }

        public void RefreshMessageNum()
        {
            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            {
                rService.UpdateLastSeenMessage();
            }
        }

        public void GetNewMessageNum()
        {
            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            {
                Clients.Caller.notifyNewMessage(rService.CountNewMessageNotification());
            }
        }

        #endregion

    }
}