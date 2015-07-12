using CP_MathHub.Core.Configuration;
using CP_MathHub.Core.Interfaces.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Core.Interfaces.DAL;
using CP_MathHub.DAL;
using CP_MathHub.Service.Helpers;
using CP_MathHub.Entity;

namespace CP_MathHub.Service.Services
{
    public class AccountService : IAccountService, IDisposable
    {
        private IUnitOfWork dal;
        public AccountService(CPMathHubModelContainer context)
        {
            dal = new MathHubUoW(context);
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

        public User GetLoginUser()
        {
            User user = new User();
            user.UserName = "Văn Tâm";
            user.Reputation = 23142;
            //return user;
            //return dal.Repository<User>().GetById(55);
            return dal.Repository<User>().Table.FirstOrDefault(m => m.Id == 56);

        }

        public User GetUser(int userId, string include = "")
        {
            return dal.Repository<User>().Include(include).Table.FirstOrDefault(m => m.Id == userId);
        }

        public void CreateProfile(int userId)
        {
            Profile profile = new Profile();
            profile.User = GetUser(userId);
            dal.Repository<Profile>().Insert(profile);
            dal.Save();
        }

    }
}
