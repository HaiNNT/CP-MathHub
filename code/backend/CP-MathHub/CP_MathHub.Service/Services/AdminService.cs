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
    public class AdminService : IAdminService, IDisposable
    {
        private int _loginUserId;
        private IUnitOfWork dal;
        private ICommonService cService;
        private IAccountService aService;
        public AdminService(CPMathHubModelContainer context, int userId = 0)
        {
            _loginUserId = userId;
            dal = new MathHubUoW(context);
            cService = new CommonService(context);
            aService = new AccountService(context);
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
        public int CountNewUser(DateTime time)
        {
            return dal.Repository<User>().Table.Count(u => u.CreatedDate > time);
        }

        public int CountUsers()
        {
            return dal.Repository<User>().Table.Count();
        }

        public int CountNewTag(DateTime time)
        {
            return dal.Repository<Tag>().Table.Count(t => t.CreatedDate > time);
        }

        public int CountMainPostReport(DateTime time)
        {
            return dal.Repository<Report>().Table.Count(u => u.ReportedDate > time && u.PostId != default(int?) && u.Post is MainPost);
        }

        public int CountUserReport(DateTime time)
        {
            return dal.Repository<Report>().Table.Count(u => u.ReportedDate > time && u.UserId != default(int?));
        }

        public List<BanReason> GetBanReasons()
        {
            List<BanReason> list = new List<BanReason>();
            list = dal.Repository<BanReason>().Get(null, (p => p.OrderByDescending(b => b.CreatedDate)), "", 0).ToList();
            return list;
        }

        public BanReason GetBanReason(int id)
        {
            BanReason banReason = dal.Repository<BanReason>().GetById(id);
            return banReason;
        }

        public void EditBanReason(BanReason banReason)
        {
            dal.Repository<BanReason>().Update(banReason);
            dal.Save();
        }

        public void DeleteBanReason(BanReason banReason)
        {
            dal.Repository<BanReason>().Delete(banReason);
            dal.Save();
        }

        public void InsertBanReason(BanReason banReason)
        {
            dal.Repository<BanReason>().Insert(banReason);
            dal.Save();
        }
        public List<BanReason> GetBanReason()
        {
            return dal.Repository<BanReason>().Table.ToList();
        }
        public void BlockUser(BanAccount banAccount)
        {
            dal.Repository<BanAccount>().Insert(banAccount);
            dal.Save();
            //aService.UpdateUser(banAccount.BannedUser);
        }
        public void SetRoleUser(Accessment assessment)
        {
            if (dal.Repository<Accessment>().Table.Count(a => a.RoleId == assessment.RoleId && a.UserId == assessment.UserId) == 0)
            {
                dal.Repository<Accessment>().Insert(assessment);
                dal.Save();
            }
        }
        public void ClearRolesUser(int id)
        {
            User user = cService.GetUser(id);
            user.Assessments.Clear();
            dal.Repository<User>().Update(user);
            dal.Save();
            //List<Accessment> list = new List<Accessment>();
            //list = dal.Repository<Accessment>().Table.Where(a => a.UserId == id).ToList();
            //foreach (Accessment a in list)
            //{
            //    dal.Repository<Accessment>().Delete(a);
            //    dal.Save();
            //}
        }
        public List<Report> GetMainPostReport()
        {
            List<Report> list = new List<Report>();
            list = dal.Repository<Report>().Get((r => r.PostId != null)
                                                , (r => r.OrderByDescending(s => s.ReportedDate))
                                                , "Reporter,Post"
                                                , 0
                                                , 0).ToList();
            return list;
        }
        public List<MainPost> GetReportedMainPost()
        {
            return dal.Repository<Post>().Table.OfType<MainPost>().Where(p => p.Reports.Count > 0).ToList();
        }

        public List<Question> GetReportedQuestion()
        {
            return dal.Repository<Question>().Table.Where(p => p.Reports.Count > 0).ToList();
        }

        public List<Article> GetReportedArticle()
        {
            return dal.Repository<Article>().Table.Where(p => p.Reports.Count > 0).ToList();
        }

        public List<Discussion> GetReportedDiscussion()
        {
            return dal.Repository<Discussion>().Table.Where(p => p.Reports.Count > 0).ToList();
        }

        public List<Answer> GetReportedAnswer()
        {
            return dal.Repository<Answer>().Table.Where(p => p.Reports.Count > 0).ToList();
        }

        public void InsertTag(Tag tag)
        {
            dal.Repository<Tag>().Insert(tag);
            dal.Save();
        }
        public void EditTag(Tag tag)
        {
            dal.Repository<Tag>().Update(tag);
            dal.Save();
        }
        public void DeleteTag(int tagId)
        {
            dal.Repository<Tag>().Delete(tagId);
            dal.Save();
        }
        public void ResultDuplicateTags(List<int> tagIds, string tagName, string description = "")
        {
            List<Tag> tags = new List<Tag>();
            List<MainPost> mainPosts = new List<MainPost>();
            tags = cService.GetTags(tagIds);
            Tag tag = new Tag();
            tag.UserId = _loginUserId;
            tag.Name = tagName;
            tag.Description = description;
            tag.CreatedDate = DateTime.Now;
            dal.Repository<Tag>().Insert(tag);
            dal.Save();
            foreach ( Tag t in tags)
            {
                mainPosts.AddRange( dal.Repository<MainPost>().Table.Where(m => m.Tags.Count(c => c.Id == t.Id) > 0).ToList());           
                t.MainPosts.Clear();
                dal.Repository<Tag>().Update(t);
                dal.Save();
                dal.Repository<Tag>().Delete(t);
                dal.Save();
            }
            tag.MainPosts = mainPosts;
            dal.Repository<Tag>().Update(tag);
            dal.Save();
        }
        public List<BanReason> GetListBanReason(List<int> list)
        {
            List<BanReason> result = new List<BanReason>();
            foreach (int id in list)
            {
                result.Add(dal.Repository<BanReason>().GetById(id));
            }
            return result;
        }
        public bool changeStatus(int id)
        {
            List<Report> reports = dal.Repository<Report>().Table.Where(r => r.PostId == id).ToList();
            foreach (Report r in reports)
            {
                if (r.Status)
                {
                    r.Status = false;
                }
                else
                {
                    r.Status = true;
                }
                dal.Repository<Report>().Update(r);
                dal.Save();
            }
            return true;
        }


        public bool UpdatePost(Post post)
        {
            try
            {
                dal.Repository<Post>().Update(post);
                dal.Save();
                return true;
            }
            catch (Exception)
            {
                return false;
                throw;
            }
            
        }

        public Post GetPost(int id)
        {
            Post post = dal.Repository<Post>().GetById(id);
            return post;
        }
        public void UnBlockUser(User user)
        {
            dal.Repository<User>().Update(user);
            dal.Save();
        }
    }
}
