using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Question
{
    public class TagsPageViewModel
    {
        public string Tab { get; set; }
        public List<Tag> ListTags { get; set; } 
    }
}