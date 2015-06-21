using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Question
{
    public class QuestionHomeViewModel
    {
        public string Name { get; set; }
        public ICollection<QuestionPreviewViewModel> Items { get; set; }
    
    }
}