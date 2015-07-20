using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;
using CP_MathHub.Models.Common;

namespace CP_MathHub.Models.Discussion
{
    public class CategoryPreviewViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int PostNum { get; set; }
        public string UserName { get; set; }
        public string Image { get; set; }
        public MainPost Discussion { get; set; }
        public string Description { get; set; }
    }
}