using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Admin
{
    public class DashboardViewModel
    {
        public int NewUserNumber { get; set; }
        public int NewTagNumber { get; set; }
        public int NewReportUserNumber { get; set; }
        public int NewReportMainpostNumber { get; set; }
    }
}