using CP_MathHub.Core.Configuration;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Core.Interfaces.DAL;
using CP_MathHub.DAL;
using CP_MathHub.Service.Helpers;

namespace CP_MathHub.Service.Services
{
    public class DiscussionService : IDiscussionService
    {
         private IUnitOfWork dal;
        public DiscussionService(CPMathHubModelContainer context)
        {
            dal = new MathHubUoW(context);   
        }
        public List<Discussion> GetDiscussions(string homeTab, int skip = 0)
        {
            List<Discussion> list = new List<Discussion>();
            switch (homeTab)
            {
                case Constant.Discussion.String.HomeNewestTab:
                    list = dal.Repository<Discussion>() // Get Question Repository
                                .Get(null,
                                    (p => p.OrderByDescending(s => s.CreatedDate)), //Order Question by CreatedDate
                                    "", // Not Include any Property
                                    skip
                                ).ToList();
                    break;
                default:
                    list = dal.Repository<Discussion>()
                                .Get(null,
                                    (p => p.OrderByDescending(s => s.CreatedDate)),
                                    "",
                                    skip
                                ).ToList();
                    break;
            }
            return list;
        }
        public List<Discussion> GetDiscussions(int authorId)
        {
            return dal.Repository<Discussion>() //Get Question Repository
                .Get(
                    (a => a.UserId > 0), //Filter Question by Author
                    (p => p.OrderBy(s => s.CreatedDate)) //Order Question by CreatedDate
                ).ToList();
        }

        public void InsertDiscussion(Discussion discussion)
        {
            dal.Repository<Discussion>().Insert(discussion);
            dal.Save();
        }
        public void EditDiscussion(Discussion discussion)
        {
            dal.Repository<Discussion>().Update(discussion);
            dal.Save();
        }
        public void DeleteDiscussion(Discussion discussion)
        {
            dal.Repository<Discussion>().Delete(discussion);
            dal.Save();
        }
        public List<Discussion> SearchDiscussions(string searchString)
        {
            List<Discussion> list = new List<Discussion>();
            if (!String.IsNullOrEmpty(searchString))
            {
                list = dal.Repository<Discussion>()
                               .Get(p => p.Title.Contains(searchString),
                               (p => p.OrderBy(s => s.CreatedDate))
                               ).ToList();
            }
            return list;
        }
        public Discussion GetDiscussion(int id)
        {
            Discussion discussion = new Discussion();
            discussion = dal.Repository<Discussion>().GetById(id);
            return discussion;
        }
    }
}
