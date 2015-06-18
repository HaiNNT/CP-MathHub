using Profile = AutoMapper.Profile;
using CP_MathHub.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Models.Discussion;
using CP_MathHub.DAL;
using AutoMapper;

namespace CP_MathHub.AutoMapper.AutoMapperProfile
{
    public class DiscussionMapperProfile :Profile
    {
        /// <summary>
        /// Config profile for System AutoMapper
        /// </summary>
        protected override void Configure()
        {
            // Discussion Preview      
            Mapper.CreateMap<Discussion, DiscussionPreviewViewModel>(
                );

            // Discussion Detail
            Mapper.CreateMap<Discussion, DiscussionDetailViewModel>(
                );
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