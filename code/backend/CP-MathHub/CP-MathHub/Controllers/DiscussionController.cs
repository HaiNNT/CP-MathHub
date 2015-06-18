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
using CP_MathHub.Models.Discussion;
using CP_MathHub.Entity;
using AutoMapper;

namespace CP_MathHub.Controllers
{
    public class DiscussionController : BaseController
    {
        private IDiscussionService dService;
        public DiscussionController()
        {
            dService = new DiscussionService();
        }
        // GET: Discussion
        [HttpGet]
        public ActionResult Index(string tab = Constant.Discussion.String.HomeDefaultTab)
        {
            DiscussionHomeViewModel discussionHomeVM = new DiscussionHomeViewModel();
            List<Discussion> discussions = dService.GetDiscussions(tab);

            ICollection<DiscussionPreviewViewModel> problemVms =
                discussions.Select(Mapper.Map<Discussion, DiscussionPreviewViewModel>) // Using Mapper with Collection
                .ToList();

            discussionHomeVM.Items = problemVms;

            return View("Views/DiscussionHomeView", discussionHomeVM);
        }
        //Get: Search
        [HttpGet]
        public ActionResult Search(string searchString)
        {
            DiscussionHomeViewModel discussionHomeVM = new DiscussionHomeViewModel();
            List<Discussion> discussions = dService.SearchDiscussions(searchString);
            ICollection<DiscussionPreviewViewModel> problemVms =
                discussions.Select(Mapper.Map<Discussion, DiscussionPreviewViewModel>) // Using Mapper with Collection
                .ToList();
            discussionHomeVM.Items = problemVms;
            return View("Views/DiscussionHomeView", discussionHomeVM);
        }
        //Get: Detail
        [HttpGet]
        public ActionResult Detail(int id)
        {
            DiscussionDetailViewModel discussionDetailVM = new DiscussionDetailViewModel();
            Discussion discussion = dService.GetDiscussion(id);
            discussionDetailVM = Mapper.Map<Discussion, DiscussionDetailViewModel>(discussion);
            return View("Views/DiscussionDetailView",discussionDetailVM);
        }
        //Get: Insert
        [HttpGet]
        public ActionResult Create()
        {
            return View("Views/DiscussionCreateView"); 
        }
        //Post: Insert
        [HttpPost]
        public ActionResult Create(DiscussionCreateViewModel discussionCreateVM)
        {
            Discussion discussion = new Discussion();
            discussion = Mapper.Map<DiscussionCreateViewModel, Discussion>(discussionCreateVM);
            dService.InsertDiscussion(discussion);
            if (discussion.Id != 0)
            {
                return RedirectToAction("Index");
            }
            else
            {
                return View("Views/Error");
            }            
        }
        //Get: Edit
        [HttpGet]
        public ActionResult Edit(int id)
        {
            DiscussionEditViewModel discussionEditVM = new DiscussionEditViewModel();
            Discussion discussion = dService.GetDiscussion(id);
            discussionEditVM = Mapper.Map<Discussion, DiscussionEditViewModel>(discussion);
            return View("Views/DiscussionEditView", discussionEditVM);
        }
        //Post: Edit
        [HttpPost]
        public ActionResult Edit(DiscussionEditViewModel discussionEditVM)
        {
            Discussion discussion = dService.GetDiscussion(discussionEditVM.Id);

            EditedLog editedlog = new EditedLog();
            editedlog.Content = discussion.Content;
            editedlog.CreatedDate = DateTime.Now;
            editedlog.PostId = discussion.Id;
            editedlog.UserId =discussion.UserId;

            discussion.Title = discussionEditVM.Title;
            discussion.Content = discussionEditVM.Content;
            discussion.LastEditedDate = editedlog.CreatedDate;
            discussion.EditedContents.Add(editedlog);

            dService.EditDiscussion(discussion);

            return RedirectToAction("Detail", new { id = discussion.Id });
        }
        //Delete
        public ActionResult Delete(int id)
        {
            Discussion discussion = dService.GetDiscussion(id);
            dService.DeleteDiscussion(discussion);
            return RedirectToAction("Index");
        }
    }
}