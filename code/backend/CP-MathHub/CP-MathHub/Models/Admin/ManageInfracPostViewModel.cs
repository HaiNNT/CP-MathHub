using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Admin
{
    public class ManageInfracPostViewModel
    {

        public MainPost MainPost { get; set; }

        public Dictionary<string,int> Reasons { get; set; }

        public DateTime ReportedDate { get; set; }

        public List<User> Reporters { get; set; }

        public bool Status { get; set; }


    }
}