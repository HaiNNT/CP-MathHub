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
    public class BlogService : IBlogService
    {
        private IUnitOfWork dal;
        private ICommonService cService;
        public BlogService(CPMathHubModelContainer context)
        {
            dal = new MathHubUoW(context);
            cService = new CommonService(context);
        }
        public List<Article> GetArticles(string tab, int skip)
        {
            User user = cService.GetLoginUser();
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
        public Article GetArticle(int id)
        {
            return dal.Repository<Article>().GetById(id, "Author,BookmarkUsers,Sharers,Tags,Reports,Comments,Votes");
        }
        public void InsertArticle(Article article){
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
