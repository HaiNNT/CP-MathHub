using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;
using AutoMapper;
namespace CP_MathHub.Models.Question
{
    public class AnswerViewModel
    {
        public ICollection<Answer> Answers { get; set; }
        public ICollection<Answer> Hints { get; set; }
        public ICollection<VoteViewModel> VoteAnswerVMs
        {
            get
            {
                return Answers.Select(Mapper.Map<Answer, VoteViewModel>).ToList();
            }
            set { }
        }
        public ICollection<VoteViewModel> VoteHintVMs
        {
            get
            {
                return Hints.Select(Mapper.Map<Answer, VoteViewModel>).ToList();
            }
            set { }
        }
    }
}