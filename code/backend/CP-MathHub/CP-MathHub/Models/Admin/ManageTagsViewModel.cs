using CP_MathHub.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Admin
{
    public class ManageTagsViewModel
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public ICollection<TagViewModel> Items { get; set; }
        public ICollection<TagViewModel> Items1 { get; set; }
    }
}
