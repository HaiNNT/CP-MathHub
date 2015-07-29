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
        private IUnitOfWork dal;
        private ICommonService cService;
        public AdminService(CPMathHubModelContainer context)
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
    }
}
