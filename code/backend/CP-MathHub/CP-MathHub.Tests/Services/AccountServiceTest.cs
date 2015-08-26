using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using CP_MathHub.Service.Services;
using CP_MathHub.Entity;
using System.Net.Mail;
using System.Collections.Generic;

namespace CP_MathHub.Tests.Services
{
    [TestClass]
    public class AccountServiceTest
    {
        //[TestMethod]
        //public void GetLoginUser()
        //{
        //    AccountService service = new AccountService(new CPMathHubModelContainer());
        //    User user = service.GetLoginUser();
        //    Assert.IsNotNull(user);
        //    Assert.IsFalse(user.UserName == "");
        //}

        [TestMethod]
        public void GetLoginUser()
        {
            var message = new MailMessage();

            message.To.Add(new MailAddress("hainnt1302@gmail.com")); //Get mail list
            message.From = new MailAddress("admin@mathhub.com", "MathHub");
            message.Subject = "Confirm mail";
            message.Body = "Confirm mail, bam vao link sau";
            message.IsBodyHtml = true;
            using (var smtp = new SmtpClient())
            {
                smtp.Send(message);
            }
        }
    }
}
