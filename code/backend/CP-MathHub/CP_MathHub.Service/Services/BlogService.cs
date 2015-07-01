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

        public void InsertArticle(Article article){
            dal.Repository<Article>().Insert(article);
            dal.Save();
        }
    }
}
