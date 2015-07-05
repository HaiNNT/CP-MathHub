using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Discussion
{
    public class DiscussionCategoryViewModel
    {
        public string Name { get; set; }
        public int PostNum { get; set; }
        public string UserName { get; set; }
        public string Image { get; set; }
        public MainPost Discussion { get; set; }
    }
}