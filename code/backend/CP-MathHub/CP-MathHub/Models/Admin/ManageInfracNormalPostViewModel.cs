﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Admin
{
    public class ManageInfracNormalPostViewModel
    {
        public int Id { get; set; }

        public Post Post { get; set; }

        public Dictionary<ReportTypeEnum, int> Reasons { get; set; }

        public DateTime ReportedDate { get; set; }

        public List<User> Reporters { get; set; }

        public bool Status { get; set; }

        

    }
}