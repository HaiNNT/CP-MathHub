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
            Mapper.CreateMap<Discussion, DiscussionPreviewViewModel>();

            // Discussion Detail
            Mapper.CreateMap<Discussion, DiscussionDetailViewModel>();
        }
    }
}