using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;
using Profile = AutoMapper.Profile;
using CP_MathHub.Entity;
using CP_MathHub.Models.Admin;
using CP_MathHub.Models.Common;
using CP_MathHub.DAL;
using CP_MathHub.Service.Services;
using CP_MathHub.Service.Helpers;

namespace CP_MathHub.AutoMapper.AutoMapperProfile
{
    public class AdminMapperProfile : Profile
    {
        protected override void Configure()
        {
            Mapper.CreateMap<BanReason, RuleViewModel>();

            Mapper.CreateMap<Report, ManageInfracPostViewModel>();
        }
    }
}