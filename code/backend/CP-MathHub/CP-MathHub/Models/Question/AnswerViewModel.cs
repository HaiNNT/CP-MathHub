using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;
using AutoMapper;
using CP_MathHub.Core.Interfaces.Services;
namespace CP_MathHub.Models.Question
{
    public class AnswerViewModel
    {
        public ICollection<Answer> Answers { get; set; }
        public ICollection<Answer> Hints { get; set; }
        public ICollection<VoteViewModel> VoteAnswerVMs
        {
            get;
            set;
        }
        public ICollection<VoteViewModel> VoteHintVMs
        {
            get;
            set;
        }

        public AnswerViewModel(IQuestionService qService, int questionId, int userId = default(int))
        {
            Answers = qService.GetAnswers(questionId, AnswerEnum.Answer);
            Hints = qService.GetAnswers(questionId, AnswerEnum.Hint);
            VoteAnswerVMs = new List<VoteViewModel>();
            foreach (Answer a in Answers)
            {
                VoteAnswerVMs.Add(new VoteViewModel(a, userId));
            }
            VoteHintVMs = new List<VoteViewModel>();
            foreach (Answer h in Hints)
            {
                VoteHintVMs.Add(new VoteViewModel(h, userId));
            }
        }
    }
}