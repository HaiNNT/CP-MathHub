using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CP_MathHub.Framework.Controllers;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Service.Services;
using CP_MathHub.Service.Helpers;
using CP_MathHub.Models.Blog;
using CP_MathHub.Models.Common;
using CP_MathHub.Entity;
using AutoMapper;

namespace CP_MathHub.Controllers
{
    public class BlogController : BaseController
    {
        private IBlogService bService;
        private ICommonService cService;
        private CPMathHubModelContainer context;
        public BlogController()
        {
            context = new CPMathHubModelContainer();
            bService = new BlogService(context);
            cService = new CommonService(context);
        }
        // GET: Blog
        public ActionResult Index(string tab = Constant.Blog.String.HomeDefaultTab
                                    , int page = 0, string view = Constant.Blog.String.GridView)
        {
            int skip = page * Constant.Blog.Integer.PagingDefaultTake;
            List<Article> articles = bService.GetArticles(tab, skip);


            ICollection<ArticlePreviewViewModel> articlePreviewVMs =
                    articles.Select(Mapper.Map<Article, ArticlePreviewViewModel>) // Using Mapper with Collection
                    .ToList();

            foreach (ArticlePreviewViewModel q in articlePreviewVMs)
            {
                q.UserInfo.CreateMainPostDate = q.CreatedDate;
            }

            if (page == 0)
            {
                List<Article> hotArticles = bService.GetArticles(Constant.Blog.String.HomeHotTab, skip);
                ICollection<ArticlePreviewViewModel> articleHotPreviewVMs =
                        articles.Select(Mapper.Map<Article, ArticlePreviewViewModel>) // Using Mapper with Collection
                        .ToList();
                foreach (ArticlePreviewViewModel q in articleHotPreviewVMs)
                {
                    q.UserInfo.CreateMainPostDate = q.CreatedDate;
                }
                BlogHomeViewModel blogHomeVM = new BlogHomeViewModel();
                ViewBag.Tab = tab;
                ViewBag.System = "blog";
                blogHomeVM.Articles = articlePreviewVMs;
                blogHomeVM.HotArticles = articleHotPreviewVMs;
                return View("Views/BlogHomeView", blogHomeVM);
            }
            else
            {
                return PartialView("Partials/_ArticleGridPartialView", articlePreviewVMs);
            }
        }

        //Get: MyBlog
        [HttpGet]
        public ActionResult MyBlog(string tab = Constant.Blog.String.MyArticleTab
                                    , int page = 0, string view = Constant.Blog.String.ListView)
        {
            int skip = page * Constant.Blog.Integer.PagingDefaultTake;
            List<Article> articles = bService.GetArticles(tab, skip);


            ICollection<ArticlePreviewViewModel> articlePreviewVMs =
                    articles.Select(Mapper.Map<Article, ArticlePreviewViewModel>) // Using Mapper with Collection
                    .ToList();

            foreach (ArticlePreviewViewModel q in articlePreviewVMs)
            {
                q.UserInfo.CreateMainPostDate = q.CreatedDate;
            }

            if (page == 0)
            {
                MyBlogViewModel myBlogVM = new MyBlogViewModel();
                ViewBag.Tab = tab;
                ViewBag.System = "blog";
                myBlogVM.Articles = articlePreviewVMs;
                return View("Views/MyBlogView", myBlogVM);
            }
            else
            {
                return PartialView("Partials/_ArticleListPartialView", articlePreviewVMs);
            }
        }
    }
}