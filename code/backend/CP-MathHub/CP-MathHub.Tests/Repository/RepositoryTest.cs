using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using CP_MathHub.DAL;
using CP_MathHub.Entity;

namespace CP_MathHub.Tests.Repository
{
    [TestClass]
    public class RepositoryTest
    {
        [TestMethod]
        public void Test()
        {
            MathHubUoW dal = new MathHubUoW();
            User q = dal.Repository<User>().GetById(55);
            Assert.IsNotNull(q);
        }
    }
}
