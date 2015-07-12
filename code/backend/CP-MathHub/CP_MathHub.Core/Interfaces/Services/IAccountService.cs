using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Entity;

namespace CP_MathHub.Core.Interfaces.Services
{
    public interface IAccountService
    {
        /// <summary>
        /// Get an entity User that logging in with current session
        /// </summary>
        /// <returns></returns>
        User GetLoginUser();

        /// <summary>
        /// Get an entity User by id
        /// </summary>
        /// <returns></returns>
        User GetUser(int userId, string include = "");

        /// <summary>
        /// Create Profile
        /// </summary>
        /// <param name="userId"></param>
        void CreateProfile(int userId);
    }
}
