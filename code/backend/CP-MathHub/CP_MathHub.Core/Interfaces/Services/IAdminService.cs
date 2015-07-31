using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Entity;
using CP_MathHub.Core.Configuration;

namespace CP_MathHub.Core.Interfaces.Services
{
    public interface IAdminService
    {
        /// <summary>
        /// Count new users
        /// </summary>
        /// <returns></returns>
        int CountNewUser(DateTime time);

        /// <summary>
        /// Count new tags
        /// </summary>
        /// <returns></returns>
        int CountNewTag(DateTime time);

        /// <summary>
        /// Count main post reports
        /// </summary>
        /// <returns></returns>
        int CountMainPostReport(DateTime time);

        /// <summary>
        /// Count user reports
        /// </summary>
        /// <returns></returns>
        int CountUserReport(DateTime time);

        /// <summary>
        /// Count users
        /// </summary>
        /// <returns></returns>
        int CountUsers();
        /// <summary>
        /// Get list ban reasons
        /// </summary>
        /// <returns></returns>
        List<BanReason> GetBanReasons();
        /// <summary>
        /// Get ban reason by ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        BanReason GetBanReason(int id);
        /// <summary>
        /// Edit ban reason
        /// </summary>
        /// <param name="banReason"></param>
        void EditBanReason(BanReason banReason);
        /// <summary>
        /// Delete ban reason
        /// </summary>
        /// <param name="Id"></param>
        void DeleteBanReason(BanReason banReason);
        /// <summary>
        /// Insert ban reason
        /// </summary>
        /// <param name="banReason"></param>
        void InsertBanReason(BanReason banReason);
        /// <summary>
        /// Get all Ban Reason
        /// </summary>
        /// <param name="include"></param>
        /// <returns></returns>
        List<BanReason> GetBanReason();
        /// <summary>
        /// Block user: insert table BanAccount
        /// </summary>
        /// <param name="banAccount"></param>
        void BlockUser(BanAccount banAccount);

        /// <summary>
        /// Get list ban reason by list ids
        /// </summary>
        /// <param name="list"></param>
        /// <returns></returns>
        List<BanReason> GetListBanReason(List<int> list);
    }
}
