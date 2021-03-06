﻿using Profile = AutoMapper.Profile;
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
    public class DiscussionMapperProfile : Profile
    {
        /// <summary>
        /// Config profile for System AutoMapper
        /// </summary>
        protected override void Configure()
        {
            #region Preview Discussion
            Mapper.CreateMap<Discussion, DiscussionPreviewViewModel>()
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
                    s => s.CommentNum,
                    d => d.MapFrom(m => m.Comments.Count)
                )
                .ForMember(
                    s => s.Like,
                    d => d.MapFrom(m => m.VoteUp)
                )
                //.ForMember(
                //    s => s.Liked,
                //    d => d.MapFrom(m => m.Votes.Where(v => v.UserId == new CommonService(
                //                                                    new CPMathHubModelContainer())
                //                                                        .GetLoginUser().Id && v.Type == VoteEnum.VoteUp).Count() > 0)
                //)
                .ForMember(
                    s => s.Edited,
                    d => d.MapFrom(m => m.EditedContents.Count > 1)
                )
                .ForMember(
                    s => s.Tags,
                    d => d.MapFrom(m => m.Tags)
                )
                .ForMember(
                    s => s.UserInfo,
                    d => d.MapFrom(m => Mapper.Map<User, UserInfoViewModel>(m.Author))
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

            #region Detail Discussion
            Mapper.CreateMap<Discussion, DiscussionDetailViewModel>()
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
                    s => s.CommentNum,
                    d => d.MapFrom(m => m.Comments.Count)
                )
                .ForMember(
                    s => s.Like,
                    d => d.MapFrom(m => m.VoteUp)
                )
                //.ForMember(
                //    s => s.Liked,
                //    d => d.MapFrom(m => m.Votes.Where(v => v.UserId == new CommonService(
                //                                                    new CPMathHubModelContainer())
                //                                                        .GetLoginUser().Id && v.Type == VoteEnum.VoteUp).Count() > 0)
                //)
                .ForMember(
                    s => s.Edited,
                    d => d.MapFrom(m => m.EditedContents.Count > 1)
                )
                .ForMember(
                    s => s.Tags,
                    d => d.MapFrom(m => m.Tags)
                )
                .ForMember(
                    s => s.UserInfo,
                    d => d.MapFrom(m => Mapper.Map<User, UserInfoViewModel>(m.Author))
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

            #region Create Discussion
            Mapper.CreateMap<DiscussionCreateViewModel, Discussion>()
               .ForMember(
                   s => s.CreatedDate,
                   d => d.MapFrom(m => DateTime.Now)
               )
               .ForMember(
                   s => s.Status,
                   d => d.MapFrom(m => PostStatusEnum.Active)
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
               )
               .ForMember(
                   s => s.VoteUp,
                   d => d.MapFrom(m => 0)
               )
               .ForMember(
                   s => s.VoteDown,
                   d => d.MapFrom(m => 0)
               )
               ;
            #endregion

            #region Edit Discussion
            Mapper.CreateMap<Discussion, DiscussionEditViewModel>();
            #endregion
        }
    }
}