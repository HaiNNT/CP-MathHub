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
    public class CommonService : ICommonService
    {
        private IUnitOfWork dal;
        private AccountService aService;
        public CommonService(CPMathHubModelContainer context)
        {
            dal = new MathHubUoW(context);
            aService = new AccountService(context);
            
        }
        public Tag GetTag(string name)
        {
            Tag tag = null;
            IQueryable<Tag> query = dal.Repository<Tag>().Table
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
            Tag tag = dal.Repository<Tag>()
                .GetById(id);
            return tag;
        }
        public List<Tag> GetTags(List<int> tagIds)
        {
            List<Tag> tags = new List<Tag>();
            foreach(int id in tagIds){
                Tag tag = GetTag(id);
                tags.Add(tag);               
            }
            return tags;
        }
        public List<Tag> GetTags(string name)
        {
            List<Tag> tags = dal.Repository<Tag>().Get(
                    (t => t.Name.ToLower().Contains(name.ToLower())),
                    (t => t.OrderBy(m => m.Name))
                ).ToList();
            return tags;
        }

        public bool InsertTag(Tag tag)
        {
            if (GetTag(tag.Name) != null)
            {
                return false;
            }
            tag.CreatedDate = DateTime.Now;
            tag.UserId = GetLoginUser().Id;
            tag.Description = "";
            dal.Repository<Tag>().Insert(tag);
            dal.Save();
            return true;
        }

        public bool Bookmark(int id, User user)
        {
                MainPost post = dal.Repository<MainPost>().GetById(id);
                if (post.BookmarkUsers.Contains(user))
                {
                    post.BookmarkUsers.Remove(user);
                }
                else
                {
                    post.BookmarkUsers.Add(user);
                }               
                dal.Repository<MainPost>().Update(post);
                dal.Save();
                return true;
        }
        public User GetLoginUser()
        {
            return aService.GetLoginUser();
        }
    }
}
