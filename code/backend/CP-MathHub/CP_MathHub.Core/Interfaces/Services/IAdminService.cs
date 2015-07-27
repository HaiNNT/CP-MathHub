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
    }
}
