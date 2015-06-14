using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;
using Profile = AutoMapper.Profile;
using CP_MathHub.Entity;
using CP_MathHub.Models.Question;
using CP_MathHub.DAL;

namespace CP_MathHub.AutoMapper.AutoMapperProfile
{
    public class QuestionMapperProfile : Profile
    {
        /// <summary>
        /// Config profile for System AutoMapper
        /// </summary>
        protected override void Configure()
        {
            // Question Preview      
            Mapper.CreateMap<Question, QuestionPreviewViewModel>()
                .ForMember(
                    s => s.AnswerNum,
                    d => d.MapFrom(m => new MathHubUoW().Repository<Answer>()
                        .Table.Count(p => p.QuestionId == m.Id & p.Type == AnswerEnum.Answer))
                )
                .ForMember(
                    s => s.HintNum,
                    d => d.MapFrom(m => new MathHubUoW().Repository<Answer>()
                        .Table.Count(p => p.QuestionId == m.Id & p.Type == AnswerEnum.Hint))
                )
                .ForMember(
                    s => s.ReportNum,
                    d => d.MapFrom(m => new MathHubUoW().Repository<Report>()
                        .Table.Count(p => p.PostId == m.Id))
                )
                .ForMember(
                    s => s.BookmarkNum,
                    d => d.MapFrom(m => m.BookmarkUsers.Count)
                )
                .ForMember(
                    s => s.ShareNum,
                    d => d.MapFrom(m => m.Sharers.Count)
                )
                .ForMember(
                    s => s.Tags,
                    d => d.MapFrom(m => m.Tags)
                );

            //Question Detail
            Mapper.CreateMap<Question, QuestionDetailViewModel>()
                .ForMember(
                    s => s.ReportNum,
                    d => d.MapFrom(m => new MathHubUoW().Repository<Report>()
                        .Table.Count(p => p.PostId == m.Id))
                )
                .ForMember(
                    s => s.BookmarkNum,
                    d => d.MapFrom(m => m.BookmarkUsers.Count)
                )
                .ForMember(
                    s => s.ShareNum,
                    d => d.MapFrom(m => m.Sharers.Count)
                )
                .ForMember(
                    s => s.Answers,
                    d => d.MapFrom(m => m.Answers)
                )
                .ForMember(
                    s => s.Comments,
                    d => d.MapFrom(m => m.Comments)
                )
                .ForMember(
                    s => s.Tags,
                    d => d.MapFrom(m => m.Tags)
                );
        }
    }
}