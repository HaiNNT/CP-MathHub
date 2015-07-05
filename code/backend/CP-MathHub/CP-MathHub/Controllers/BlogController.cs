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
                ViewBag.System = Constant.String.BlogSystem;
                blogHomeVM.Articles = articlePreviewVMs;
                blogHomeVM.HotArticles = articleHotPreviewVMs;
                return View("Views/BlogHomeView", blogHomeVM);
            }
            else
            {
                return PartialView("Partials/_ArticleGridPartialView", articlePreviewVMs);
            }
        }

        //Get: Blog/MyBlog
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
                ViewBag.System = Constant.String.BlogSystem;
                myBlogVM.Articles = articlePreviewVMs;
                return View("Views/MyBlogView", myBlogVM);
            }
            else
            {
                return PartialView("Partials/_ArticleListPartialView", articlePreviewVMs);
            }
        }

        //Get: Blog/UserBlog
        [HttpGet]
        public ActionResult UserBlog(int userId, string tab = Constant.Blog.String.MyArticleTab
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
                ViewBag.System = Constant.String.BlogSystem;
                myBlogVM.Articles = articlePreviewVMs;
                return View("Views/MyBlogView", myBlogVM);
            }
            else
            {
                return PartialView("Partials/_ArticleListPartialView", articlePreviewVMs);
            }
        }

        //Get: Blog/Search
        [HttpGet]
        public ActionResult Search(string searchString, int page = 0)
        {
            int skip = page * Constant.Blog.Integer.PagingDefaultTake;
            List<Article> articles = bService.SearchArticle(skip, searchString);
            ICollection<ArticlePreviewViewModel> articlePreviewVMs =
                    articles.Select(Mapper.Map<Article, ArticlePreviewViewModel>) // Using Mapper with Collection
                    .ToList();

            foreach (ArticlePreviewViewModel q in articlePreviewVMs)
            {
                q.UserInfo.CreateMainPostDate = q.CreatedDate;
            }
            if (page == 0)
            {
                BlogHomeViewModel blogHomeVM = new BlogHomeViewModel();
                blogHomeVM.Name = "Có " + bService.CountSearchResult(searchString)
                                        + " Kết Quả Tìm Kiếm Cho \"" + searchString + "\"";
                ViewBag.Tab = Constant.Blog.String.HomeSearchTab;
                ViewBag.System = Constant.String.BlogSystem;
                ViewBag.TabParam = searchString;
                blogHomeVM.Articles = articlePreviewVMs;
                return View("Views/BlogHomeView", blogHomeVM);
            }
            else
            {
                return PartialView("Partials/_ArticleGridPartialView", articlePreviewVMs);
            }
        }

        public ActionResult Tag(string tag = "", int page = 0)
        {
            int skip = page * Constant.Blog.Integer.PagingDefaultTake;
            //Tag tagEntity = cService.GetTag(tag);
            List<Article> articles = bService.GetArticles(tag, skip);
            ICollection<ArticlePreviewViewModel> articlePreviewVMs =
                    articles.Select(Mapper.Map<Article, ArticlePreviewViewModel>) // Using Mapper with Collection
                    .ToList();
            foreach (ArticlePreviewViewModel q in articlePreviewVMs)
            {
                q.UserInfo.CreateMainPostDate = q.CreatedDate;
            }

            if (page == 0)
            {
                BlogHomeViewModel blogHomeVM = new BlogHomeViewModel();
                blogHomeVM.Name = "Câu hỏi có thẻ \"" + tag + "\"";
                ViewBag.Tab = Constant.Blog.String.HomeTagTab;
                ViewBag.System = Constant.String.BlogSystem;
                ViewBag.TabParam = tag;
                blogHomeVM.Articles = articlePreviewVMs;
                return View("Views/BlogHomeView", blogHomeVM);
            }
            else
            {
                return PartialView("Partials/_ArticleGridPartialView", articlePreviewVMs);
            }
        }

        //Get: Blog/Detail
        [HttpGet]
        public ActionResult Detail(int id)
        {
            ArticleDetailViewModel articleDetailVM = new ArticleDetailViewModel();
            Article article = bService.GetArticle(id);
            bService.IncludeUserForComments(article.Comments.ToList());
            bService.IncludeReplyForComments(article.Comments.ToList());

            articleDetailVM = Mapper.Map<Article, ArticleDetailViewModel>(article);
            //questionDetailVM.CommentVMs = question.Comments.Select(Mapper.Map<Comment, CommentViewModel>)
            //        .ToList();


            ViewBag.System = Constant.String.BlogSystem;

            return View("Views/BlogDetailView", articleDetailVM);
        }

        //Get: Blog/Create
        [HttpGet]
        public ActionResult Create()
        {
            ArticleCreateViewModel model = new ArticleCreateViewModel();
            model.Privacy = MainPostPrivacyEnum.Everyone;
            ViewBag.System = Constant.String.BlogSystem;
            return View("Views/BlogCreateView", model);
        }

        //Post: Blog/Create
        [HttpPost, ValidateInput(false)]
        public ActionResult Create(ArticleCreateViewModel model)
        {
            Article article = new Article();
            article = Mapper.Map<ArticleCreateViewModel, Article>(model);
            article.UserId = cService.GetLoginUser().Id;
            article.Tags = cService.GetTags(model.TagIds);

            bService.InsertArticle(article);
            //Console.WriteLine(questionVM.Tags[0]);
            if (article.Id != 0)
            {
                return RedirectToAction("MyBlog");
            }
            else
            {
                return View("Views/Error");
            }
        }

        //Post: Blog/Bookmark
        [HttpPost]
        public bool Bookmark(int id)
        {
            User user = cService.GetLoginUser();
            return cService.Bookmark(id, user);
        }

        //Post: Blog/PostComment
        [HttpPost]
        public ActionResult PostComment(int postId, string content, string type = "comment")
        {
            Comment comment = new Comment();
            comment.Content = content;
            comment.UserId = cService.GetLoginUser().Id;
            comment.CreatedDate = DateTime.Now;
            comment.LastEditedDate = comment.CreatedDate;
            comment.PostId = postId;

            cService.CommentPost(comment);
            List<Comment> comments = cService.GetComments(postId);
            ICollection<CommentViewModel> commentsVM;
            switch (type)
            {
                case "comment":
                    bService.IncludeUserForComments(comments);
                    bService.IncludeReplyForComments(comments);
                    commentsVM = comments.Select(Mapper.Map<Comment, CommentViewModel>).ToList();
                    return PartialView("../CommonWidget/_CommentListPartialView", commentsVM);
                case "reply":
                    bService.IncludeUserForComments(comments);
                    commentsVM = comments.Select(Mapper.Map<Comment, CommentViewModel>).ToList();
                    return PartialView("../CommonWidget/_ReplyListPartialView", commentsVM);
                default:
                    bService.IncludeUserForComments(comments);
                    bService.IncludeReplyForComments(comments);
                    commentsVM = comments.Select(Mapper.Map<Comment, CommentViewModel>).ToList();
                    return PartialView("../CommonWidget/_CommentListPartialView", commentsVM);
            }
        }

        //Post: Blog/Like
        [HttpPost]
        public bool Like(int id)
        {
            User user = cService.GetLoginUser();
            return cService.Like(id, user.Id);
        }
    }
}