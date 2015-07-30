using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Admin
{
    public class TagViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int UsedNum { get; set; }
        public bool CheckDuplicate { get; set; }
    }
}