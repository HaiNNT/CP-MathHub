using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Admin
{
    public class UserHeaderViewModel
    {
        public string Username { get; set; }
        public int Id { get; set; }
        public Image Avatar { get; set; }
    }
}