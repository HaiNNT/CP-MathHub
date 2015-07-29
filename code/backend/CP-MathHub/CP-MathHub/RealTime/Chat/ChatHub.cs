using System;
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

namespace CP_MathHub.RealTime.Chat
{
    [Authorize]
    public class ChatHub : Hub
    {
        private readonly static ConnectionMapping<string> _connections = new ConnectionMapping<string>();
        public void GetOnlineUser()
        {
            // Call the addNewMessageToPage method to update clients.
            Clients.All.showOnlineUser(_connections.GetListUser(), _connections.Count);
        }

        public Task JoinConversation(string conversationName)
        {
            return Groups.Add(Context.ConnectionId, conversationName);
        }

        public Task LeaveConversation(string conversationName)
        {
            return Groups.Remove(Context.ConnectionId, conversationName);
        }

        public void SendToConversation(string message, string conversationName)
        {
            Clients.Group(conversationName).addChatMessage(Context.User.Identity.Name, message);
        }

        public override Task OnConnected()
        {
            using (AccountService aSercive = new AccountService(new CPMathHubModelContainer()))
            {
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
            }
            GetOnlineUser();
            return base.OnConnected();
        }

        public override Task OnDisconnected(bool stopCalled)
        {
            string name = Context.User.Identity.Name;
            _connections.Remove(name, Context.ConnectionId);
            GetOnlineUser();
            return base.OnDisconnected(stopCalled);
        }

        public override Task OnReconnected()
        {
            using (AccountService aSercive = new AccountService(new CPMathHubModelContainer()))
            {
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
            }
            GetOnlineUser();
            return base.OnReconnected();
        }



    }
}