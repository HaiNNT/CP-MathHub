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
    public class AccountService : IAccountService
    {
        private IUnitOfWork dal;
        public AccountService(CPMathHubModelContainer context)
        {
            dal = new MathHubUoW(context);   
        }
        public User GetLoginUser()
        {
            User user = new User();
            user.Username = "Văn Tâm";
            user.Reputation = 23142;
            //return user;
            //return dal.Repository<User>().GetById(55);
            return dal.Repository<User>().Table.FirstOrDefault(m => m.Id == 56);

        }
    }
}
