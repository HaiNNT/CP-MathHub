using System;
using System.Collections.Generic;
using System.Linq;
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
    public class BlogService : IBlogService, IDisposable
    {
        private int _loginUserId;
        private IUnitOfWork _dal;
        private ICommonService _cService;
        public BlogService(CPMathHubModelContainer context, int userId = 0)
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
        public List<Article> GetArticles(string tab, int skip = 0, int userId = 0)
        {
            User user = new User();
            if (userId != 0)
            {
                user = _cService.GetUser(userId);
            }
            List<Article> list = new List<Article>();
            switch (tab)
            {
                case Constant.Blog.String.HomeHomeTab:
                    list = _dal.Repository<Article>()
                                .Get(ExpressionHelper.BlogHelper.NewestArticle(userId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.HomeSubcribeTab:
                    list = _dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.SubcribedArticle(userId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.HomeFriendTab:
                    list = _dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.FriendArticle(userId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.HomeBookmarkTab:
                    list = _dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.BookmarkArticle(userId, _loginUserId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.HomeHotTab:
                    list = _dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.HotArticle(userId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.HomeFeatureTab:
                    list = _dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.FeatureArticle(userId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.HomeRecomendedTab:
                    list = _dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.RecomendedArticle(userId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.MyArticleTab:
                    list = _dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.MyArticle(userId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.BookmarkArticle:
                    list = _dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.BookmarkArticle(_loginUserId, _loginUserId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip,
                                    0
                                ).ToList();
                    break;
                default:
                    list = _dal.Repository<Article>()
                                .Get(ExpressionHelper.BlogHelper.NewestArticle(userId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
            }
            return list;
        }
        public int CountBookmarkArticle()
        {
            return _dal.Repository<Article>().Table.Count(ExpressionHelper.BlogHelper.BookmarkArticle(_loginUserId, _loginUserId));
        }
        public List<Article> GetArticles(int userId, string tab, int skip)
        {
            //User user = _cService.GetUser(userId);
            List<Article> list = new List<Article>();
            switch (tab)
            {
                case Constant.Blog.String.UserBookmarkTab:
                    list = _dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.BookmarkArticle(userId, _loginUserId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.UserArticleTab:
                    list = _dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.UserArticle(userId, _loginUserId),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                default:
                    list = _dal.Repository<Article>()
                               .Get(
                                   ExpressionHelper.BlogHelper.UserArticle(userId, _loginUserId),
                                   (p => p.OrderByDescending(s => s.CreatedDate)),
                                   "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                   skip
                               ).ToList();
                    break;
            }
            return list;
        }
        public List<Article> GetArticles(int authorId, int skip = 0)
        {
            return _dal.Repository<Article>()
                .Get(
                    ExpressionHelper.BlogHelper.UserArticle(authorId, _loginUserId),
                    (p => p.OrderBy(s => s.CreatedDate)),
                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                    skip
                ).ToList();
        }
        public int CountUserArticle(int authorId)
        {
            int result = _dal.Repository<Article>().Table.Count(ExpressionHelper.BlogHelper.UserArticle(authorId, _loginUserId));
            return result;
        }

        public List<Article> GetRelatedArticles(MainPost mainPost, int skip = 0)
        {
            List<Article> result = new List<Article>();
            List<List<Article>> biglist = new List<List<Article>>();
            foreach (Tag t in mainPost.Tags)
            {
                biglist.Add(_dal.Repository<Article>()
                    .Get(
                        ExpressionHelper.BlogHelper.TagArticle(t.Id, _loginUserId),
                        null,
                        "",
                        0,
                        0
                    ).ToList());
            }

            foreach (List<Article> list in biglist)
            {
                foreach (Article a in list)
                {
                    if (!result.Contains(a))
                        result.Add(a);
                }
            }

            return result;
        }

        public Article GetArticle(int id, int userId = 0)
        {
            Article article = _dal.Repository<Article>().GetById(id, "Author,BookmarkUsers,Sharers,Tags,Reports,Comments,Votes");
            if (userId == 0 || article.UserId == userId || article.PublicDate <= DateTime.Now)
            {
                article.Author = _cService.GetUser(article.UserId);
                return article;
            }
            else
            {
                return default(Article);
            }
        }
        public Article GetDetailArticle(int id)
        {
            Article article = _dal.Repository<Article>()
                            .Include("Author,BookmarkUsers,Sharers,Tags,Reports,Votes").Table
                            .Where(ExpressionHelper.BlogHelper.DetailArticle(id, _loginUserId))
                            .FirstOrDefault();
            if (article != default(Article))
                article.Author = _cService.GetUser(article.UserId);
            return article;
        }
        public void InsertArticle(Article article)
        {
            _dal.Repository<Article>().Insert(article);
            _dal.Save();
        }
        public List<Article> SearchArticle(int skip, string searchString)
        {
            List<Article> list = new List<Article>();
            if (searchString != null)
            {
                IEnumerable<Article> ienum = _dal.Repository<Article>()
                               .Get(ExpressionHelper.BlogHelper.SearchArticle(searchString, _loginUserId),
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
            return _dal.Repository<Article>().Table.Count(ExpressionHelper.BlogHelper.SearchArticle(searchString, _loginUserId));
        }
        public void IncludeReplyForComments(List<Comment> comments)
        {
            foreach (Comment comment in comments)
            {
                IncludeUserForComments(comment.Comments.ToList());
            }
        }
        public void IncludeUserForComments(List<Comment> comments)
        {
            foreach (Comment comment in comments)
            {
                comment.Author = _dal.Repository<User>().Table.FirstOrDefault(m => m.Id == comment.UserId);
            }
        }
        public void UpdateArticle(Article article)
        {
            _dal.Repository<Article>().Update(article);
            _dal.Save();
        }
        public void IncreaseViewArticle(Article article)
        {
            ++article.View;
            UpdateArticle(article);
        }
    }
}
