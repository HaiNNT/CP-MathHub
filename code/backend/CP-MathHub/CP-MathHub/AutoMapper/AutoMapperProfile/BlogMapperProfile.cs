﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;
using Profile = AutoMapper.Profile;
using CP_MathHub.Entity;
using CP_MathHub.Models.Blog;
using CP_MathHub.Models.Common;
using CP_MathHub.DAL;
using CP_MathHub.Service.Services;
using CP_MathHub.Service.Helpers;

namespace CP_MathHub.AutoMapper.AutoMapperProfile
{
    public class BlogMapperProfile : Profile
    {
         /// <summary>
        /// Config profile for System AutoMapper
        /// </summary>
        protected override void Configure()
        {
            // Article Preview      
            Mapper.CreateMap<Article, ArticlePreviewViewModel>()                
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
                    s => s.Bookmarked,
                    d => d.MapFrom(m => m.BookmarkUsers
                                            .Where(u => u.Id == new CommonService(
                                                                    new CPMathHubModelContainer())
                                                                        .GetLoginUser().Id).Count() > 0)
                );
        }
    }
}