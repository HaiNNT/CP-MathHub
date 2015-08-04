using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Admin
{
    public class SendMailViewModel
    {
        public string UserEmails { get; set; }
        public string Subject { get; set; }
        public string Message { get; set; }
        public List<User> Users { get; set; }
        public HttpPostedFileBase Upload { get; set; }
    }
}