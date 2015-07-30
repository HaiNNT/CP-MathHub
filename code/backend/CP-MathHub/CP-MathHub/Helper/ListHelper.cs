using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Globalization;
using CP_MathHub.Models.Account;
using CP_MathHub.Models.RealTime;
using CP_MathHub.Entity;

namespace CP_MathHub.Helper
{
    public static class ListHelper
    {
        public static List<UserItemViewModel> ListUserToListUserItem(List<User> users, int userId)
        {
            List<UserItemViewModel> result = new List<UserItemViewModel>();
            foreach (User u in users)
            {
                UserItemViewModel model = new UserItemViewModel();
                model.User = u;
                model.FollowStatus = u.Followers.Count(t => t.Id == userId) > 0;
                UserFriendship friendship1 = u.PassiveRelationship.Where(r => r.UserId == userId).FirstOrDefault();
                UserFriendship friendship2 = u.ActiveRelationships.Where(r => r.TargetUserId == userId).FirstOrDefault();
                if (friendship1 != default(UserFriendship))
                {
                    switch (friendship1.Status)
                    {
                        case RelationshipEnum.Requesting:
                            model.RequestStatus = FriendStatusEnum.ActiveRequesting;
                            break;
                        case RelationshipEnum.Friend:
                            model.RequestStatus = FriendStatusEnum.Friend;
                            break;
                        case RelationshipEnum.Blocked:
                            model.RequestStatus = FriendStatusEnum.Blocked;
                            break;
                        default:
                            model.RequestStatus = FriendStatusEnum.Stranger;
                            break;
                    }
                }
                else if (friendship2 != default(UserFriendship))
                {
                    switch (friendship2.Status)
                    {
                        case RelationshipEnum.Requesting:
                            model.RequestStatus = FriendStatusEnum.PasssiveRequesting;
                            break;
                        case RelationshipEnum.Friend:
                            model.RequestStatus = FriendStatusEnum.Friend;
                            break;
                        case RelationshipEnum.Blocked:
                            model.RequestStatus = FriendStatusEnum.Blocked;
                            break;
                        default:
                            model.RequestStatus = FriendStatusEnum.Stranger;
                            break;
                    }
                }
                else
                {
                    model.RequestStatus = FriendStatusEnum.Stranger;
                }
                result.Add(model);
            }
            return result;
        }
        public static List<ConversationPreviewViewModel> ConversationsToConversationViewModels(List<Conversation> conversations, int userId)
        {
            List<ConversationPreviewViewModel> models = new List<ConversationPreviewViewModel>();
            foreach (Conversation conversation in conversations)
            {
                ConversationPreviewViewModel model = new ConversationPreviewViewModel();
                model.Id = conversation.Id;
                model.Avatar = conversation.Avatar;
                model.Name = conversation.Name;
                model.LastMessage = conversation.Attendances
                                                    .Where(m => m.UserId != userId)
                                                    .FirstOrDefault()
                                                    .Messages
                                                        .OrderByDescending(m => m.CreatedDate)
                                                        .FirstOrDefault();
                model.NewMessageNum = conversation.Attendances
                                                    .Where(m => m.UserId != userId)
                                                    .FirstOrDefault()
                                                    .Messages.Count(m => m.Attendance.SeenDate <= m.CreatedDate);
                models.Add(model);
            }
            return models;
        }
    }
}