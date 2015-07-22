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
        private IUnitOfWork dal;
        private ICommonService cService;
        public BlogService(CPMathHubModelContainer context)
        {
            dal = new MathHubUoW(context);
            cService = new CommonService(context);
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
        public List<Article> GetArticles(string tab, int skip, int userId = 0)
        {
            User user = new User();
            if (userId != 0)
            {
                user = cService.GetUser(userId);
            }
            List<Article> list = new List<Article>();
            switch (tab)
            {
                case Constant.Blog.String.HomeHomeTab:
                    list = dal.Repository<Article>()
                                .Get(null,
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.HomeSubcribeTab:
                    list = dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.SubcribedArticle(user),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.HomeFriendTab:
                    list = dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.FriendArticle(user),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.HomeBookmarkTab:
                    list = dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.BookmarkArticle(user),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.HomeHotTab:
                    list = dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.HotArticle(),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.HomeFeatureTab:
                    list = dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.FeatureArticle(),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.HomeRecomendedTab:
                    list = dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.RecomendedArticle(user),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.MyArticleTab:
                    list = dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.MyArticle(user),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                default:
                    list = dal.Repository<Article>()
                                .Get(null,
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
            }
            return list;
        }
        public List<Article> GetArticles(int userId, string tab, int skip)
        {
            User user = cService.GetUser(userId);
            List<Article> list = new List<Article>();
            switch (tab)
            {
                case Constant.Blog.String.UserBookmarkTab:
                    list = dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.BookmarkArticle(user),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                case Constant.Blog.String.UserArticleTab:
                    list = dal.Repository<Article>()
                                .Get(
                                    ExpressionHelper.BlogHelper.MyArticle(user),
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "Author,BookmarkUsers,Sharers,Tags,Reports,Comments",
                                    skip
                                ).ToList();
                    break;
                default:
                    list = dal.Repository<Article>()
                               .Get(
                                   ExpressionHelper.BlogHelper.MyArticle(user),
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
            return dal.Repository<Article>() //Get Question Repository
                .Get(
                    (a => a.UserId == authorId), //Filter Question by Author
                    (p => p.OrderBy(s => s.CreatedDate)), //Order Question by CreatedDate
                    "Author,BookmarkUsers,Sharers,Tags,Reports",
                    skip
                ).ToList();
        }
        public List<Article> GetRelatedArticles(MainPost mainPost, int skip = 0)
        {
            List<Article> result = new List<Article>();
            List<List<Article>> biglist = new List<List<Article>>();
            foreach (Tag t in mainPost.Tags)
            {
                biglist.Add(dal.Repository<Article>()
                    .Get(
                        (a => a.Tags.Where(c => c.Id == t.Id).Count() > 0),
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

        public Article GetArticle(int id)
        {
            Article article = dal.Repository<Article>().GetById(id, "Author,BookmarkUsers,Sharers,Tags,Reports,Comments,Votes");
            article.Author = cService.GetUser(article.UserId);
            return article;
        }
        public void InsertArticle(Article article)
        {
            dal.Repository<Article>().Insert(article);
            dal.Save();
        }
        public List<Article> SearchArticle(int skip, string searchString)
        {
            List<Article> list = new List<Article>();
            if (searchString != null)
            {
                IEnumerable<Article> ienum = dal.Repository<Article>()
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
            return dal.Repository<Article>().Table.Count(m => m.Title.ToLower().Contains(searchString.ToLower()));
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
                comment.Author = dal.Repository<User>().Table.FirstOrDefault(m => m.Id == comment.UserId);
            }
        }
        public void UpdateArticle(Article article)
        {
            dal.Repository<Article>().Update(article);
            dal.Save();
        }
        public void IncreaseViewArticle(Article article)
        {
            ++article.View;
            UpdateArticle(article);
        }
    }
}
