using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;
namespace CP_MathHub.Models.Question
{
    public class AnswerViewModel
    {
        public ICollection<Answer> Answers { get; set; }
        public ICollection<Answer> Hints { get; set; }
    }
}