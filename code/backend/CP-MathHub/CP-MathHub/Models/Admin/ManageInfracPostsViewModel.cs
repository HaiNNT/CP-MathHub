using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Admin
{
    public class ManageInfracPostsViewModel
    {
        public List<int> MainPostFilters { get; set; }
        public ICollection<ManageInfracMainPostViewModel> MainPosts { get; set; }

        public List<int> NormalPostFilters { get; set; }

        public ICollection<ManageInfracNormalPostViewModel> NormalPosts { get; set; }

        public ManageInfracPostsViewModel()
        {
            MainPosts = new List<ManageInfracMainPostViewModel>();
            NormalPosts = new List<ManageInfracNormalPostViewModel>();
        }

    }
}