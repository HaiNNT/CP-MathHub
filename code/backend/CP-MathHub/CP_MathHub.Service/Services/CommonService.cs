using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Entity;
using CP_MathHub.Core.Interfaces.DAL;
using CP_MathHub.DAL;
using CP_MathHub.Service.Helpers;

namespace CP_MathHub.Service.Services
{
    public class CommonService : ICommonService, IDisposable
    {
        private IUnitOfWork dal;
        private AccountService aService;
        public CommonService(CPMathHubModelContainer context)
        {
            dal = new MathHubUoW(context);
            aService = new AccountService(context);

        }
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                dal.Dispose();
            }

        }
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
        public Tag GetTag(string name)
        {
            Tag tag = null;
            IQueryable<Tag> query = dal.Repository<Tag>().Table
            .Where(
                t => t.Name.ToLower() == name.ToLower()
            );
            if (query.Count() > 0)
            {
                return tag = query.FirstOrDefault();
            }
            return tag;
        }
        public Tag GetTag(int id)
        {
            Tag tag = dal.Repository<Tag>()
                .GetById(id);
            return tag;
        }
        public List<Tag> GetTags(List<int> tagIds)
        {
            List<Tag> tags = new List<Tag>();
            if (tagIds != null)
            {
                foreach (int id in tagIds)
                {
                    Tag tag = GetTag(id);
                    tags.Add(tag);
                }
            }
            return tags;
        }
        public List<Tag> GetTags(string name)
        {
            List<Tag> tags = dal.Repository<Tag>().Get(
                    (t => t.Name.ToLower().Contains(name.ToLower())),
                    (t => t.OrderBy(m => m.Name))
                ).ToList();
            return tags;
        }
        public List<Tag> GetTags(string name, int skip)
        {
            List<Tag> tags = dal.Repository<Tag>().Get(
                    (t => t.Name.ToLower().Contains(name.ToLower())),
                    (t => t.OrderBy(m => m.Name)),
                    "MainPosts",
                    skip,
                    Constant.Question.Integer.TagPagingDefaultTake
                ).ToList();
            return tags;
        }
        public List<Tag> GetTags(string tab, string name, int skip)
        {
            List<Tag> list = new List<Tag>();
            switch (tab)
            {
                case Constant.Question.String.TagNewTab:
                    list = dal.Repository<Tag>()
                                .Get(
                                    ExpressionHelper.TagHelper.ContainName(name),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "MainPosts",
                                    skip,
                                    Constant.Question.Integer.TagPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.TagPopularTab:
                    list = dal.Repository<Tag>()
                                .Get(
                                    ExpressionHelper.TagHelper.ContainName(name),
                                    (p => p.OrderByDescending(s => s.MainPosts.Count)),
                                    "MainPosts",
                                    skip,
                                    Constant.Question.Integer.TagPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.TagNameTab:
                    list = dal.Repository<Tag>()
                                .Get(
                                    ExpressionHelper.TagHelper.ContainName(name),
                                    (p => p.OrderBy(s => s.Name)),
                                    "MainPosts",
                                    skip,
                                    Constant.Question.Integer.TagPagingDefaultTake
                                ).ToList();
                    break;
                default:
                    list = dal.Repository<Tag>()
                                .Get(
                                    ExpressionHelper.TagHelper.ContainName(name),
                                    (p => p.OrderByDescending(s => s.MainPosts.Count)),
                                    "MainPosts",
                                    skip,
                                    Constant.Question.Integer.TagPagingDefaultTake
                                ).ToList();
                    break;
            }
            return list;
        }
        public List<Tag> GetCategorys()
        {
            List<Tag> list = new List<Tag>();
            list = dal.Repository<Tag>()
                                .Get(
                                (p=>p.MainPosts.OfType<Discussion>().Count() > 0),
                                    (p => p.OrderByDescending(s => s.Id)),
                                    "MainPosts",
                                    0,
                                    Constant.Discussion.Integer.CategoryDefaultLoad
                                ).ToList();
            return list;
        }
        public List<Tag> GetTags(int skip, string tab)
        {
            List<Tag> list = new List<Tag>();
            switch (tab)
            {
                case Constant.Question.String.TagNewTab:
                    list = dal.Repository<Tag>()
                                .Get(null,
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "MainPosts",
                                    skip,
                                    Constant.Question.Integer.TagPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.TagPopularTab:
                    list = dal.Repository<Tag>()
                                .Get(
                                    null,
                                    (p => p.OrderByDescending(s => s.MainPosts.Count)),
                                    "MainPosts",
                                    skip,
                                    Constant.Question.Integer.TagPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.TagNameTab:
                    list = dal.Repository<Tag>()
                                .Get(
                                    null,
                                    (p => p.OrderBy(s => s.Name)),
                                    "MainPosts",
                                    skip,
                                    Constant.Question.Integer.TagPagingDefaultTake
                                ).ToList();
                    break;
                default:
                    list = dal.Repository<Tag>()
                                .Get(
                                    null,
                                    (p => p.OrderByDescending(s => s.MainPosts.Count)),
                                    "MainPosts",
                                    skip,
                                    Constant.Question.Integer.TagPagingDefaultTake
                                ).ToList();
                    break;
            }
            return list;
        }
        public bool InsertTag(Tag tag, int userId)
        {
            if (GetTag(tag.Name) != null)
            {
                return false;
            }
            tag.CreatedDate = DateTime.Now;
            tag.UserId = userId;
            tag.Description = "";
            dal.Repository<Tag>().Insert(tag);
            dal.Save();
            return true;
        }
        public List<Tag> SearchTags(string searchString, int skip)
        {
            List<Tag> list = new List<Tag>();
            if (searchString != null)
            {
                IEnumerable<Tag> ienum = dal.Repository<Tag>()
                               .Get(a => a.Name.ToLower().Contains(searchString.ToLower()),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Name",
                                    skip
                               );
                ienum.Distinct();
                list = ienum.ToList();
            }
            return list;
        }
        public bool Bookmark(int id, User user)
        {
            MainPost post = dal.Repository<MainPost>().GetById(id);
            if (post.BookmarkUsers.Contains(user))
            {
                post.BookmarkUsers.Remove(user);
            }
            else
            {
                post.BookmarkUsers.Add(user);
            }
            dal.Repository<MainPost>().Update(post);
            dal.Save();
            return true;
        }
        public bool Like(int id, int userId)
        {
            try
            {
                Vote vote = GetVote(id, userId);
                if (vote == default(Vote))
                {
                    vote = new Vote();
                    vote.PostId = id;
                    vote.Type = VoteEnum.VoteUp;
                    vote.UserId = userId;
                    vote.VotedDate = DateTime.Now;
                    dal.Repository<Vote>().Insert(vote);

                    Post post = dal.Repository<Post>().GetById(id);
                    ++post.VoteUp;
                    dal.Repository<Post>().Update(post);
                    dal.Save();
                    return true;
                }
                else
                {
                    Post post = dal.Repository<Post>().GetById(id);
                    post.VoteUp = post.VoteUp > 0 ? --post.VoteUp : 0;
                    dal.Repository<Vote>().Delete(vote);
                    dal.Save();
                    return true;
                }
            }
            catch
            {
                return false;
            }
        }
        public User GetLoginUser()
        {
            return aService.GetLoginUser();
        }
        public User GetUser(int userId)
        {
            return aService.GetUser(userId);
        }
        public List<User> GetUsers(int skip, string tab)
        {
            List<User> list = new List<User>();
            switch (tab)
            {
                case Constant.Question.String.UserNewTab:
                    list = dal.Repository<User>()
                                .Get(null,
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.UserReputationTab:
                    list = dal.Repository<User>()
                                .Get(
                                    null,
                                    (p => p.OrderByDescending(s => s.Reputation)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.UserExpertTab:
                    list = dal.Repository<User>()
                                .Get(
                                    ExpressionHelper.UserHelper.RoledUsers("Expert"),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.UserModTab:
                    list = dal.Repository<User>()
                                .Get(
                                    ExpressionHelper.UserHelper.RoledUsers("Moderator"),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                default:
                    list = dal.Repository<User>()
                                .Get(
                                    null,
                                    (p => p.OrderByDescending(s => s.Reputation)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
            }
            return list;
        }
        public List<User> GetUsers(string name, int skip, string tab = "")
        {
            List<User> list = new List<User>();
            switch (tab)
            {
                case Constant.Question.String.UserNewTab:
                    list = dal.Repository<User>()
                                .Get(
                                    ExpressionHelper.UserHelper.ContainName(name),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.UserReputationTab:
                    list = dal.Repository<User>()
                                .Get(
                                    ExpressionHelper.UserHelper.ContainName(name),
                                    (p => p.OrderByDescending(s => s.Reputation)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.UserExpertTab:
                    list = dal.Repository<User>()
                                .Get(
                                    Expression.Lambda<Func<User, bool>>(
                                                    Expression.AndAlso(ExpressionHelper.UserHelper.RoledUsers("Expert").Body,
                                                                        ExpressionHelper.UserHelper.ContainName(name).Body)),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.UserModTab:
                    list = dal.Repository<User>()
                                .Get(
                                     Expression.Lambda<Func<User, bool>>(
                                                    Expression.AndAlso(ExpressionHelper.UserHelper.RoledUsers("Moderator").Body,
                                                                        ExpressionHelper.UserHelper.ContainName(name).Body)),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                default:
                    list = dal.Repository<User>()
                                .Get(
                                    ExpressionHelper.UserHelper.ContainName(name),
                                    (p => p.OrderByDescending(s => s.Reputation)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
            }
            return list;
        }
        public void CommentPost(Comment comment)
        {
            dal.Repository<Comment>().Insert(comment);
            EditedLog log = new EditedLog();
            log.PostId = comment.Id;
            log.UserId = comment.UserId;
            log.Content = comment.Content;
            log.CreatedDate = comment.CreatedDate;
            dal.Repository<EditedLog>().Insert(log);
            dal.Save();
        }
        public Comment UpdateComment(Comment c, int userId)
        {
            Comment comment = dal.Repository<Comment>().GetById(c.Id);
            comment.Content = c.Content;
            comment.LastEditedDate = DateTime.Now;
            dal.Repository<Comment>().Update(comment);
            EditedLog log = new EditedLog();
            log.PostId = comment.Id;
            log.UserId = comment.UserId;
            log.Content = comment.Content;
            log.CreatedDate = comment.LastEditedDate;
            dal.Repository<EditedLog>().Insert(log);
            dal.Save();
            return comment;
        }
        public void DisableComment(int postId)
        {
            MainPost post = dal.Repository<MainPost>().GetById(postId);
            post.Status = PostStatusEnum.Closed;
            dal.Repository<MainPost>().Update(post);
            dal.Save();
        }
        public void EnableComment(int postId)
        {
            MainPost post = dal.Repository<MainPost>().GetById(postId);
            post.Status = PostStatusEnum.Active;
            dal.Repository<MainPost>().Update(post);
            dal.Save();
        }
        public List<Comment> GetComments(int postId)
        {
            return dal.Repository<Comment>().Table
                                            .Where(c => c.PostId == postId)
                                            .OrderBy(c => c.CreatedDate)
                                            .ToList();
        }
        public Comment GetComment(int id, string include = "")
        {
            return dal.Repository<Comment>().Include(include).GetById(id);
        }
        public Vote GetVote(int postId, int userId)
        {
            return dal.Repository<Vote>().Table.Where(v => v.PostId == postId && v.UserId == userId).FirstOrDefault();
        }
        public bool CreateReport(Report report)
        {
            Report r = GetReport(report.PostId, report.ReporterId);
            if (r == default(Report))
            {
                dal.Repository<Report>().Insert(report);
                dal.Save();
                return true;
            }
            else
            {
                return false;
            }

        }
        public Report GetReport(int? postId, int reporterId)
        {
            return dal.Repository<Report>().Table.Where(v => v.PostId == postId && v.UserId == reporterId).FirstOrDefault();
        }
        public List<EditedLog> GetEditedLog(int postId)
        {
            List<EditedLog> logs = new List<EditedLog>();
            logs = dal.Repository<EditedLog>().Get(
                    (e => e.PostId == postId),
                    (e => e.OrderBy(m => m.CreatedDate)),
                    "User,Post",
                    0,
                    0
                ).ToList();
            return logs;
        }
        public MainPost GetMainPost(int mainPostId, string include = "")
        {
            return dal.Repository<MainPost>().Include(include).GetById(mainPostId);
        }
        public Post GetPost(int postId, string include = "")
        {
            return dal.Repository<Post>().Include(include).GetById(postId);
        }
    }
}
