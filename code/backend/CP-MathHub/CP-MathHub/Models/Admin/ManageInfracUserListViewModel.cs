using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Admin
{
    public class ManageInfracUserListViewModel
    {
        public List<ManageInfracUsersViewModel> Items { get; set; }

        public List<BanReason> BanReasons { get; set; }

        public ManageInfracUserListViewModel()
        {
            Items = new List<ManageInfracUsersViewModel>();
        }

    }
}