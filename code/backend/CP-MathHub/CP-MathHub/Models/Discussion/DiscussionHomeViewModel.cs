using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Discussion
{
    public class DiscussionHomeViewModel
    {
        public string Name { get; set; }
        public ICollection<DiscussionCategoryViewModel> Items { get; set; }
    }
}