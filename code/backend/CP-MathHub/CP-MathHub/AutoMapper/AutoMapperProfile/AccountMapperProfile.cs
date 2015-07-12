using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;
using Profile = AutoMapper.Profile;
using CP_MathHub.Entity;
using CP_MathHub.Models.Account;


namespace CP_MathHub.AutoMapper.AutoMapperProfile
{
    public class AccountMapperProfile : Profile
    {
        /// <summary>
        /// Config profile for System AutoMapper
        /// </summary>
        protected override void Configure()
        {
            Mapper.CreateMap<User, ProfileViewModel>();
        }
    }
}