using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;
using Profile = AutoMapper.Profile;
using CP_MathHub.Entity;
using CP_MathHub.Models.Account;
using CP_MathHub.Service.Services;


namespace CP_MathHub.AutoMapper.AutoMapperProfile
{
    public class AccountMapperProfile : Profile
    {
        /// <summary>
        /// Config profile for System AutoMapper
        /// </summary>
        protected override void Configure()
        {
            Mapper.CreateMap<User, ProfileViewModel>()
                .ForMember(
                    d => d.FriendNumber,
                    s => s.MapFrom(m => new AccountService(new CPMathHubModelContainer(), 0).CountFriend(m.Id))
                );
            Mapper.CreateMap<User, PrivacyViewModel>()
                .ForMember(
                    d => d.ReceiveEmail,
                    u => u.MapFrom(m => m.PrivacySetting.ReceiveEmail)
                )
                .ForMember(
                    d => d.ChatPrivacy,
                    u => u.MapFrom(m => m.PrivacySetting.ChatPrivacy)
                )
                .ForMember(
                    d => d.SendRequest,
                    u => u.MapFrom(m => m.PrivacySetting.SendRequest)
                );
        }
    }
}