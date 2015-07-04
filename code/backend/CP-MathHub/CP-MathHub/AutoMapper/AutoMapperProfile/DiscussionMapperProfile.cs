using Profile = AutoMapper.Profile;
using CP_MathHub.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Models.Discussion;
using CP_MathHub.DAL;
using AutoMapper;
using CP_MathHub.Service.Services;
using CP_MathHub.Models.Common;

namespace CP_MathHub.AutoMapper.AutoMapperProfile
{
    public class DiscussionMapperProfile :Profile
    {
        /// <summary>
        /// Config profile for System AutoMapper
        /// </summary>
        protected override void Configure()
        {
            #region Discussion Preview
            Mapper.CreateMap<Discussion, DiscussionPreviewViewModel>()
                .ForMember(
                    s => s.ReportNum,
                    d => d.MapFrom(m => new MathHubUoW().Repository<Report>()
                        .Table.Count(p => p.PostId == m.Id))
                )
                .ForMember(
                    s => s.Tags,
                    d => d.MapFrom(m => m.Tags)
                )
                .ForMember(
                    s => s.UserInfo,
                    d => d.MapFrom(m => Mapper.Map<User, UserInfoViewModel>(m.Author))
                );
            #endregion

            #region Discussion Detail
            Mapper.CreateMap<Discussion, DiscussionDetailViewModel>()
                .ForMember(
                    s => s.ReportNum,
                    d => d.MapFrom(m => m.Reports.Count)
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
                );
            #endregion
            //Create Question
            Mapper.CreateMap<DiscussionCreateViewModel, Discussion>()
               .ForMember(
                   s => s.CreatedDate,
                   d => d.MapFrom(m => DateTime.Now)
               )
               .ForMember(
                   s => s.Privacy,
                   d => d.MapFrom(m => MainPostPrivacyEnum.Everyone)
               )
                .ForMember(
                   s => s.UserId,
                   d => d.MapFrom(m => 93)
               )
                .ForMember(
                   s => s.LastViewed,
                   d => d.MapFrom(m => DateTime.Now)
               )
               .ForMember(
                   s => s.LastEditedDate,
                   d => d.MapFrom(m => DateTime.Now)
               );
            //Edit Discussion Get
            Mapper.CreateMap<Discussion, DiscussionEditViewModel>(
                );
        }
    }
}