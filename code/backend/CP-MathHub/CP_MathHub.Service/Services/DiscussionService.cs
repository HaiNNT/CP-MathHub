using CP_MathHub.Core.Configuration;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Core.Interfaces.DAL;
using CP_MathHub.DAL;
using CP_MathHub.Service.Helpers;

namespace CP_MathHub.Service.Services
{
    public class DiscussionService : IDiscussionService, IDisposable
    {
        private int _loginUserId;
        private IUnitOfWork _dal;
        private ICommonService _cService;
        public DiscussionService(CPMathHubModelContainer context, int userId = 0)
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
        public Discussion GetLastestDiscussion(int tagid)
        {
            Discussion discussion = _dal.Repository<Discussion>().Include("Author").Table
                                                 .Where(p => p.Tags.Where(t => t.Id == tagid).Count() > 0)
                                                 .Distinct()
                                                 .OrderByDescending(t => t.CreatedDate)
                                                 .FirstOrDefault();
            discussion.Author = _cService.GetUser(discussion.UserId);
            return discussion;
        }
        public List<Discussion> GetDiscussions(string type, int skip = 0, int take = 0)
        {
            List<Discussion> list = new List<Discussion>();
            switch (type)
            {
                case Constant.Discussion.String.HomeNewestTab:
                    list = _dal.Repository<Discussion>() // Get Question Repository
                                .Get(ExpressionHelper.DiscussionHelper.NewestDiscussion(_loginUserId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)), //Order Question by CreatedDate
                                    "Author,BookmarkUsers,Sharers,Tags,Reports", // Include Author Property
                                    skip,
                                    take
                                ).ToList();
                    break;
                case Constant.Discussion.String.HomeHotTab:
                    list = _dal.Repository<Discussion>()
                                .Get(
                                    ExpressionHelper.DiscussionHelper.HotDiscussion(_loginUserId),// Get hot Discussion lambda expression
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                                    skip,
                                    take
                                ).ToList();
                    break;
                case Constant.Discussion.String.BookmarkDiscussion:
                    list = _dal.Repository<Discussion>()
                                .Get(
                                    ExpressionHelper.DiscussionHelper.BookmarkDiscussion(_loginUserId),// Get hot Discussion lambda expression
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                                    skip,
                                    take
                                ).ToList();
                    break;
                default:
                    list = _dal.Repository<Discussion>()
                                .Get(ExpressionHelper.DiscussionHelper.NewestDiscussion(_loginUserId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                                    skip,
                                    take
                                ).ToList();
                    break;
            }
            return list;
        }
        public List<Discussion> GetDiscussions(int authorId, int skip = 0)
        {
            return _dal.Repository<Discussion>() //Get Question Repository
                .Get(
                    ExpressionHelper.DiscussionHelper.UserDiscussion(authorId, _loginUserId), //Filter Question by Author
                    (p => p.OrderBy(s => s.CreatedDate)), //Order Question by CreatedDate
                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                    skip,
                    0
                ).ToList();
        }
        public int CountBookmarkDiscussion()
        {
            return _dal.Repository<Discussion>().Table.Count(ExpressionHelper.DiscussionHelper.BookmarkDiscussion(_loginUserId));
        }
        public int CountUserDiscussion(int authorId)
        {
            int result = _dal.Repository<Discussion>().Table.Count(ExpressionHelper.DiscussionHelper.UserDiscussion(authorId, _loginUserId));
            return result;
        }
        //public List<Discussion> GetRelatedDiscussions(int tagId, int skip = 0)
        //{
        //    return dal.Repository<Discussion>()
        //        .Get(
        //            (a=>a.Tags.Where(t=>t.Id == tagId).Count() > 0),
        //            (p => p.OrderBy(s => s.CreatedDate)),
        //            "Author,BookmarkUsers,Sharers,Tags,Reports",
        //            skip
        //        ).ToList();
        //}
        public List<Discussion> GetDiscussionCategorys(int tagId, int skip)
        {
            return _dal.Repository<Discussion>() //Get Question Repository
                .Get(
                    ExpressionHelper.DiscussionHelper.TagDiscussion(tagId, _loginUserId), //Filter Question by Author
                    (p => p.OrderBy(s => s.CreatedDate)), //Order Question by CreatedDate
                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                    skip,
                    5
                ).ToList();
        }
        public List<EditedLog> GetEditedLog(int postId, int skip = 0)
        {
            return _dal.Repository<EditedLog>()
                .Get(
                (a => a.PostId == postId),
                (p => p.OrderBy(s => s.CreatedDate)),
                "",
                skip,
                0
                ).ToList();
        }
        public List<Discussion> GetDiscussions(int skip, string tagName)
        {
            return _dal.Repository<Discussion>() //Get Question Repository
                .Get(ExpressionHelper.DiscussionHelper.TagDiscussion(tagName, _loginUserId), //Contain tag
                        (p => p.OrderBy(s => s.CreatedDate)),
                        "Author,BookmarkUsers,Sharers,Tags,Reports",
                        skip
                ).ToList();
        }
        public void InsertDiscussion(Discussion discussion)
        {
            _dal.Repository<Discussion>().Insert(discussion);
            _dal.Save();
        }
        public void EditDiscussion(Discussion discussion)
        {
            _dal.Repository<Discussion>().Update(discussion);
            _dal.Save();
        }
        public void DeleteDiscussion(Discussion discussion)
        {
            _dal.Repository<Discussion>().Delete(discussion);
            _dal.Save();
        }
        public List<Discussion> SearchDiscussions(int skip, string searchString)
        {
            List<Discussion> list = new List<Discussion>();
            if (searchString != null)
            {
                IEnumerable<Discussion> ienum = _dal.Repository<Discussion>()
                               .Get(null,
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                               );
                ienum.Distinct();
                list = ienum.Where(ExpressionHelper.DiscussionHelper.SearchDiscussion(searchString, _loginUserId)).ToList();
            }
            return list;
        }
        public int CountSearchResult(string searchString)
        {
            return _dal.Repository<Discussion>().Table.Count(ExpressionHelper.DiscussionHelper.SearchDiscussion(searchString, _loginUserId));
        }
        public List<Comment> GetComments(int postId)
        {
            List<Comment> comments = _dal.Repository<Comment>().Get(
                    (c => c.PostId == postId),
                    (c => c.OrderByDescending(m => m.CreatedDate)),
                    "",
                    0,
                    0
                ).ToList();
            IncludeUserForComments(comments);
            return comments;
        }
        public void IncludeUserForComments(List<Comment> comments)
        {
            foreach (Comment comment in comments)
            {
                comment.Author = _dal.Repository<User>().Table.FirstOrDefault(m => m.Id == comment.UserId);
            }
        }
        public void IncludeReplyForComments(List<Comment> comments)
        {
            foreach (Comment comment in comments)
            {
                IncludeUserForComments(comment.Comments.ToList());
            }
        }
        public Discussion GetDiscussion(int id)
        {
            Discussion discussion = _dal.Repository<Discussion>().GetById(id, "Author,Tags,Reports");
            discussion.Author = _cService.GetUser(discussion.UserId);
            return discussion;
        }
        public Discussion GetDetailDiscussion(int id)
        {
            Discussion discussion = _dal.Repository<Discussion>()
                                        .Include("Author,BookmarkUsers,Sharers,Tags,Reports,Votes").Table
                                        .Where(ExpressionHelper.DiscussionHelper.DetailDiscussion(id, _loginUserId))
                                        .FirstOrDefault();
            if (discussion != default(Discussion))
                discussion.Author = _cService.GetUser(discussion.UserId);
            return discussion;
        }
        public void UpdateDiscussion(Discussion discussion)
        {
            _dal.Repository<Discussion>().Update(discussion);
            _dal.Save();
        }
        public void IncreaseViewDiscussion(Discussion discussion)
        {
            ++discussion.View;
            UpdateDiscussion(discussion);
        }
    }
}
