using System;
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
            #region Article Preview
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
                    s => s.CommentNum,
                    d => d.MapFrom(m => m.Comments.Count)
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
                    s => s.Tags,
                    d => d.MapFrom(m => m.Tags)
                )
                //.ForMember(
                //    s => s.Status,
                //    d => d.MapFrom(m => PostStatusEnum.Active)
                //)
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
                //);
                ;
            #endregion

            #region Aricle Create

            Mapper.CreateMap<ArticleCreateViewModel, Article>()
               .ForMember(
                   s => s.CreatedDate,
                   d => d.MapFrom(m => DateTime.Now)
               )
               .ForMember(
                   s => s.LastViewed,
                   d => d.MapFrom(m => DateTime.Now)
               )
               //.ForMember(
               //    s => s.PublicDate,
               //    d => d.MapFrom(m => m.PublicDate)
               //)
               .ForMember(
                   s => s.LastEditedDate,
                   d => d.MapFrom(m => DateTime.Now)
               );

            #endregion

            #region Article Detail
            Mapper.CreateMap<Article, ArticleDetailViewModel>()
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
                s => s.Tags,
                d => d.MapFrom(m => m.Tags)
            )
            .ForMember(
                s => s.Comments,
                d => d.MapFrom(m => m.Comments.Select(Mapper.Map<Comment, CommentViewModel>))
            )
            .ForMember(
                s => s.UserInfo,
                d => d.MapFrom(m => Mapper.Map<User, UserInfoViewModel>(new CommonService(
                                                                new CPMathHubModelContainer())
                                                                    .GetUser(m.UserId)))
            )
                //.ForMember(
                //    s => s.Bookmarked,
                //    d => d.MapFrom(m => m.BookmarkUsers
                //                            .Where(u => u.Id == new CommonService(
                //                                                    new CPMathHubModelContainer())
                //                                                        .GetLoginUser().Id).Count() > 0)
                //);
            ;
            #endregion

            #region Article Edit
            Mapper.CreateMap<Article, ArticleEditViewModel>()
               .ForMember(
                   s => s.Privacy,
                   d => d.MapFrom(m => m.Privacy)
               )
               .ForMember(
                   s => s.CreatedDate,
                   d => d.MapFrom(m => m.CreatedDate)
               );
            #endregion
        }
    }
}