using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using CP_MathHub.Service.Services;
using CP_MathHub.Entity;

namespace CP_MathHub.Tests.Services
{
    [TestClass]
    public class AccountServiceTest
    {
        [TestMethod]
        public void GetLoginUser()
        {
            AccountService service = new AccountService(new CPMathHubModelContainer());
            User user = service.GetLoginUser();
            Assert.IsNotNull(user);
            Assert.IsFalse(user.Username == "");
        }
    }
}
