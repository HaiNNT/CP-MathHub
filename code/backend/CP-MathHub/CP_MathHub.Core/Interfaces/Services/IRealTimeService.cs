﻿using System;
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
        /// Get all conversations that have nessage
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        List<Conversation> GetNotificationConversations(int userId);
        
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
        string GetConversationName(Conversation conversation);

        /// <summary>
        /// Get Avatar for conversation
        /// </summary>
        /// <param name="conversation"></param>
        /// <returns></returns>
        string GetConversationAvatar(Conversation conversation);

        /// <summary>
        /// Update s conversation
        /// </summary>
        /// <param name="id"></param>
        void UpdateConversation(Conversation conversation);

        /// <summary>
        /// Count new activity notification
        /// </summary>
        /// <returns></returns>
        int CountNewActivityNotification();

        /// <summary>
        /// Count new message notification
        /// </summary>
        /// <returns></returns>
        int CountNewMessageNotification();

        /// <summary>
        /// Count new friend request notification
        /// </summary>
        /// <returns></returns>
        int CountNewFriendRequestNotification();
    }
}
