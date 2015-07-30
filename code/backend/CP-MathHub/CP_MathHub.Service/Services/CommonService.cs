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
        private int _loginUserId;
        private IUnitOfWork _dal;
        private AccountService _aService;
        public CommonService(CPMathHubModelContainer context, int userId = 0)
        {
            _loginUserId = userId;
            _dal = new MathHubUoW(context);
            _aService = new AccountService(context);

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
        public Tag GetTag(string name)
        {
            Tag tag = null;
            IQueryable<Tag> query = _dal.Repository<Tag>().Table
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
            Tag tag = _dal.Repository<Tag>()
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
            List<Tag> tags = _dal.Repository<Tag>().Get(
                    (t => t.Name.ToLower().Contains(name.ToLower())),
                    (t => t.OrderBy(m => m.Name))
                ).ToList();
            return tags;
        }
        public List<Tag> GetTags(string name, int skip)
        {
            List<Tag> tags = _dal.Repository<Tag>().Get(
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
                    list = _dal.Repository<Tag>()
                                .Get(
                                    ExpressionHelper.TagHelper.ContainName(name),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "MainPosts",
                                    skip,
                                    Constant.Question.Integer.TagPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.TagPopularTab:
                    list = _dal.Repository<Tag>()
                                .Get(
                                    ExpressionHelper.TagHelper.ContainName(name),
                                    (p => p.OrderByDescending(s => s.MainPosts.Count)),
                                    "MainPosts",
                                    skip,
                                    Constant.Question.Integer.TagPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.TagNameTab:
                    list = _dal.Repository<Tag>()
                                .Get(
                                    ExpressionHelper.TagHelper.ContainName(name),
                                    (p => p.OrderBy(s => s.Name)),
                                    "MainPosts",
                                    skip,
                                    Constant.Question.Integer.TagPagingDefaultTake
                                ).ToList();
                    break;
                default:
                    list = _dal.Repository<Tag>()
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
            list = _dal.Repository<Tag>()
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
                    list = _dal.Repository<Tag>()
                                .Get(null,
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "MainPosts",
                                    skip,
                                    Constant.Question.Integer.TagPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.TagPopularTab:
                    list = _dal.Repository<Tag>()
                                .Get(
                                    null,
                                    (p => p.OrderByDescending(s => s.MainPosts.Count)),
                                    "MainPosts",
                                    skip,
                                    Constant.Question.Integer.TagPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.TagNameTab:
                    list = _dal.Repository<Tag>()
                                .Get(
                                    null,
                                    (p => p.OrderBy(s => s.Name)),
                                    "MainPosts",
                                    skip,
                                    Constant.Question.Integer.TagPagingDefaultTake
                                ).ToList();
                    break;
                default:
                    list = _dal.Repository<Tag>()
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
            _dal.Repository<Tag>().Insert(tag);
            _dal.Save();
            return true;
        }
        public List<Tag> SearchTags(string searchString, int skip)
        {
            List<Tag> list = new List<Tag>();
            if (searchString != null)
            {
                IEnumerable<Tag> ienum = _dal.Repository<Tag>()
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
            MainPost post = _dal.Repository<MainPost>().GetById(id);
            if (post.BookmarkUsers.Contains(user))
            {
                post.BookmarkUsers.Remove(user);
            }
            else
            {
                post.BookmarkUsers.Add(user);
            }
            _dal.Repository<MainPost>().Update(post);
            _dal.Save();
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
                    _dal.Repository<Vote>().Insert(vote);

                    Post post = _dal.Repository<Post>().GetById(id);
                    ++post.VoteUp;
                    _dal.Repository<Post>().Update(post);
                    _dal.Save();
                    return true;
                }
                else
                {
                    Post post = _dal.Repository<Post>().GetById(id);
                    post.VoteUp = post.VoteUp > 0 ? --post.VoteUp : 0;
                    _dal.Repository<Vote>().Delete(vote);
                    _dal.Save();
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
            return _aService.GetLoginUser();
        }
        public User GetUser(int userId, string include = "")
        {
            return _aService.GetUser(userId, include);
        }
        public List<User> GetUsers(int skip, string tab)
        {
            List<User> list = new List<User>();
            switch (tab)
            {
                case Constant.Question.String.UserNewTab:
                    list = _dal.Repository<User>()
                                .Get(null,
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.UserReputationTab:
                    list = _dal.Repository<User>()
                                .Get(
                                    null,
                                    (p => p.OrderByDescending(s => s.Reputation)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.UserExpertTab:
                    list = _dal.Repository<User>()
                                .Get(
                                    ExpressionHelper.UserHelper.RoledUsers("Expert"),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.UserModTab:
                    list = _dal.Repository<User>()
                                .Get(
                                    ExpressionHelper.UserHelper.RoledUsers("Moderator"),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                default:
                    list = _dal.Repository<User>()
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
                    list = _dal.Repository<User>()
                                .Get(
                                    ExpressionHelper.UserHelper.ContainName(name),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.UserReputationTab:
                    list = _dal.Repository<User>()
                                .Get(
                                    ExpressionHelper.UserHelper.ContainName(name),
                                    (p => p.OrderByDescending(s => s.Reputation)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.UserExpertTab:
                    list = _dal.Repository<User>()
                                .Get(
                                    ExpressionHelper.UserHelper.MixRoleContainUser("Expert",name),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                case Constant.Question.String.UserModTab:
                    list = _dal.Repository<User>()
                                .Get(
                                     ExpressionHelper.UserHelper.MixRoleContainUser("Moderator", name),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "",
                                    skip,
                                    Constant.Question.Integer.UserPagingDefaultTake
                                ).ToList();
                    break;
                default:
                    list = _dal.Repository<User>()
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
        public List<User> GetUsers(string include = "")
        {
            return _dal.Repository<User>().Include(include).Table.ToList();
        }
        public List<Invitation> GetInvitations(List<int> userIds, int userId)
        {
            List<Invitation> invitations = new List<Invitation>();
            if (userIds != null)
            {
                foreach (int id in userIds)
                {
                    Invitation invitation = new Invitation();
                    invitation.InvitedDate = DateTime.Now;
                    invitation.InviteeId = id;
                    invitation.InviterId = userId;
                    invitations.Add(invitation);
                }
            }
            return invitations;
        }
        public void CommentPost(Comment comment)
        {
            _dal.Repository<Comment>().Insert(comment);
            EditedLog log = new EditedLog();
            log.PostId = comment.Id;
            log.UserId = comment.UserId;
            log.Content = comment.Content;
            log.CreatedDate = comment.CreatedDate;
            _dal.Repository<EditedLog>().Insert(log);
            _dal.Save();
        }
        public Comment UpdateComment(Comment c, int userId)
        {
            Comment comment = _dal.Repository<Comment>().GetById(c.Id);
            comment.Content = c.Content;
            comment.LastEditedDate = DateTime.Now;
            _dal.Repository<Comment>().Update(comment);
            EditedLog log = new EditedLog();
            log.PostId = comment.Id;
            log.UserId = comment.UserId;
            log.Content = comment.Content;
            log.CreatedDate = comment.LastEditedDate;
            _dal.Repository<EditedLog>().Insert(log);
            _dal.Save();
            return comment;
        }
        public void DisableComment(int postId)
        {
            MainPost post = _dal.Repository<MainPost>().GetById(postId);
            post.Status = PostStatusEnum.Closed;
            _dal.Repository<MainPost>().Update(post);
            _dal.Save();
        }
        public void EnableComment(int postId)
        {
            MainPost post = _dal.Repository<MainPost>().GetById(postId);
            post.Status = PostStatusEnum.Active;
            _dal.Repository<MainPost>().Update(post);
            _dal.Save();
        }
        public List<Comment> GetComments(int postId)
        {
            return _dal.Repository<Comment>().Table
                                            .Where(c => c.PostId == postId)
                                            .OrderBy(c => c.CreatedDate)
                                            .ToList();
        }
        public Comment GetComment(int id, string include = "")
        {
            return _dal.Repository<Comment>().Include(include).GetById(id);
        }
        public Vote GetVote(int postId, int userId)
        {
            return _dal.Repository<Vote>().Table.Where(v => v.PostId == postId && v.UserId == userId).FirstOrDefault();
        }
        public bool CreateReport(Report report)
        {
            Report r = GetReport(report.PostId, report.ReporterId);
            if (r == default(Report))
            {
                _dal.Repository<Report>().Insert(report);
                _dal.Save();
                return true;
            }
            else
            {
                return false;
            }

        }
        public Report GetReport(int? postId, int reporterId)
        {
            return _dal.Repository<Report>().Table.Where(v => v.PostId == postId && v.UserId == reporterId).FirstOrDefault();
        }
        public List<EditedLog> GetEditedLog(int postId)
        {
            List<EditedLog> logs = new List<EditedLog>();
            logs = _dal.Repository<EditedLog>().Get(
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
            return _dal.Repository<MainPost>().Include(include).GetById(mainPostId);
        }
        public Post GetPost(int postId, string include = "")
        {
            return _dal.Repository<Post>().Include(include).GetById(postId);
        }
        public List<User> SearchFriend(string name, int userId, int skip = 0, int take = 0)
        {
            return _aService.SearchFriend(name, userId, skip, take);
        }
    }
}
