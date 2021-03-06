﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Entity;
using CP_MathHub.Core.Configuration;

namespace CP_MathHub.Core.Interfaces.Services
{
    public interface IAdminService
    {
        /// <summary>
        /// Count new users
        /// </summary>
        /// <returns></returns>
        int CountNewUser(DateTime time);

        /// <summary>
        /// Count new tags
        /// </summary>
        /// <returns></returns>
        int CountNewTag(DateTime time);

        /// <summary>
        /// Count main post reports
        /// </summary>
        /// <returns></returns>
        int CountMainPostReport(DateTime time);

        /// <summary>
        /// Count user reports
        /// </summary>
        /// <returns></returns>
        int CountUserReport(DateTime time);

        /// <summary>
        /// Count users
        /// </summary>
        /// <returns></returns>
        int CountUsers();
        /// <summary>
        /// Get list ban reasons
        /// </summary>
        /// <returns></returns>
        List<BanReason> GetBanReasons();
        /// <summary>
        /// Get ban reason by ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        BanReason GetBanReason(int id);
        /// <summary>
        /// Edit ban reason
        /// </summary>
        /// <param name="banReason"></param>
        void EditBanReason(BanReason banReason);
        /// <summary>
        /// Delete ban reason
        /// </summary>
        /// <param name="Id"></param>
        void DeleteBanReason(BanReason banReason);

        /// <summary>
        /// Insert ban reason
        /// </summary>
        /// <param name="banReason"></param>
        void InsertBanReason(BanReason banReason);
        /// <summary>
        /// Get all Ban Reason
        /// </summary>
        /// <param name="include"></param>
        /// <returns></returns>
        List<BanReason> GetBanReason();
        /// <summary>
        /// Block user: insert table BanAccount
        /// </summary>
        /// <param name="banAccount"></param>
        void BlockUser(BanAccount banAccount);
        /// <summary>
        /// Get list report
        /// </summary>
        /// <returns></returns>
        List<Report> GetMainPostReport();
        /// <summary>
        /// Get list reported main posts
        /// </summary>
        /// <returns></returns>
        List<MainPost> GetReportedMainPost();

        /// <summary>
        /// Insert tag
        /// </summary>
        /// <param name="tag"></param>
        void InsertTag(Tag tag);

        /// <summary>
        /// Edit tag
        /// </summary>
        /// <param name="tag"></param>
        void EditTag(Tag tag);

        /// <summary>
        /// Delete tag
        /// </summary>
        /// <param name="tagId"></param>
        void DeleteTag(int tagId);

        /// <summary>
        /// Get list ban reason by list ids
        /// </summary>
        /// <param name="list"></param>
        /// <returns></returns>
        List<BanReason> GetListBanReason(List<int> list);

        /// <summary>
        /// Change report status
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        bool changeStatus(int id, int type);
        /// <summary>
        /// Update post
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        bool UpdatePost(Post post);

        /// <summary>
        /// Get post by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Post GetPost(int id);

        /// <summary>
        /// Get reported question
        /// </summary>
        /// <returns></returns>
        List<Question> GetReportedQuestion();
        /// <summary>
        /// Get reported article
        /// </summary>
        /// <returns></returns>
        List<Article> GetReportedArticle();
        /// <summary>
        /// Get reported discussion
        /// </summary>
        /// <returns></returns>
        List<Discussion> GetReportedDiscussion();
        /// <summary>
        /// Get reported answer
        /// </summary>
        /// <returns></returns>
        List<Answer> GetReportedAnswer();
        /// <summary>
        /// Get reported comment
        /// </summary>
        /// <returns></returns>
        List<Comment> GetReportedComment();
        /// <summary>
        /// Set role for user
        /// </summary>
        /// <param name="assessment"></param>
        void SetRoleUser(Accessment assessment);
        /// <summary>
        /// Clear roles user
        /// </summary>
        /// <param name="id"></param>
        void ClearRolesUser(int id);
        /// <summary>
        /// Unblock user
        /// </summary>
        /// <param name="user"></param>
        void UnBlockUser(User user);

        /// <summary>
        /// Result duplicate tags
        /// </summary>
        /// <param name="tagIds"></param>
        void ResolveDuplicateTags(List<int> tagIds, string tagName, string description = "");
        /// <summary>
        /// Get list reported user
        /// </summary>
        /// <returns></returns>
        List<User> GetReportedUser();
        /// <summary>
        /// Get list reported normal post
        /// </summary>
        /// <returns></returns>
        List<Post> GetReportedPost();

        /// <summary>
        /// Get feedback from user
        /// </summary>
        /// <returns></returns>
        List<Feedback> GetFeedback();

        /// <summary>
        /// Delete feedbacks by ids
        /// </summary>
        /// <param name="ids"></param>
        void DeleteFeedbacks(List<int> ids);
        
        /// <summary>
        /// Get feedbacks by ids
        /// </summary>
        /// <param name="ids"></param>
        /// <returns></returns>
        List<Feedback> GetFeedbacks(List<int> ids);
    }
}
