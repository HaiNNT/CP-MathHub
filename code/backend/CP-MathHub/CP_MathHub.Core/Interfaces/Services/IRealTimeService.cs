using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Entity;

namespace CP_MathHub.Core.Interfaces.Services
{
    public interface IRealTimeService
    {
        /// <summary>
        /// Get all conversations that contain particular user
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        List<Conversation> GetConversations(int userId);
        
        /// <summary>
        /// Get all messages of a conversation
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        List<Message> GetAllConversationMessages(int conversationId);

        /// <summary>
        /// get a conversation by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Conversation GetConversation(int id);

        /// <summary>
        /// Insert a message
        /// </summary>
        /// <param name="message"></param>
        void AddMessage(Message message);

        /// <summary>
        /// Build conversation name
        /// </summary>
        /// <param name="conversation"></param>
        /// <returns></returns>
        string GetConversationName(int id);

        /// <summary>
        /// Update s conversation
        /// </summary>
        /// <param name="id"></param>
        void UpdateConversation(Conversation conversation);
    }
}
