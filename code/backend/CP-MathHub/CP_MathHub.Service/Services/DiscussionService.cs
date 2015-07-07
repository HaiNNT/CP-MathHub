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
    public class DiscussionService : IDiscussionService
    {
        private IUnitOfWork dal;
        private ICommonService cService;
        public DiscussionService(CPMathHubModelContainer context)
        {
            dal = new MathHubUoW(context);
            cService = new CommonService(context);
        }
        public Discussion GetLastestDiscussion(int tagid)
        {
            Discussion discussion = dal.Repository<Discussion>().Include("Author").Table
                                                 .Where(p => p.Tags.Where(t => t.Id == tagid).Count() > 0)
                                                 .Distinct()
                                                 .OrderByDescending(t => t.CreatedDate)
                                                 .FirstOrDefault();
            return discussion;
        }
        public List<Discussion> GetDiscussions(string homeTab, int skip = 0)
        {
            List<Discussion> list = new List<Discussion>();
            switch (homeTab)
            {
                case Constant.Question.String.HomeNewestTab:
                    list = dal.Repository<Discussion>() // Get Question Repository
                                .Get(null,
                                    (p => p.OrderByDescending(s => s.CreatedDate)), //Order Question by CreatedDate
                                    "Author,BookmarkUsers,Sharers,Tags,Reports", // Include Author Property
                                    skip
                                ).ToList();
                    break;
                case Constant.Question.String.HomeHotTab:
                    list = dal.Repository<Discussion>()
                                .Get(
                                    ExpressionHelper.DiscussionHelper.HotDiscussion(),// Get hot Question lambda expression
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                                    skip
                                ).ToList();
                    break;
                default:
                    list = dal.Repository<Discussion>()
                                .Get(null,
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                                    skip
                                ).ToList();
                    break;
            }
            return list;
        }
        public List<Discussion> GetDiscussions(int authorId, int skip = 0)
        {
            return dal.Repository<Discussion>() //Get Question Repository
                .Get(
                    (a => a.UserId > 0), //Filter Question by Author
                    (p => p.OrderBy(s => s.CreatedDate)), //Order Question by CreatedDate
                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                    skip
                ).ToList();
        }
        public List<Discussion> GetDiscussionCategorys(int tagId, int skip)
        {
            return dal.Repository<Discussion>() //Get Question Repository
                .Get(
                    (a => a.Tags.Where(t => t.Id == tagId).Count() > 0), //Filter Question by Author
                    (p => p.OrderBy(s => s.CreatedDate)), //Order Question by CreatedDate
                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                    skip
                ).ToList();
        }
        public List<Discussion> GetDiscussions(int skip, string tagName)
        {
            return dal.Repository<Discussion>() //Get Question Repository
                .Get(a => a.Tags.Where(t => t.Name == tagName).Count() > 0, //Contain tag
                        (p => p.OrderBy(s => s.CreatedDate)),
                        "Author,BookmarkUsers,Sharers,Tags,Reports",
                        skip
                ).ToList();
        }
        public void InsertDiscussion(Discussion discussion)
        {
            dal.Repository<Discussion>().Insert(discussion);
            dal.Save();
        }
        public void EditDiscussion(Discussion discussion)
        {
            dal.Repository<Discussion>().Update(discussion);
            dal.Save();
        }
        public void DeleteDiscussion(Discussion discussion)
        {
            dal.Repository<Discussion>().Delete(discussion);
            dal.Save();
        }
        public List<Discussion> SearchDiscussions(int skip, string searchString)
        {
            List<Discussion> list = new List<Discussion>();
            if (searchString != null)
            {
                IEnumerable<Discussion> ienum = dal.Repository<Discussion>()
                               .Get(a => a.Title.ToLower().Contains(searchString.ToLower()),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                               );
                ienum.Distinct();
                list = ienum.ToList();
            }
            return list;
        }
        public int CountSearchResult(string searchString)
        {
            return dal.Repository<Discussion>().Table.Count(m => m.Title.ToLower().Contains(searchString.ToLower()));
        }
        public List<Comment> GetComments(int postId)
        {
            List<Comment> comments = dal.Repository<Comment>().Get(
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
                comment.Author = dal.Repository<User>().Table.FirstOrDefault(m => m.Id == comment.UserId);
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
            return dal.Repository<Discussion>().GetById(id, "Author,Tags,Reports");
        }
        public void UpdateDiscussion(Discussion discussion)
        {
            dal.Repository<Discussion>().Update(discussion);
            dal.Save();
        }
        public void IncreaseViewDiscussion(Discussion discussion)
        {
            ++discussion.View;
            UpdateDiscussion(discussion);
        }
    }
}
