using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using CP_MathHub.Framework.Controllers;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Service.Services;
using CP_MathHub.Service.Helpers;
using CP_MathHub.Models.Blog;
using CP_MathHub.Models.Common;
using CP_MathHub.Entity;
using AutoMapper;
using System.Web.Routing;

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
        }
        protected override void Initialize(RequestContext requestContext)
        {
            base.Initialize(requestContext);

            if (requestContext.HttpContext.User.Identity.IsAuthenticated)
            {
                bService = new BlogService(context, _currentUserId);
                cService = new CommonService(context);
            }
            else
            {
                bService = new BlogService(context);
                cService = new CommonService(context);
            }

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

            for (int i = 0; i < articlePreviewVMs.Count; i++)
            {
                articlePreviewVMs.ElementAt(i).UserInfo.CreateMainPostDate = articlePreviewVMs.ElementAt(i).PublicDate.Value;
                if (Request.IsAuthenticated)
                    articlePreviewVMs.ElementAt(i).Bookmarked = articles.ElementAt(i).BookmarkUsers
                                                .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
            }

            if (page == 0)
            {
                List<Article> hotArticles = bService.GetArticles(Constant.Blog.String.HomeHotTab, skip);
                ICollection<ArticlePreviewViewModel> articleHotPreviewVMs =
                        hotArticles.Select(Mapper.Map<Article, ArticlePreviewViewModel>) // Using Mapper with Collection
                        .ToList();
                for (int i = 0; i < articlePreviewVMs.Count; i++)
                {
                    articlePreviewVMs.ElementAt(i).UserInfo.CreateMainPostDate = articlePreviewVMs.ElementAt(i).PublicDate.Value;
                    if (Request.IsAuthenticated)
                        articlePreviewVMs.ElementAt(i).Bookmarked = 
                            articlePreviewVMs.ElementAt(i).UserId != User.Identity.GetUserId<int>() 
                            && articles.ElementAt(i).BookmarkUsers
                                                    .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
                }
                BlogHomeViewModel blogHomeVM = new BlogHomeViewModel();
                ViewBag.Tab = tab;
                ViewBag.System = Constant.String.BlogSystem;
                blogHomeVM.Articles = articlePreviewVMs;
                blogHomeVM.HotArticles = articleHotPreviewVMs;
                blogHomeVM.View = view;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires.AddHours(1);
                Response.Cookies.Add(cookie);
                return View("Views/BlogHomeView", blogHomeVM);
            }
            else
            {
                if (view == Constant.Blog.String.GridView)
                    return PartialView("Partials/_ArticleGridPartialView", articlePreviewVMs);
                else
                    return PartialView("Partials/_ArticleListPartialView", articlePreviewVMs);
            }
        }

        //Get: Blog/MyBlog
        [HttpGet]
        [Authorize]
        public ActionResult MyBlog(string tab = Constant.Blog.String.MyArticleTab
                                    , int page = 0, string view = Constant.Blog.String.ListView)
        {
            int skip = page * Constant.Blog.Integer.PagingDefaultTake;
            List<Article> articles = bService.GetArticles(tab, skip, User.Identity.GetUserId<int>());


            ICollection<ArticlePreviewViewModel> articlePreviewVMs =
                    articles.Select(Mapper.Map<Article, ArticlePreviewViewModel>) // Using Mapper with Collection
                    .ToList();

            for (int i = 0; i < articlePreviewVMs.Count; i++)
            {
                articlePreviewVMs.ElementAt(i).UserInfo.CreateMainPostDate = articlePreviewVMs.ElementAt(i).PublicDate.Value;
                if (Request.IsAuthenticated)
                    articlePreviewVMs.ElementAt(i).Bookmarked =
                            articlePreviewVMs.ElementAt(i).UserId != User.Identity.GetUserId<int>()
                            && articles.ElementAt(i).BookmarkUsers
                                                    .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
            }

            if (page == 0)
            {
                MyBlogViewModel myBlogVM = new MyBlogViewModel();
                ViewBag.Tab = tab;
                ViewBag.System = Constant.String.BlogSystem;
                myBlogVM.Articles = articlePreviewVMs;
                myBlogVM.View = view;
                //myBlogVM.Url = Request.Url.PathAndQuery;
                return View("Views/MyBlogView", myBlogVM);
            }
            else
            {
                if (view == Constant.Blog.String.ListView)
                    return PartialView("Partials/_ArticleListPartialView", articlePreviewVMs);
                else
                    return PartialView("Partials/_ArticleGridPartialView", articlePreviewVMs);
            }
        }
        //Get: Blog/HotArticle
        public List<Article> GetHotArticle(string tab = Constant.Blog.String.HomeHotTab
                                   , int page = 0)
        {
            int skip = page * Constant.Blog.Integer.PagingDefaultTake;
            List<Article> articles = bService.GetArticles(tab, skip);
            return articles;
        }
        //Get: Blog/RelatedArticle
        public List<Article> GetRelatedArticle(int id, int page = 0)
        {
            int skip = page * Constant.Blog.Integer.PagingDefaultTake;
            List<Article> articles = bService.GetRelatedArticles(bService.GetArticle(id), skip);
            return articles;
        }
        //Get: Blog/UserBlog
        [HttpGet]
        public ActionResult UserBlog(int userId, string tab = Constant.Blog.String.UserArticleTab
                                    , int page = 0, string view = Constant.Blog.String.ListView)
        {
            int skip = page * Constant.Blog.Integer.PagingDefaultTake;
            List<Article> articles = bService.GetArticles(userId, tab, skip);


            ICollection<ArticlePreviewViewModel> articlePreviewVMs =
                    articles.Select(Mapper.Map<Article, ArticlePreviewViewModel>) // Using Mapper with Collection
                    .ToList();

            for (int i = 0; i < articlePreviewVMs.Count; i++)
            {
                articlePreviewVMs.ElementAt(i).UserInfo.CreateMainPostDate = articlePreviewVMs.ElementAt(i).PublicDate.Value;
                if (Request.IsAuthenticated)
                    articlePreviewVMs.ElementAt(i).Bookmarked =
                            articlePreviewVMs.ElementAt(i).UserId != User.Identity.GetUserId<int>()
                            && articles.ElementAt(i).BookmarkUsers
                                                    .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
            }

            if (page == 0)
            {
                MyBlogViewModel myBlogVM = new MyBlogViewModel();
                ViewBag.Tab = tab;
                ViewBag.System = Constant.String.BlogSystem;
                myBlogVM.Articles = articlePreviewVMs;
                myBlogVM.View = view;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires.AddHours(1);
                Response.Cookies.Add(cookie);
                return View("Views/MyBlogView", myBlogVM);
            }
            else
            {
                if (view == Constant.Blog.String.ListView)
                    return PartialView("Partials/_ArticleListPartialView", articlePreviewVMs);
                else
                    return PartialView("Partials/_ArticleGridPartialView", articlePreviewVMs);
            }
        }

        //Get: Blog/Search
        [HttpGet]
        public ActionResult Search(string searchString, int page = 0, string view = Constant.Blog.String.ListView)
        {
            int skip = page * Constant.Blog.Integer.PagingDefaultTake;
            List<Article> articles = bService.SearchArticle(skip, searchString);
            ICollection<ArticlePreviewViewModel> articlePreviewVMs =
                    articles.Select(Mapper.Map<Article, ArticlePreviewViewModel>) // Using Mapper with Collection
                    .ToList();

            for (int i = 0; i < articlePreviewVMs.Count; i++)
            {
                articlePreviewVMs.ElementAt(i).UserInfo.CreateMainPostDate = articlePreviewVMs.ElementAt(i).PublicDate.Value;
                if (Request.IsAuthenticated)
                    articlePreviewVMs.ElementAt(i).Bookmarked =
                            articlePreviewVMs.ElementAt(i).UserId != User.Identity.GetUserId<int>()
                            && articles.ElementAt(i).BookmarkUsers
                                                    .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
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
                blogHomeVM.View = view;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires.AddHours(1);
                Response.Cookies.Add(cookie);
                return View("Views/BlogHomeView", blogHomeVM);
            }
            else
            {
                if (view == Constant.Blog.String.GridView)
                    return PartialView("Partials/_ArticleGridPartialView", articlePreviewVMs);
                else
                    return PartialView("Partials/_ArticleListPartialView", articlePreviewVMs);
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
            for (int i = 0; i < articlePreviewVMs.Count; i++)
            {
                articlePreviewVMs.ElementAt(i).UserInfo.CreateMainPostDate = articlePreviewVMs.ElementAt(i).PublicDate.Value;
                if (Request.IsAuthenticated)
                    articlePreviewVMs.ElementAt(i).Bookmarked =
                            articlePreviewVMs.ElementAt(i).UserId != User.Identity.GetUserId<int>()
                            && articles.ElementAt(i).BookmarkUsers
                                                    .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
            }

            if (page == 0)
            {
                BlogHomeViewModel blogHomeVM = new BlogHomeViewModel();
                blogHomeVM.Name = "Câu hỏi có thẻ \"" + tag + "\"";
                ViewBag.Tab = Constant.Blog.String.HomeTagTab;
                ViewBag.System = Constant.String.BlogSystem;
                ViewBag.TabParam = tag;
                blogHomeVM.Articles = articlePreviewVMs;
                var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
                cookie.Expires.AddHours(1);
                Response.Cookies.Add(cookie);
                return View("Views/BlogHomeView", blogHomeVM);
            }
            else
            {
                return PartialView("Partials/_ArticleGridPartialView", articlePreviewVMs);
            }
        }

        //Post: Blog/CreateTags
        [HttpPost]
        [Authorize]
        [BannedUser]
        public ActionResult CreateTag(string name)
        {
            Tag tag = new Tag();
            tag.Name = name;
            cService.InsertTag(tag, User.Identity.GetUserId<int>());
            ViewBag.System = Constant.String.BlogSystem;
            return PartialView("../CommonWidget/_TagPartialView", tag);
        }

        //Get: Blog/Detail
        [HttpGet]
        public ActionResult Detail(int id)
        {
            ArticleDetailViewModel articleDetailVM = new ArticleDetailViewModel();
            Article article = bService.GetDetailArticle(id);
            bService.IncludeUserForComments(article.Comments.ToList());
            bService.IncludeReplyForComments(article.Comments.ToList());

            articleDetailVM = Mapper.Map<Article, ArticleDetailViewModel>(article);
            foreach (CommentViewModel m in articleDetailVM.Comments)
            {
                m.Liked = m.Votes.Where(v => v.UserId == User.Identity.GetUserId<int>()).Count() > 0;
            }
            articleDetailVM.Bookmarked = article.BookmarkUsers
                                                .Where(u => u.Id == User.Identity.GetUserId<int>()).Count() > 0;
            articleDetailVM.Liked = article.Votes.Where(v => v.UserId == User.Identity.GetUserId<int>()).Count() > 0;
            bService.IncreaseViewArticle(article);
            ViewBag.System = Constant.String.BlogSystem;
            var cookie = new HttpCookie("returnUrl", Request.Url.AbsolutePath + Request.Url.Query);
            cookie.Expires.AddHours(1);
            Response.Cookies.Add(cookie);
            return View("Views/BlogDetailView", articleDetailVM);
        }

        //Get: Blog/CreateCreate
        [HttpGet]
        [Authorize]
        [BannedUser]
        public ActionResult Create()
        {
            ArticleCreateViewModel model = new ArticleCreateViewModel();
            model.Privacy = MainPostPrivacyEnum.Everyone;
            ViewBag.System = Constant.String.BlogSystem;
            return View("Views/BlogCreateView", model);
        }

        //Post: Blog/Create
        [HttpPost, ValidateInput(false)]
        [Authorize]
        [BannedUser]
        public ActionResult Create(ArticleCreateViewModel model)
        {
            Article article = new Article();
            article = Mapper.Map<ArticleCreateViewModel, Article>(model);
            article.UserId = User.Identity.GetUserId<int>();
            article.Tags = cService.GetTags(model.TagIds);
            article.Invitations = cService.GetInvitations(model.InviteIds, User.Identity.GetUserId<int>());
            article.Status = PostStatusEnum.Active;

            bService.InsertArticle(article);

            EditedLog editedlog = new EditedLog();
            editedlog.Content = article.Content;
            editedlog.CreatedDate = article.LastEditedDate;
            editedlog.PostId = article.Id;
            editedlog.UserId = article.UserId;
            editedlog.Title = article.Title;
            article.EditedContents.Add(editedlog);

            bService.UpdateArticle(article);
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
        //Get: Blog/Edit
        [HttpGet]
        [Authorize]
        public ActionResult Edit(int id)
        {
            ArticleEditViewModel articleEditVM = new ArticleEditViewModel();
            Article article = bService.GetArticle(id, User.Identity.GetUserId<int>());
            articleEditVM = Mapper.Map<Article, ArticleEditViewModel>(article);
            ViewBag.System = Constant.String.BlogSystem;
            return View("Views/BlogEditView", articleEditVM);
        }
        //Post: Blog/Edit
        [Authorize]
        [HttpPost, ValidateInput(false)]
        public ActionResult Edit(ArticleEditViewModel articleEditVM)
        {
            Article article = bService.GetArticle(articleEditVM.Id);
            article.Title = articleEditVM.Title;
            article.Content = articleEditVM.Content;
            article.Privacy = articleEditVM.Privacy;
            if (article.UserId == User.Identity.GetUserId<int>())
            {
                article.PublicDate = articleEditVM.PublicDate.Value;
            }
            if (article.PublicDate <= DateTime.Now)
            {
                EditedLog editedlog = new EditedLog();
                editedlog.Content = articleEditVM.Content;
                editedlog.CreatedDate = DateTime.Now;
                editedlog.PostId = article.Id;
                editedlog.Title = articleEditVM.Title;
                editedlog.UserId = User.Identity.GetUserId<int>();
                article.LastEditedDate = editedlog.CreatedDate;
                article.EditedContents.Add(editedlog);
            }
            bService.UpdateArticle(article);

            return RedirectToAction("Detail", new { id = article.Id });
        }
        //Post: Blog/Bookmark
        [HttpPost]
        [Authorize]
        public bool Bookmark(int id)
        {
            User user = cService.GetUser(User.Identity.GetUserId<int>());
            return cService.Bookmark(id, user);
        }

        //Post: Blog/PostComment
        [HttpPost]
        [Authorize]
        [BannedUser]
        public ActionResult PostComment(int postId, string content, string type = "comment")
        {
            PostStatusEnum status = PostStatusEnum.Active;
            if (type == "comment")
            {
                status = bService.GetArticle(postId).Status.Value;
            }
            else
            {
                status = cService.GetComment(postId, "Post").Post.Status.Value;
            }

            if (status != PostStatusEnum.Closed)
            {
                Comment comment = new Comment();
                comment.Content = content;
                comment.UserId = User.Identity.GetUserId<int>();
                comment.CreatedDate = DateTime.Now;
                comment.LastEditedDate = comment.CreatedDate;
                comment.PostId = postId;
                comment.Status = PostStatusEnum.Active;
                comment.VoteDown = 0;
                comment.VoteUp = 0;

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
            return null;
        }

        //Post: Blog/EditComment
        [HttpPost]
        [Authorize]
        public bool EditComment(int id, string content)
        {
            Comment comment = new Comment();
            comment.Id = id;
            comment.Content = content.Trim();
            comment = cService.UpdateComment(comment, User.Identity.GetUserId<int>());
            //CommentViewModel model = Mapper.Map<Comment, CommentViewModel>(comment);

            return true;
        }

        //Get: Blog/DisableComment
        [HttpGet]
        [Authorize]
        public ActionResult DisableComment(int id)
        {
            cService.DisableComment(id);
            return RedirectToAction("Detail", new {@id = id });
        }

        //Get: Blog/EnableComment
        [HttpGet]
        [Authorize]
        public ActionResult EnableComment(int id)
        {
            cService.EnableComment(id);
            return RedirectToAction("Detail", new { @id = id });
        }

        //Post: Blog/Like
        [HttpPost]
        [Authorize]
        public bool Like(int id)
        {
            User user = cService.GetUser(User.Identity.GetUserId<int>());
            return cService.Like(id, user.Id);
        }

        //Post: Blog/Report
        [HttpPost]
        [Authorize]
        public bool Report(int postId, string description, ReportTypeEnum reportName = ReportTypeEnum.Other)
        {
            Report report = new Report();
            report.Description = description;
            report.PostId = postId;
            report.ReportedDate = DateTime.Now;
            report.ReporterId = User.Identity.GetUserId<int>();
            report.Type = reportName;

            return cService.CreateReport(report);
        }

        //Post: Blog/EditedLog
        [HttpPost]
        public ActionResult EditedLog(int id, string type)
        {
            List<EditedLog> logs = new List<EditedLog>();
            logs = cService.GetEditedLog(id);
            ViewBag.Type = type;
            return PartialView("../CommonWidget/_EditedLogPartialView", logs);
        }
    }
}