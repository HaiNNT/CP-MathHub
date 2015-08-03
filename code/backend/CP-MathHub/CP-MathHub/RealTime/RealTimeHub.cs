﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.SignalR;
using System.Threading.Tasks;
using CP_MathHub.Entity;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Service.Services;

namespace CP_MathHub.RealTime
{
    [Authorize]
    public class RealTimeHub : Hub
    {
        private readonly static ConnectionMapping<string> _connections = new ConnectionMapping<string>();
        public static ConnectionMapping<string> Connections { get { return _connections; } }
        public void GetOnlineUser()
        {
            // Call the addNewMessageToPage method to update clients.
            Clients.All.showOnlineUser(_connections.GetListUser(), _connections.Count);
        }
        public void CheckOnline(int id)
        {
            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            {
                Conversation conversation = rService.GetConversation(id);
                List<User> users = conversation.Attendances.Select(c => c.User).ToList();
                int count = users.Count(u => _connections.TrackOnlineUser(u.UserName));
                string cssClass = count > 1 ? "fa fa-circle mh-chat-status-icon-on conversation-status-" + id : "fa fa-circle mh-chat-status-icon-off conversation-status-" + id;
                Clients.Group(id + "").checkOnlineTrigger(id, cssClass);
            }
        }
        public override Task OnConnected()
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
                string name = Context.User.Identity.Name;
                User user = aSercive.GetUser(Context.User.Identity.GetUserId<int>());
                if (user.Avatar == default(Image))
                {
                    user.Avatar.Url = "~/Content/img/user.jpg";
                }
                if (!_connections.GetConnections(name).Contains(Context.ConnectionId))
                {
                    _connections.Add(name, Context.ConnectionId, user.Id + "", user.Avatar.Url);
                }
                List<Conversation> conversations = rService.GetConversations(user.Id);
                foreach (Conversation conversation in conversations)
                {
                    JoinConversation(conversation.Id + "");
                    CheckOnline(conversation.Id);
                }
                #endregion
            }
            return base.OnConnected();
        }
        public override Task OnDisconnected(bool stopCalled)
        {
            using (RealTimeService rService = new RealTimeService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            {
                string name = Context.User.Identity.Name;
                _connections.Remove(name, Context.ConnectionId);
                List<Conversation> conversations = rService.GetConversations(Context.User.Identity.GetUserId<int>());
                foreach (Conversation conversation in conversations)
                {
                    CheckOnline(conversation.Id);
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
                string name = Context.User.Identity.Name;
                User user = aSercive.GetUser(Context.User.Identity.GetUserId<int>());
                if (user.Avatar == default(Image))
                {
                    user.Avatar.Url = "~/Content/img/user.jpg";
                }
                if (!_connections.GetConnections(name).Contains(Context.ConnectionId))
                {
                    _connections.Add(name, Context.ConnectionId, user.Id + "", user.Avatar.Url);
                }
                List<Conversation> conversations = rService.GetConversations(user.Id);
                foreach (Conversation conversation in conversations)
                {
                    JoinConversation(conversation.Id + "");
                    CheckOnline(conversation.Id);
                }
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
            using (AccountService aSercive = new AccountService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            using (RealTimeService rSercive = new RealTimeService(new CPMathHubModelContainer(), Context.User.Identity.GetUserId<int>()))
            {
                User user = aSercive.GetUser(Context.User.Identity.GetUserId<int>());
                string profileUrl = user.Id == Context.User.Identity.GetUserId<int>() ? "/Account/MyProfile" : "/Account/UserProfile?userId=" + user.Id;
                string avatarUrl = user.Avatar.Url.Replace("~","");
                string username = user.UserName;
                string time = DateTime.Now.ToShortTimeString();
                Conversation conversation = rSercive.GetConversation(conversationId);               
                Message message = new Message();
                message.AttendanceId = conversation.Attendances.First(a => a.UserId == user.Id).Id;
                message.Content = content;
                message.CreatedDate = DateTime.Now;
                rSercive.AddMessage(message);
                Clients.Group(conversationId+"").addChatMessage(profileUrl, avatarUrl, username, content, time);
            }
           
        }
        #endregion

        #region Notification
            
        #endregion

    }
}