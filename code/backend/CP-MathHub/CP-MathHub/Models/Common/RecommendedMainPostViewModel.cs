using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Common
{
    public class RecommendedMainPostViewModel
    {
        public string Name { get; set; }
        public string System { get; set; }
        public RecommendedMainPostTypeEnum Type { get; set; }
        public List<MainPost> MainPosts { get; set; }
 
    }

    public enum RecommendedMainPostTypeEnum : int
    {
        Hot = 1,
        Related = 2
    }
}