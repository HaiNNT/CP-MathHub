using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Discussion
{
    public class TagsPageViewModel
    {
        public int Id { get; set; }
        
        public string Tab { get; set; }
        public List<Tag> ListTags { get; set; } 

    }
}