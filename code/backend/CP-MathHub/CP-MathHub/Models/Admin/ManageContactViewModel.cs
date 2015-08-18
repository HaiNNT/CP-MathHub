using CP_MathHub.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Admin
{
    public class ManageContactViewModel
    {
        public string UserName { get; set; }
        public string Message { get; set; }
        public DateTime CreatedDate { get; set; }
        public List<Feedback> Feedbacks { get; set; }

    }
}