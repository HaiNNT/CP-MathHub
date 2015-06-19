using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;
using Profile = AutoMapper.Profile;
using CP_MathHub.Entity;
using CP_MathHub.Models.Common;
using CP_MathHub.DAL;

namespace CP_MathHub.AutoMapper.AutoMapperProfile
{
    public class CommonMapperProfile : Profile
    {
        /// <summary>
        /// Config profile for System AutoMapper
        /// </summary>
        protected override void Configure()
        {
            //User
            Mapper.CreateMap<User, UserInfoViewModel>();
            Mapper.CreateMap<User, ProfileWidgetViewModel>();
            Mapper.CreateMap<User, UserHeaderViewModel>();
        }
    }
}