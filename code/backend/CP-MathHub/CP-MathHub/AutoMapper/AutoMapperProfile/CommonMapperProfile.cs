using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;
using Profile = AutoMapper.Profile;
using CP_MathHub.Entity;
using CP_MathHub.Models.Common;
using CP_MathHub.DAL;
using CP_MathHub.Service.Services;

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
      
            //Comment
            Mapper.CreateMap<Comment, CommentViewModel>()
                .ForMember(
                    s => s.Username,
                    d => d.MapFrom(m => m.Author.Username)
                )
                .ForMember(
                    s => s.Avatar,
                    d => d.MapFrom(m => m.Author.Avatar)
                )
                .ForMember(
                    s => s.Like,
                    d => d.MapFrom(m => m.VoteUp)
                )
                .ForMember(
                    s => s.Liked,
                    d => d.MapFrom(m => m.Votes.Where(v => v.UserId == new CommonService(
                                                                    new CPMathHubModelContainer())
                                                                        .GetLoginUser().Id && v.Type == VoteEnum.VoteUp).Count() > 0)
                )
                .ForMember(
                    s => s.Comments,
                    d => d.MapFrom(m => m.Comments.Select(Mapper.Map<Comment, CommentViewModel>))
                )
                ;
        }
    }
}