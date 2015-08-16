using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;
using Profile = AutoMapper.Profile;
using CP_MathHub.Entity;
using CP_MathHub.Models.Common;
using CP_MathHub.Models.Discussion;
using CP_MathHub.DAL;
using CP_MathHub.Service.Services;
using CP_MathHub.Models.RealTime;

namespace CP_MathHub.AutoMapper.AutoMapperProfile
{
    public class CommonMapperProfile : Profile
    {
        /// <summary>
        /// Config profile for System AutoMapper
        /// </summary>
        protected override void Configure()
        {
            #region User
            Mapper.CreateMap<User, UserInfoViewModel>();
            Mapper.CreateMap<User, UserHoverViewModel>();
            Mapper.CreateMap<User, ProfileWidgetViewModel>();
            Mapper.CreateMap<User, UserHeaderViewModel>();
            Mapper.CreateMap<User, CP_MathHub.Models.Admin.UserHeaderViewModel>();            
            #endregion

            #region Tag
            Mapper.CreateMap<Tag, CategoryPreviewViewModel>()
                .ForMember(
                    s => s.Name,
                    d => d.MapFrom(m=>m.Name)
                )
                .ForMember(
                    s => s.PostNum,
                    d => d.MapFrom(m => m.MainPosts.OfType<Discussion>().Count())
                 )
                 //.ForMember(
                 //   s => s.Discussion,
                 //   d => d.MapFrom(m => new DiscussionService(new CPMathHubModelContainer(), 0).GetLastestDiscussion(m.Id))
                 //)
                 //.ForMember(
                 //    s => s.UserName,
                 //    //d => d.MapFrom(m => new CommonService(new CPMathHubModelContainer()).GetUser(m.UserId).UserName)
                 //    d => d.MapFrom(m => new DiscussionService(new CPMathHubModelContainer(), 0).GetLastestDiscussion(m.Id).Author.UserName)
                 //)

                 ;
            #endregion

            #region Comment
            Mapper.CreateMap<Comment, CommentViewModel>()
                .ForMember(
                    s => s.Username,
                    d => d.MapFrom(m => m.Author.UserName)
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
                    s => s.Edited,
                    d => d.MapFrom( m => m.EditedContents.Count > 1)
                )
                //.ForMember(
                //    s => s.Liked,
                //    d => d.MapFrom(m => m.Votes.Where(v => v.UserId == new CommonService(
                //                                                    new CPMathHubModelContainer())
                //                                                        .GetLoginUser().Id && v.Type == VoteEnum.VoteUp).Count() > 0)
                //)
                .ForMember(
                    s => s.Comments,
                    d => d.MapFrom(m => m.Comments.Select(Mapper.Map<Comment, CommentViewModel>))
                )
                //.ForMember(
                //    d => d.UserId,
                //    s => s.MapFrom(m => m.UserId)
                //)
                //.ForMember(
                //    d => d.Status,
                //    s => s.MapFrom(m => m.Status)
                //)
                ;
            #endregion

        }
    }
}