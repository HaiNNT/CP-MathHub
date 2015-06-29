using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Question
{
    public class VoteViewModel
    {
        public int VoteUp { get; set; }
        public int VoteDown { get; set; }
        public Vote Voted { get; set; }
        public bool Accepted { get; set; }
        public int Id { get; set; }
        public bool IsQuestion { get; set; }
    }
}