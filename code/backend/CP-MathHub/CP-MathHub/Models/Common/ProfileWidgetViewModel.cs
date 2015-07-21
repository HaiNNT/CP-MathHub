using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Common
{
    public class ProfileWidgetViewModel
    {
        public string Username { get; set; }
        public int Reputation { get; set; }
        public int Id { get; set; }
        public UserStatusEnum Status { get; set; }

        public Image Avatar { get; set; }
    }
}