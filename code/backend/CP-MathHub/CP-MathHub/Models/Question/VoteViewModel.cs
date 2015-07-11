using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.Question
{
    public class VoteViewModel
    {
        public int? VoteUp { get; set; }
        public int? VoteDown { get; set; }
        public Vote Voted { get; set; }
        public bool Accepted { get; set; }
        public int Id { get; set; }
        public bool IsQuestion { get; set; }

        public VoteViewModel(CP_MathHub.Entity.Question question, int userId = default(int))
        {
            VoteUp = question.VoteUp;
            VoteDown = question.VoteDown;
            Voted = userId == default(int) ? null : question.Votes.Where(u => u.User.Id == userId).FirstOrDefault();
            Accepted = false;
            Id = question.Id;
            IsQuestion = true;
        }

        public VoteViewModel(CP_MathHub.Entity.Answer answer, int userId = default(int))
        {
            VoteUp = answer.VoteUp;
            VoteDown = answer.VoteDown;
            Voted = userId == default(int) ? null : answer.Votes.Where(u => u.User.Id == userId).FirstOrDefault();
            Accepted = answer.Accepted;
            Id = answer.Id;
            IsQuestion = false;
        }
    }
}