using CP_MathHub.Entity;
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
        public string Tile { get; set; }
        public string Content { get; set; }
        public List<int> TagIds { get; set; }
        public ICollection<DiscussionTagPreviewViewModel> Items { get; set; }
    }
}