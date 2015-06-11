using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Account
{
    public class UserInfoViewModel
    {
        public string Username { get; set; }
        public string Avatar { get; set; }
        public int Reputation { get; set; }
        public int Id { get; set; }
    }
}