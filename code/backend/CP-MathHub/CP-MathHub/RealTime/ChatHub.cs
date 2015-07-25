using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using System.Threading.Tasks;

namespace CP_MathHub
{
    [Authorize]
    public class ChatHub : Hub
    {
        public void Send(string name, string message)
        {
            // Call the addNewMessageToPage method to update clients.
            Clients.All.addNewMessageToPage(name, message);           
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


    }
}