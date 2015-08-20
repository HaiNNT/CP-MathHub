using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;
using Profile = AutoMapper.Profile;
using CP_MathHub.Entity;
using CP_MathHub.Models.Question;
using CP_MathHub.Models.Common;
using CP_MathHub.DAL;
using CP_MathHub.Service.Services;
using CP_MathHub.Service.Helpers;

namespace CP_MathHub.AutoMapper.AutoMapperProfile
{
    public class QuestionMapperProfile : Profile
    {
        /// <summary>
        /// Config profile for System AutoMapper
        /// </summary>
        protected override void Configure()
        {
            #region Preview Question
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
                )
                .ForMember(
                    s => s.UserInfo,
                    d => d.MapFrom(m => Mapper.Map<User, UserInfoViewModel>(m.Author))
                )
                .ForMember(
                    s => s.Edited,
                    d => d.MapFrom(m => m.EditedContents.Count > 1)
                )
                //.ForMember(
                //    s => s.Bookmarked,
                //    d => d.MapFrom(m => m.BookmarkUsers
                //                            .Where(u => u.Id == new CommonService(
                //                                                    new CPMathHubModelContainer())
                //                                                        .GetLoginUser().Id).Count() > 0)
                //)
                ;
            #endregion

            #region Detail Question
            Mapper.CreateMap<Question, QuestionDetailViewModel>()
                //.ForMember(
                //    s => s.ReportNum,
                //    d => d.MapFrom(m => new MathHubUoW().Repository<Report>()
                //        .Table.Count(p => p.PostId == m.Id))
                //)
                .ForMember(
                    s => s.ReportNum,
                    d => d.MapFrom(m => m.Reports.Count)
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
                    s => s.Comments,
                    d => d.MapFrom(m => m.Comments)
                )
                .ForMember(
                    s => s.Tags,
                    d => d.MapFrom(m => m.Tags)
                )
                .ForMember(
                    s => s.UserInfo,
                    d => d.MapFrom(m => Mapper.Map<User, UserInfoViewModel>(m.Author))
                )
                .ForMember(
                    s => s.Edited,
                    d => d.MapFrom(m => m.EditedContents.Count > 1)
                )
                //.ForMember(
                //    s => s.Bookmarked,
                //    d => d.MapFrom(m => m.BookmarkUsers
                //                            .Where(u => u.Id == new CommonService(
                //                                                    new CPMathHubModelContainer())
                //                                                        .GetLoginUser().Id).Count() > 0)
                //)
                //.ForMember(
                //    s => s.VoteVM,
                //    d => d.MapFrom(m => Mapper.Map<Question, VoteViewModel>(m))
                //)
                ;
            #endregion

            #region Vote
            //Mapper.CreateMap<Question, VoteViewModel>()
            //    .ForMember(
            //        s => s.Voted,
            //        d => d.MapFrom(m => m.Votes.Where(u => u.User.Id == new CommonService(
            //                                                        new CPMathHubModelContainer())
            //                                                            .GetLoginUser().Id).FirstOrDefault())
            //    )
            //    .ForMember(
            //        s => s.IsQuestion,
            //        d => d.MapFrom(m => true)
            //    );
            //Mapper.CreateMap<Answer, VoteViewModel>()
            //    .ForMember(
            //        s => s.Voted,
            //        d => d.MapFrom(m => m.Votes.Where(u => u.User.Id == new CommonService(
            //                                                        new CPMathHubModelContainer())
            //                                                            .GetLoginUser().Id).FirstOrDefault())
            //    );
            #endregion

            #region Create Question
            Mapper.CreateMap<QuestionCreateViewModel, Question>()
               .ForMember(
                   s => s.CreatedDate,
                   d => d.MapFrom(m => DateTime.Now)
               )
               .ForMember(
                   s => s.Status,
                   d => d.MapFrom(m => PostStatusEnum.Active)
               )
                .ForMember(
                   s => s.LastViewed,
                   d => d.MapFrom(m => DateTime.Now)
               )
               .ForMember(
                   s => s.LastEditedDate,
                   d => d.MapFrom(m => DateTime.Now)
               )
               .ForMember(
                   s => s.VoteUp,
                   d => d.MapFrom(m => 0)
               )
               .ForMember(
                   s => s.VoteDown,
                   d => d.MapFrom(m => 0)
               )
               //.ForMember(
               //    s => s.Privacy,
               //    d => d.MapFrom(m => m.Privacy)
               //)
               ;
            #endregion

            #region Edit Question Get
            Mapper.CreateMap<Question, QuestionEditViewModel>();
            #endregion

        }
    }
}