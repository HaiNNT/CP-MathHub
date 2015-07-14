using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Discussion
{
    public class DiscussionTagHomeViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public ICollection<DiscussionTagPreviewViewModel> Items { get; set; }
    }
}