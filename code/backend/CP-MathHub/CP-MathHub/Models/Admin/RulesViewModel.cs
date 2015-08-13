using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Admin
{
    public class RulesViewModel
    {
        public ICollection<RuleViewModel> Items { get; set; }

        public string Name { get; set; }
        public string Description { get; set; }
        public int Duration { get; set; }
        public RuleCreateViewModel CreateRule { get; set; }
        public RulesViewModel()
        {
            CreateRule = new RuleCreateViewModel();
        }
    }
}