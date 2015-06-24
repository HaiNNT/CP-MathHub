
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/24/2015 18:50:48
-- Generated from EDMX file: D:\FPT\Capstone Project\CP-MathHub\code\backend\CP-MathHub\CP-MathHub.Entity\CPMathHubModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MathHubDatabase];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_PostUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Posts] DROP CONSTRAINT [FK_PostUser];
GO
IF OBJECT_ID(N'[dbo].[FK_ProfileUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Profiles] DROP CONSTRAINT [FK_ProfileUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CommentPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Posts_Comment] DROP CONSTRAINT [FK_CommentPost];
GO
IF OBJECT_ID(N'[dbo].[FK_QuestionAnswer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Posts_Answer] DROP CONSTRAINT [FK_QuestionAnswer];
GO
IF OBJECT_ID(N'[dbo].[FK_TagMainPost_Tag]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TagMainPost] DROP CONSTRAINT [FK_TagMainPost_Tag];
GO
IF OBJECT_ID(N'[dbo].[FK_TagMainPost_MainPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TagMainPost] DROP CONSTRAINT [FK_TagMainPost_MainPost];
GO
IF OBJECT_ID(N'[dbo].[FK_FavoriteTag_Tag]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FavoriteTag] DROP CONSTRAINT [FK_FavoriteTag_Tag];
GO
IF OBJECT_ID(N'[dbo].[FK_FavoriteTag_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FavoriteTag] DROP CONSTRAINT [FK_FavoriteTag_User];
GO
IF OBJECT_ID(N'[dbo].[FK_CreateTag]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tags] DROP CONSTRAINT [FK_CreateTag];
GO
IF OBJECT_ID(N'[dbo].[FK_BookmarkMainPost_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BookmarkMainPost] DROP CONSTRAINT [FK_BookmarkMainPost_User];
GO
IF OBJECT_ID(N'[dbo].[FK_BookmarkMainPost_MainPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BookmarkMainPost] DROP CONSTRAINT [FK_BookmarkMainPost_MainPost];
GO
IF OBJECT_ID(N'[dbo].[FK_FollowMainPost_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FollowMainPost] DROP CONSTRAINT [FK_FollowMainPost_User];
GO
IF OBJECT_ID(N'[dbo].[FK_FollowMainPost_MainPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FollowMainPost] DROP CONSTRAINT [FK_FollowMainPost_MainPost];
GO
IF OBJECT_ID(N'[dbo].[FK_InvitationMainPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Invitations] DROP CONSTRAINT [FK_InvitationMainPost];
GO
IF OBJECT_ID(N'[dbo].[FK_InviteUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Invitations] DROP CONSTRAINT [FK_InviteUser];
GO
IF OBJECT_ID(N'[dbo].[FK_VotePost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Votes] DROP CONSTRAINT [FK_VotePost];
GO
IF OBJECT_ID(N'[dbo].[FK_VoteUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Votes] DROP CONSTRAINT [FK_VoteUser];
GO
IF OBJECT_ID(N'[dbo].[FK_AssessmentUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Assessments] DROP CONSTRAINT [FK_AssessmentUser];
GO
IF OBJECT_ID(N'[dbo].[FK_AssessmentRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Assessments] DROP CONSTRAINT [FK_AssessmentRole];
GO
IF OBJECT_ID(N'[dbo].[FK_FunctionRole_Function]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FunctionRole] DROP CONSTRAINT [FK_FunctionRole_Function];
GO
IF OBJECT_ID(N'[dbo].[FK_FunctionRole_Role]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FunctionRole] DROP CONSTRAINT [FK_FunctionRole_Role];
GO
IF OBJECT_ID(N'[dbo].[FK_PrivilegeFunction]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Functions] DROP CONSTRAINT [FK_PrivilegeFunction];
GO
IF OBJECT_ID(N'[dbo].[FK_PrivilegeUser_Privilege]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PrivilegeUser] DROP CONSTRAINT [FK_PrivilegeUser_Privilege];
GO
IF OBJECT_ID(N'[dbo].[FK_PrivilegeUser_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PrivilegeUser] DROP CONSTRAINT [FK_PrivilegeUser_User];
GO
IF OBJECT_ID(N'[dbo].[FK_MessageAttendance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Messages] DROP CONSTRAINT [FK_MessageAttendance];
GO
IF OBJECT_ID(N'[dbo].[FK_AttendanceConversation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Attendances] DROP CONSTRAINT [FK_AttendanceConversation];
GO
IF OBJECT_ID(N'[dbo].[FK_AttendanceUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Attendances] DROP CONSTRAINT [FK_AttendanceUser];
GO
IF OBJECT_ID(N'[dbo].[FK_ShareMainPost_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShareMainPost] DROP CONSTRAINT [FK_ShareMainPost_User];
GO
IF OBJECT_ID(N'[dbo].[FK_ShareMainPost_MainPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShareMainPost] DROP CONSTRAINT [FK_ShareMainPost_MainPost];
GO
IF OBJECT_ID(N'[dbo].[FK_RequestFriend]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserFriendships] DROP CONSTRAINT [FK_RequestFriend];
GO
IF OBJECT_ID(N'[dbo].[FK_RequestedFriend]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserFriendships] DROP CONSTRAINT [FK_RequestedFriend];
GO
IF OBJECT_ID(N'[dbo].[FK_EditedContentPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EditedLogs] DROP CONSTRAINT [FK_EditedContentPost];
GO
IF OBJECT_ID(N'[dbo].[FK_NotificationUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Notifications] DROP CONSTRAINT [FK_NotificationUser];
GO
IF OBJECT_ID(N'[dbo].[FK_PrivacySettingUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PrivacySettings] DROP CONSTRAINT [FK_PrivacySettingUser];
GO
IF OBJECT_ID(N'[dbo].[FK_ParticipationUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Participations] DROP CONSTRAINT [FK_ParticipationUser];
GO
IF OBJECT_ID(N'[dbo].[FK_ParticipationGroup]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Participations] DROP CONSTRAINT [FK_ParticipationGroup];
GO
IF OBJECT_ID(N'[dbo].[FK_GroupArticle]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Posts_Article] DROP CONSTRAINT [FK_GroupArticle];
GO
IF OBJECT_ID(N'[dbo].[FK_ReportUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reports] DROP CONSTRAINT [FK_ReportUser];
GO
IF OBJECT_ID(N'[dbo].[FK_ImageUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_ImageUser];
GO
IF OBJECT_ID(N'[dbo].[FK_ReportedUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reports] DROP CONSTRAINT [FK_ReportedUser];
GO
IF OBJECT_ID(N'[dbo].[FK_BannerImage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Banners] DROP CONSTRAINT [FK_BannerImage];
GO
IF OBJECT_ID(N'[dbo].[FK_AdvertisementImage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Advertisements] DROP CONSTRAINT [FK_AdvertisementImage];
GO
IF OBJECT_ID(N'[dbo].[FK_BanAccountBanReason_BanAccount]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BanAccountBanReason] DROP CONSTRAINT [FK_BanAccountBanReason_BanAccount];
GO
IF OBJECT_ID(N'[dbo].[FK_BanAccountBanReason_BanReason]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BanAccountBanReason] DROP CONSTRAINT [FK_BanAccountBanReason_BanReason];
GO
IF OBJECT_ID(N'[dbo].[FK_BanAccountUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BanAccounts] DROP CONSTRAINT [FK_BanAccountUser];
GO
IF OBJECT_ID(N'[dbo].[FK_UserBanAccount]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BanAccounts] DROP CONSTRAINT [FK_UserBanAccount];
GO
IF OBJECT_ID(N'[dbo].[FK_EditedContentUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EditedLogs] DROP CONSTRAINT [FK_EditedContentUser];
GO
IF OBJECT_ID(N'[dbo].[FK_SeriesArticle]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Posts_Article] DROP CONSTRAINT [FK_SeriesArticle];
GO
IF OBJECT_ID(N'[dbo].[FK_SeriesGroup]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Series] DROP CONSTRAINT [FK_SeriesGroup];
GO
IF OBJECT_ID(N'[dbo].[FK_ProfileHistoryUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProfileHistories] DROP CONSTRAINT [FK_ProfileHistoryUser];
GO
IF OBJECT_ID(N'[dbo].[FK_SubscribeGroup_Group]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SubscribeGroup] DROP CONSTRAINT [FK_SubscribeGroup_Group];
GO
IF OBJECT_ID(N'[dbo].[FK_SubscribeGroup_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SubscribeGroup] DROP CONSTRAINT [FK_SubscribeGroup_User];
GO
IF OBJECT_ID(N'[dbo].[FK_Follow_Follower]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Follow] DROP CONSTRAINT [FK_Follow_Follower];
GO
IF OBJECT_ID(N'[dbo].[FK_Follow_Followee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Follow] DROP CONSTRAINT [FK_Follow_Followee];
GO
IF OBJECT_ID(N'[dbo].[FK_InvitedUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Invitations] DROP CONSTRAINT [FK_InvitedUser];
GO
IF OBJECT_ID(N'[dbo].[FK_ReportPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reports] DROP CONSTRAINT [FK_ReportPost];
GO
IF OBJECT_ID(N'[dbo].[FK_LocationLocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Locations] DROP CONSTRAINT [FK_LocationLocation];
GO
IF OBJECT_ID(N'[dbo].[FK_LocationProfile]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Locations] DROP CONSTRAINT [FK_LocationProfile];
GO
IF OBJECT_ID(N'[dbo].[FK_UserActivity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Activities] DROP CONSTRAINT [FK_UserActivity];
GO
IF OBJECT_ID(N'[dbo].[FK_Comment_inherits_Post]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Posts_Comment] DROP CONSTRAINT [FK_Comment_inherits_Post];
GO
IF OBJECT_ID(N'[dbo].[FK_MainPost_inherits_Post]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Posts_MainPost] DROP CONSTRAINT [FK_MainPost_inherits_Post];
GO
IF OBJECT_ID(N'[dbo].[FK_Question_inherits_MainPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Posts_Question] DROP CONSTRAINT [FK_Question_inherits_MainPost];
GO
IF OBJECT_ID(N'[dbo].[FK_Answer_inherits_Post]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Posts_Answer] DROP CONSTRAINT [FK_Answer_inherits_Post];
GO
IF OBJECT_ID(N'[dbo].[FK_Article_inherits_MainPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Posts_Article] DROP CONSTRAINT [FK_Article_inherits_MainPost];
GO
IF OBJECT_ID(N'[dbo].[FK_Discussion_inherits_MainPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Posts_Discussion] DROP CONSTRAINT [FK_Discussion_inherits_MainPost];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Posts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Posts];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Profiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Profiles];
GO
IF OBJECT_ID(N'[dbo].[Tags]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tags];
GO
IF OBJECT_ID(N'[dbo].[Groups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Groups];
GO
IF OBJECT_ID(N'[dbo].[Invitations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Invitations];
GO
IF OBJECT_ID(N'[dbo].[Votes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Votes];
GO
IF OBJECT_ID(N'[dbo].[Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Roles];
GO
IF OBJECT_ID(N'[dbo].[Assessments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Assessments];
GO
IF OBJECT_ID(N'[dbo].[Functions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Functions];
GO
IF OBJECT_ID(N'[dbo].[Privileges]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Privileges];
GO
IF OBJECT_ID(N'[dbo].[Messages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Messages];
GO
IF OBJECT_ID(N'[dbo].[Conversations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Conversations];
GO
IF OBJECT_ID(N'[dbo].[Attendances]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Attendances];
GO
IF OBJECT_ID(N'[dbo].[Activities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Activities];
GO
IF OBJECT_ID(N'[dbo].[Notifications]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Notifications];
GO
IF OBJECT_ID(N'[dbo].[UserFriendships]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserFriendships];
GO
IF OBJECT_ID(N'[dbo].[PrivacySettings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PrivacySettings];
GO
IF OBJECT_ID(N'[dbo].[EditedLogs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EditedLogs];
GO
IF OBJECT_ID(N'[dbo].[Participations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Participations];
GO
IF OBJECT_ID(N'[dbo].[ReputationRules]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReputationRules];
GO
IF OBJECT_ID(N'[dbo].[Reports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reports];
GO
IF OBJECT_ID(N'[dbo].[Images]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Images];
GO
IF OBJECT_ID(N'[dbo].[Banners]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Banners];
GO
IF OBJECT_ID(N'[dbo].[Advertisements]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Advertisements];
GO
IF OBJECT_ID(N'[dbo].[BanAccounts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BanAccounts];
GO
IF OBJECT_ID(N'[dbo].[BanReasons]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BanReasons];
GO
IF OBJECT_ID(N'[dbo].[Series]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Series];
GO
IF OBJECT_ID(N'[dbo].[ProfileHistories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProfileHistories];
GO
IF OBJECT_ID(N'[dbo].[Locations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Locations];
GO
IF OBJECT_ID(N'[dbo].[Posts_Comment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Posts_Comment];
GO
IF OBJECT_ID(N'[dbo].[Posts_MainPost]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Posts_MainPost];
GO
IF OBJECT_ID(N'[dbo].[Posts_Question]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Posts_Question];
GO
IF OBJECT_ID(N'[dbo].[Posts_Answer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Posts_Answer];
GO
IF OBJECT_ID(N'[dbo].[Posts_Article]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Posts_Article];
GO
IF OBJECT_ID(N'[dbo].[Posts_Discussion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Posts_Discussion];
GO
IF OBJECT_ID(N'[dbo].[TagMainPost]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TagMainPost];
GO
IF OBJECT_ID(N'[dbo].[FavoriteTag]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FavoriteTag];
GO
IF OBJECT_ID(N'[dbo].[BookmarkMainPost]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BookmarkMainPost];
GO
IF OBJECT_ID(N'[dbo].[FollowMainPost]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FollowMainPost];
GO
IF OBJECT_ID(N'[dbo].[FunctionRole]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FunctionRole];
GO
IF OBJECT_ID(N'[dbo].[PrivilegeUser]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PrivilegeUser];
GO
IF OBJECT_ID(N'[dbo].[ShareMainPost]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShareMainPost];
GO
IF OBJECT_ID(N'[dbo].[BanAccountBanReason]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BanAccountBanReason];
GO
IF OBJECT_ID(N'[dbo].[SubscribeGroup]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SubscribeGroup];
GO
IF OBJECT_ID(N'[dbo].[Follow]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Follow];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Posts'
CREATE TABLE [dbo].[Posts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [LastEditedDate] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [Status] int  NULL,
    [VoteUp] int  NULL,
    [VoteDown] int  NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Username] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Reputation] int  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [Status] int  NOT NULL,
    [Avatar_Id] int  NULL
);
GO

-- Creating table 'Profiles'
CREATE TABLE [dbo].[Profiles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FullName] nvarchar(max)  NOT NULL,
    [School] nvarchar(max)  NULL,
    [Birthday] datetime  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Facebook] nvarchar(max)  NULL,
    [Summary] nvarchar(max)  NULL,
    [ViewPoint] nvarchar(max)  NULL,
    [Gender] int  NULL,
    [Education] int  NOT NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Tags'
CREATE TABLE [dbo].[Tags] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Groups'
CREATE TABLE [dbo].[Groups] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [Type] int  NOT NULL
);
GO

-- Creating table 'Invitations'
CREATE TABLE [dbo].[Invitations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [InvitedDate] datetime  NOT NULL,
    [MainPostId] int  NOT NULL,
    [InviterId] int  NOT NULL,
    [InviteeId] int  NOT NULL
);
GO

-- Creating table 'Votes'
CREATE TABLE [dbo].[Votes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [VotedDate] datetime  NOT NULL,
    [PostId] int  NOT NULL,
    [UserId] int  NOT NULL,
    [Type] int  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Assessments'
CREATE TABLE [dbo].[Assessments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserId] int  NOT NULL,
    [RoleId] int  NOT NULL,
    [AssessedDate] datetime  NOT NULL,
    [ExpireDate] datetime  NOT NULL
);
GO

-- Creating table 'Functions'
CREATE TABLE [dbo].[Functions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Privilege_Id] int  NOT NULL
);
GO

-- Creating table 'Privileges'
CREATE TABLE [dbo].[Privileges] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Score] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Icon] nvarchar(max)  NULL
);
GO

-- Creating table 'Messages'
CREATE TABLE [dbo].[Messages] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [AttendanceId] int  NOT NULL
);
GO

-- Creating table 'Conversations'
CREATE TABLE [dbo].[Conversations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'Attendances'
CREATE TABLE [dbo].[Attendances] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [JoinedDate] datetime  NOT NULL,
    [SeenDate] datetime  NOT NULL,
    [ConversationId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Activities'
CREATE TABLE [dbo].[Activities] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LastSeenInvitation] datetime  NOT NULL,
    [LastSeenSubcription] datetime  NOT NULL,
    [LastSeenNotification] datetime  NOT NULL,
    [LastLogin] datetime  NOT NULL,
    [LastIp] nvarchar(max)  NOT NULL,
    [LastSeenFriendRequest] datetime  NOT NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Notifications'
CREATE TABLE [dbo].[Notifications] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [Seen] bit  NOT NULL,
    [Link] nvarchar(max)  NOT NULL,
    [Type] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'UserFriendships'
CREATE TABLE [dbo].[UserFriendships] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [UserId] int  NOT NULL,
    [TargetUserId] int  NOT NULL,
    [Status] int  NOT NULL,
    [LastChangeStatus] datetime  NOT NULL
);
GO

-- Creating table 'PrivacySettings'
CREATE TABLE [dbo].[PrivacySettings] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReceiveEmail] bit  NOT NULL,
    [SendRequest] int  NOT NULL,
    [SeenBlog] int  NOT NULL,
    [Notification] int  NOT NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'EditedLogs'
CREATE TABLE [dbo].[EditedLogs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [PostId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Participations'
CREATE TABLE [dbo].[Participations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Role] int  NOT NULL,
    [JoinedDate] datetime  NOT NULL,
    [Status] int  NOT NULL,
    [UserId] int  NOT NULL,
    [GroupId] int  NOT NULL,
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'ReputationRules'
CREATE TABLE [dbo].[ReputationRules] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CommentLike] int  NOT NULL,
    [QuestionUpVote] int  NOT NULL,
    [QuestionDownVote] int  NOT NULL,
    [DiscussionLike] int  NOT NULL,
    [ArticleLike] int  NOT NULL,
    [AnswerUpVote] int  NOT NULL,
    [AnswerDownVote] int  NOT NULL,
    [AcceptedAnswer] int  NOT NULL,
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'Reports'
CREATE TABLE [dbo].[Reports] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReportedDate] datetime  NOT NULL,
    [Type] int  NOT NULL,
    [ReporterId] int  NOT NULL,
    [UserId] int  NULL,
    [PostId] int  NOT NULL
);
GO

-- Creating table 'Images'
CREATE TABLE [dbo].[Images] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Url] nvarchar(max)  NOT NULL,
    [Caption] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Banners'
CREATE TABLE [dbo].[Banners] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Link] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [Position] int  NOT NULL,
    [Image_Id] int  NOT NULL
);
GO

-- Creating table 'Advertisements'
CREATE TABLE [dbo].[Advertisements] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Company] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Link] nvarchar(max)  NOT NULL,
    [CreateDate] datetime  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Position] int  NOT NULL,
    [Price] int  NOT NULL,
    [ExpiredDate] datetime  NOT NULL,
    [Duration] int  NOT NULL,
    [Image_Id] int  NOT NULL
);
GO

-- Creating table 'BanAccounts'
CREATE TABLE [dbo].[BanAccounts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [BannedDate] datetime  NOT NULL,
    [Duration] int  NOT NULL,
    [UnBanedDate] datetime  NOT NULL,
    [BannedUserId] int  NOT NULL,
    [BanUserId] int  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BanReasons'
CREATE TABLE [dbo].[BanReasons] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Duration] int  NOT NULL
);
GO

-- Creating table 'Series'
CREATE TABLE [dbo].[Series] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Createddate] nvarchar(max)  NOT NULL,
    [GroupId] int  NOT NULL
);
GO

-- Creating table 'ProfileHistories'
CREATE TABLE [dbo].[ProfileHistories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [Location] nvarchar(max)  NOT NULL,
    [Career] nvarchar(max)  NOT NULL,
    [FromTime] datetime  NOT NULL,
    [ToTime] datetime  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Locations'
CREATE TABLE [dbo].[Locations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [ZipCode] nvarchar(max)  NOT NULL,
    [ParentId] int  NOT NULL,
    [Profile_Id] int  NOT NULL
);
GO

-- Creating table 'Posts_Comment'
CREATE TABLE [dbo].[Posts_Comment] (
    [PostId] int  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'Posts_MainPost'
CREATE TABLE [dbo].[Posts_MainPost] (
    [Title] nvarchar(max)  NOT NULL,
    [View] int  NOT NULL,
    [Privacy] int  NOT NULL,
    [LastViewed] datetime  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'Posts_Question'
CREATE TABLE [dbo].[Posts_Question] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'Posts_Answer'
CREATE TABLE [dbo].[Posts_Answer] (
    [QuestionId] int  NOT NULL,
    [Type] int  NOT NULL,
    [Accepted] bit  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'Posts_Article'
CREATE TABLE [dbo].[Posts_Article] (
    [GroupId] int  NOT NULL,
    [PublicDate] datetime  NULL,
    [SeriesId] int  NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'Posts_Discussion'
CREATE TABLE [dbo].[Posts_Discussion] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'TagMainPost'
CREATE TABLE [dbo].[TagMainPost] (
    [Tags_Id] int  NOT NULL,
    [MainPosts_Id] int  NOT NULL
);
GO

-- Creating table 'FavoriteTag'
CREATE TABLE [dbo].[FavoriteTag] (
    [FavoriteTags_Id] int  NOT NULL,
    [FavoriteUsers_Id] int  NOT NULL
);
GO

-- Creating table 'BookmarkMainPost'
CREATE TABLE [dbo].[BookmarkMainPost] (
    [BookmarkUsers_Id] int  NOT NULL,
    [Bookmarks_Id] int  NOT NULL
);
GO

-- Creating table 'FollowMainPost'
CREATE TABLE [dbo].[FollowMainPost] (
    [FollowUsers_Id] int  NOT NULL,
    [FollowPosts_Id] int  NOT NULL
);
GO

-- Creating table 'FunctionRole'
CREATE TABLE [dbo].[FunctionRole] (
    [Functions_Id] int  NOT NULL,
    [Roles_Id] int  NOT NULL
);
GO

-- Creating table 'PrivilegeUser'
CREATE TABLE [dbo].[PrivilegeUser] (
    [Privileges_Id] int  NOT NULL,
    [Users_Id] int  NOT NULL
);
GO

-- Creating table 'ShareMainPost'
CREATE TABLE [dbo].[ShareMainPost] (
    [Sharers_Id] int  NOT NULL,
    [SharedMainPosts_Id] int  NOT NULL
);
GO

-- Creating table 'BanAccountBanReason'
CREATE TABLE [dbo].[BanAccountBanReason] (
    [BanAccounts_Id] int  NOT NULL,
    [BanReasons_Id] int  NOT NULL
);
GO

-- Creating table 'SubscribeGroup'
CREATE TABLE [dbo].[SubscribeGroup] (
    [SubscribedGroups_Id] int  NOT NULL,
    [Subscribers_Id] int  NOT NULL
);
GO

-- Creating table 'Follow'
CREATE TABLE [dbo].[Follow] (
    [Followees_Id] int  NOT NULL,
    [Followers_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Posts'
ALTER TABLE [dbo].[Posts]
ADD CONSTRAINT [PK_Posts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Profiles'
ALTER TABLE [dbo].[Profiles]
ADD CONSTRAINT [PK_Profiles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tags'
ALTER TABLE [dbo].[Tags]
ADD CONSTRAINT [PK_Tags]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Groups'
ALTER TABLE [dbo].[Groups]
ADD CONSTRAINT [PK_Groups]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Invitations'
ALTER TABLE [dbo].[Invitations]
ADD CONSTRAINT [PK_Invitations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Votes'
ALTER TABLE [dbo].[Votes]
ADD CONSTRAINT [PK_Votes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Assessments'
ALTER TABLE [dbo].[Assessments]
ADD CONSTRAINT [PK_Assessments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Functions'
ALTER TABLE [dbo].[Functions]
ADD CONSTRAINT [PK_Functions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Privileges'
ALTER TABLE [dbo].[Privileges]
ADD CONSTRAINT [PK_Privileges]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [PK_Messages]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Conversations'
ALTER TABLE [dbo].[Conversations]
ADD CONSTRAINT [PK_Conversations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Attendances'
ALTER TABLE [dbo].[Attendances]
ADD CONSTRAINT [PK_Attendances]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Activities'
ALTER TABLE [dbo].[Activities]
ADD CONSTRAINT [PK_Activities]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Notifications'
ALTER TABLE [dbo].[Notifications]
ADD CONSTRAINT [PK_Notifications]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserFriendships'
ALTER TABLE [dbo].[UserFriendships]
ADD CONSTRAINT [PK_UserFriendships]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PrivacySettings'
ALTER TABLE [dbo].[PrivacySettings]
ADD CONSTRAINT [PK_PrivacySettings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EditedLogs'
ALTER TABLE [dbo].[EditedLogs]
ADD CONSTRAINT [PK_EditedLogs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Participations'
ALTER TABLE [dbo].[Participations]
ADD CONSTRAINT [PK_Participations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ReputationRules'
ALTER TABLE [dbo].[ReputationRules]
ADD CONSTRAINT [PK_ReputationRules]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [PK_Reports]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Images'
ALTER TABLE [dbo].[Images]
ADD CONSTRAINT [PK_Images]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Banners'
ALTER TABLE [dbo].[Banners]
ADD CONSTRAINT [PK_Banners]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Advertisements'
ALTER TABLE [dbo].[Advertisements]
ADD CONSTRAINT [PK_Advertisements]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BanAccounts'
ALTER TABLE [dbo].[BanAccounts]
ADD CONSTRAINT [PK_BanAccounts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BanReasons'
ALTER TABLE [dbo].[BanReasons]
ADD CONSTRAINT [PK_BanReasons]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Series'
ALTER TABLE [dbo].[Series]
ADD CONSTRAINT [PK_Series]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProfileHistories'
ALTER TABLE [dbo].[ProfileHistories]
ADD CONSTRAINT [PK_ProfileHistories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [PK_Locations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Posts_Comment'
ALTER TABLE [dbo].[Posts_Comment]
ADD CONSTRAINT [PK_Posts_Comment]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Posts_MainPost'
ALTER TABLE [dbo].[Posts_MainPost]
ADD CONSTRAINT [PK_Posts_MainPost]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Posts_Question'
ALTER TABLE [dbo].[Posts_Question]
ADD CONSTRAINT [PK_Posts_Question]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Posts_Answer'
ALTER TABLE [dbo].[Posts_Answer]
ADD CONSTRAINT [PK_Posts_Answer]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Posts_Article'
ALTER TABLE [dbo].[Posts_Article]
ADD CONSTRAINT [PK_Posts_Article]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Posts_Discussion'
ALTER TABLE [dbo].[Posts_Discussion]
ADD CONSTRAINT [PK_Posts_Discussion]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Tags_Id], [MainPosts_Id] in table 'TagMainPost'
ALTER TABLE [dbo].[TagMainPost]
ADD CONSTRAINT [PK_TagMainPost]
    PRIMARY KEY CLUSTERED ([Tags_Id], [MainPosts_Id] ASC);
GO

-- Creating primary key on [FavoriteTags_Id], [FavoriteUsers_Id] in table 'FavoriteTag'
ALTER TABLE [dbo].[FavoriteTag]
ADD CONSTRAINT [PK_FavoriteTag]
    PRIMARY KEY CLUSTERED ([FavoriteTags_Id], [FavoriteUsers_Id] ASC);
GO

-- Creating primary key on [BookmarkUsers_Id], [Bookmarks_Id] in table 'BookmarkMainPost'
ALTER TABLE [dbo].[BookmarkMainPost]
ADD CONSTRAINT [PK_BookmarkMainPost]
    PRIMARY KEY CLUSTERED ([BookmarkUsers_Id], [Bookmarks_Id] ASC);
GO

-- Creating primary key on [FollowUsers_Id], [FollowPosts_Id] in table 'FollowMainPost'
ALTER TABLE [dbo].[FollowMainPost]
ADD CONSTRAINT [PK_FollowMainPost]
    PRIMARY KEY CLUSTERED ([FollowUsers_Id], [FollowPosts_Id] ASC);
GO

-- Creating primary key on [Functions_Id], [Roles_Id] in table 'FunctionRole'
ALTER TABLE [dbo].[FunctionRole]
ADD CONSTRAINT [PK_FunctionRole]
    PRIMARY KEY CLUSTERED ([Functions_Id], [Roles_Id] ASC);
GO

-- Creating primary key on [Privileges_Id], [Users_Id] in table 'PrivilegeUser'
ALTER TABLE [dbo].[PrivilegeUser]
ADD CONSTRAINT [PK_PrivilegeUser]
    PRIMARY KEY CLUSTERED ([Privileges_Id], [Users_Id] ASC);
GO

-- Creating primary key on [Sharers_Id], [SharedMainPosts_Id] in table 'ShareMainPost'
ALTER TABLE [dbo].[ShareMainPost]
ADD CONSTRAINT [PK_ShareMainPost]
    PRIMARY KEY CLUSTERED ([Sharers_Id], [SharedMainPosts_Id] ASC);
GO

-- Creating primary key on [BanAccounts_Id], [BanReasons_Id] in table 'BanAccountBanReason'
ALTER TABLE [dbo].[BanAccountBanReason]
ADD CONSTRAINT [PK_BanAccountBanReason]
    PRIMARY KEY CLUSTERED ([BanAccounts_Id], [BanReasons_Id] ASC);
GO

-- Creating primary key on [SubscribedGroups_Id], [Subscribers_Id] in table 'SubscribeGroup'
ALTER TABLE [dbo].[SubscribeGroup]
ADD CONSTRAINT [PK_SubscribeGroup]
    PRIMARY KEY CLUSTERED ([SubscribedGroups_Id], [Subscribers_Id] ASC);
GO

-- Creating primary key on [Followees_Id], [Followers_Id] in table 'Follow'
ALTER TABLE [dbo].[Follow]
ADD CONSTRAINT [PK_Follow]
    PRIMARY KEY CLUSTERED ([Followees_Id], [Followers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserId] in table 'Posts'
ALTER TABLE [dbo].[Posts]
ADD CONSTRAINT [FK_PostUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PostUser'
CREATE INDEX [IX_FK_PostUser]
ON [dbo].[Posts]
    ([UserId]);
GO

-- Creating foreign key on [User_Id] in table 'Profiles'
ALTER TABLE [dbo].[Profiles]
ADD CONSTRAINT [FK_ProfileUser]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProfileUser'
CREATE INDEX [IX_FK_ProfileUser]
ON [dbo].[Profiles]
    ([User_Id]);
GO

-- Creating foreign key on [PostId] in table 'Posts_Comment'
ALTER TABLE [dbo].[Posts_Comment]
ADD CONSTRAINT [FK_CommentPost]
    FOREIGN KEY ([PostId])
    REFERENCES [dbo].[Posts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommentPost'
CREATE INDEX [IX_FK_CommentPost]
ON [dbo].[Posts_Comment]
    ([PostId]);
GO

-- Creating foreign key on [QuestionId] in table 'Posts_Answer'
ALTER TABLE [dbo].[Posts_Answer]
ADD CONSTRAINT [FK_QuestionAnswer]
    FOREIGN KEY ([QuestionId])
    REFERENCES [dbo].[Posts_Question]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QuestionAnswer'
CREATE INDEX [IX_FK_QuestionAnswer]
ON [dbo].[Posts_Answer]
    ([QuestionId]);
GO

-- Creating foreign key on [Tags_Id] in table 'TagMainPost'
ALTER TABLE [dbo].[TagMainPost]
ADD CONSTRAINT [FK_TagMainPost_Tag]
    FOREIGN KEY ([Tags_Id])
    REFERENCES [dbo].[Tags]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [MainPosts_Id] in table 'TagMainPost'
ALTER TABLE [dbo].[TagMainPost]
ADD CONSTRAINT [FK_TagMainPost_MainPost]
    FOREIGN KEY ([MainPosts_Id])
    REFERENCES [dbo].[Posts_MainPost]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TagMainPost_MainPost'
CREATE INDEX [IX_FK_TagMainPost_MainPost]
ON [dbo].[TagMainPost]
    ([MainPosts_Id]);
GO

-- Creating foreign key on [FavoriteTags_Id] in table 'FavoriteTag'
ALTER TABLE [dbo].[FavoriteTag]
ADD CONSTRAINT [FK_FavoriteTag_Tag]
    FOREIGN KEY ([FavoriteTags_Id])
    REFERENCES [dbo].[Tags]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [FavoriteUsers_Id] in table 'FavoriteTag'
ALTER TABLE [dbo].[FavoriteTag]
ADD CONSTRAINT [FK_FavoriteTag_User]
    FOREIGN KEY ([FavoriteUsers_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FavoriteTag_User'
CREATE INDEX [IX_FK_FavoriteTag_User]
ON [dbo].[FavoriteTag]
    ([FavoriteUsers_Id]);
GO

-- Creating foreign key on [UserId] in table 'Tags'
ALTER TABLE [dbo].[Tags]
ADD CONSTRAINT [FK_CreateTag]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CreateTag'
CREATE INDEX [IX_FK_CreateTag]
ON [dbo].[Tags]
    ([UserId]);
GO

-- Creating foreign key on [BookmarkUsers_Id] in table 'BookmarkMainPost'
ALTER TABLE [dbo].[BookmarkMainPost]
ADD CONSTRAINT [FK_BookmarkMainPost_User]
    FOREIGN KEY ([BookmarkUsers_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Bookmarks_Id] in table 'BookmarkMainPost'
ALTER TABLE [dbo].[BookmarkMainPost]
ADD CONSTRAINT [FK_BookmarkMainPost_MainPost]
    FOREIGN KEY ([Bookmarks_Id])
    REFERENCES [dbo].[Posts_MainPost]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BookmarkMainPost_MainPost'
CREATE INDEX [IX_FK_BookmarkMainPost_MainPost]
ON [dbo].[BookmarkMainPost]
    ([Bookmarks_Id]);
GO

-- Creating foreign key on [FollowUsers_Id] in table 'FollowMainPost'
ALTER TABLE [dbo].[FollowMainPost]
ADD CONSTRAINT [FK_FollowMainPost_User]
    FOREIGN KEY ([FollowUsers_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [FollowPosts_Id] in table 'FollowMainPost'
ALTER TABLE [dbo].[FollowMainPost]
ADD CONSTRAINT [FK_FollowMainPost_MainPost]
    FOREIGN KEY ([FollowPosts_Id])
    REFERENCES [dbo].[Posts_MainPost]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FollowMainPost_MainPost'
CREATE INDEX [IX_FK_FollowMainPost_MainPost]
ON [dbo].[FollowMainPost]
    ([FollowPosts_Id]);
GO

-- Creating foreign key on [MainPostId] in table 'Invitations'
ALTER TABLE [dbo].[Invitations]
ADD CONSTRAINT [FK_InvitationMainPost]
    FOREIGN KEY ([MainPostId])
    REFERENCES [dbo].[Posts_MainPost]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InvitationMainPost'
CREATE INDEX [IX_FK_InvitationMainPost]
ON [dbo].[Invitations]
    ([MainPostId]);
GO

-- Creating foreign key on [InviterId] in table 'Invitations'
ALTER TABLE [dbo].[Invitations]
ADD CONSTRAINT [FK_InviteUser]
    FOREIGN KEY ([InviterId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InviteUser'
CREATE INDEX [IX_FK_InviteUser]
ON [dbo].[Invitations]
    ([InviterId]);
GO

-- Creating foreign key on [PostId] in table 'Votes'
ALTER TABLE [dbo].[Votes]
ADD CONSTRAINT [FK_VotePost]
    FOREIGN KEY ([PostId])
    REFERENCES [dbo].[Posts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VotePost'
CREATE INDEX [IX_FK_VotePost]
ON [dbo].[Votes]
    ([PostId]);
GO

-- Creating foreign key on [UserId] in table 'Votes'
ALTER TABLE [dbo].[Votes]
ADD CONSTRAINT [FK_VoteUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VoteUser'
CREATE INDEX [IX_FK_VoteUser]
ON [dbo].[Votes]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Assessments'
ALTER TABLE [dbo].[Assessments]
ADD CONSTRAINT [FK_AssessmentUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AssessmentUser'
CREATE INDEX [IX_FK_AssessmentUser]
ON [dbo].[Assessments]
    ([UserId]);
GO

-- Creating foreign key on [RoleId] in table 'Assessments'
ALTER TABLE [dbo].[Assessments]
ADD CONSTRAINT [FK_AssessmentRole]
    FOREIGN KEY ([RoleId])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AssessmentRole'
CREATE INDEX [IX_FK_AssessmentRole]
ON [dbo].[Assessments]
    ([RoleId]);
GO

-- Creating foreign key on [Functions_Id] in table 'FunctionRole'
ALTER TABLE [dbo].[FunctionRole]
ADD CONSTRAINT [FK_FunctionRole_Function]
    FOREIGN KEY ([Functions_Id])
    REFERENCES [dbo].[Functions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Roles_Id] in table 'FunctionRole'
ALTER TABLE [dbo].[FunctionRole]
ADD CONSTRAINT [FK_FunctionRole_Role]
    FOREIGN KEY ([Roles_Id])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FunctionRole_Role'
CREATE INDEX [IX_FK_FunctionRole_Role]
ON [dbo].[FunctionRole]
    ([Roles_Id]);
GO

-- Creating foreign key on [Privilege_Id] in table 'Functions'
ALTER TABLE [dbo].[Functions]
ADD CONSTRAINT [FK_PrivilegeFunction]
    FOREIGN KEY ([Privilege_Id])
    REFERENCES [dbo].[Privileges]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PrivilegeFunction'
CREATE INDEX [IX_FK_PrivilegeFunction]
ON [dbo].[Functions]
    ([Privilege_Id]);
GO

-- Creating foreign key on [Privileges_Id] in table 'PrivilegeUser'
ALTER TABLE [dbo].[PrivilegeUser]
ADD CONSTRAINT [FK_PrivilegeUser_Privilege]
    FOREIGN KEY ([Privileges_Id])
    REFERENCES [dbo].[Privileges]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Users_Id] in table 'PrivilegeUser'
ALTER TABLE [dbo].[PrivilegeUser]
ADD CONSTRAINT [FK_PrivilegeUser_User]
    FOREIGN KEY ([Users_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PrivilegeUser_User'
CREATE INDEX [IX_FK_PrivilegeUser_User]
ON [dbo].[PrivilegeUser]
    ([Users_Id]);
GO

-- Creating foreign key on [AttendanceId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [FK_MessageAttendance]
    FOREIGN KEY ([AttendanceId])
    REFERENCES [dbo].[Attendances]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MessageAttendance'
CREATE INDEX [IX_FK_MessageAttendance]
ON [dbo].[Messages]
    ([AttendanceId]);
GO

-- Creating foreign key on [ConversationId] in table 'Attendances'
ALTER TABLE [dbo].[Attendances]
ADD CONSTRAINT [FK_AttendanceConversation]
    FOREIGN KEY ([ConversationId])
    REFERENCES [dbo].[Conversations]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AttendanceConversation'
CREATE INDEX [IX_FK_AttendanceConversation]
ON [dbo].[Attendances]
    ([ConversationId]);
GO

-- Creating foreign key on [UserId] in table 'Attendances'
ALTER TABLE [dbo].[Attendances]
ADD CONSTRAINT [FK_AttendanceUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AttendanceUser'
CREATE INDEX [IX_FK_AttendanceUser]
ON [dbo].[Attendances]
    ([UserId]);
GO

-- Creating foreign key on [Sharers_Id] in table 'ShareMainPost'
ALTER TABLE [dbo].[ShareMainPost]
ADD CONSTRAINT [FK_ShareMainPost_User]
    FOREIGN KEY ([Sharers_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [SharedMainPosts_Id] in table 'ShareMainPost'
ALTER TABLE [dbo].[ShareMainPost]
ADD CONSTRAINT [FK_ShareMainPost_MainPost]
    FOREIGN KEY ([SharedMainPosts_Id])
    REFERENCES [dbo].[Posts_MainPost]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShareMainPost_MainPost'
CREATE INDEX [IX_FK_ShareMainPost_MainPost]
ON [dbo].[ShareMainPost]
    ([SharedMainPosts_Id]);
GO

-- Creating foreign key on [UserId] in table 'UserFriendships'
ALTER TABLE [dbo].[UserFriendships]
ADD CONSTRAINT [FK_RequestFriend]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RequestFriend'
CREATE INDEX [IX_FK_RequestFriend]
ON [dbo].[UserFriendships]
    ([UserId]);
GO

-- Creating foreign key on [TargetUserId] in table 'UserFriendships'
ALTER TABLE [dbo].[UserFriendships]
ADD CONSTRAINT [FK_RequestedFriend]
    FOREIGN KEY ([TargetUserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RequestedFriend'
CREATE INDEX [IX_FK_RequestedFriend]
ON [dbo].[UserFriendships]
    ([TargetUserId]);
GO

-- Creating foreign key on [PostId] in table 'EditedLogs'
ALTER TABLE [dbo].[EditedLogs]
ADD CONSTRAINT [FK_EditedContentPost]
    FOREIGN KEY ([PostId])
    REFERENCES [dbo].[Posts]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EditedContentPost'
CREATE INDEX [IX_FK_EditedContentPost]
ON [dbo].[EditedLogs]
    ([PostId]);
GO

-- Creating foreign key on [UserId] in table 'Notifications'
ALTER TABLE [dbo].[Notifications]
ADD CONSTRAINT [FK_NotificationUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NotificationUser'
CREATE INDEX [IX_FK_NotificationUser]
ON [dbo].[Notifications]
    ([UserId]);
GO

-- Creating foreign key on [User_Id] in table 'PrivacySettings'
ALTER TABLE [dbo].[PrivacySettings]
ADD CONSTRAINT [FK_PrivacySettingUser]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PrivacySettingUser'
CREATE INDEX [IX_FK_PrivacySettingUser]
ON [dbo].[PrivacySettings]
    ([User_Id]);
GO

-- Creating foreign key on [UserId] in table 'Participations'
ALTER TABLE [dbo].[Participations]
ADD CONSTRAINT [FK_ParticipationUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ParticipationUser'
CREATE INDEX [IX_FK_ParticipationUser]
ON [dbo].[Participations]
    ([UserId]);
GO

-- Creating foreign key on [GroupId] in table 'Participations'
ALTER TABLE [dbo].[Participations]
ADD CONSTRAINT [FK_ParticipationGroup]
    FOREIGN KEY ([GroupId])
    REFERENCES [dbo].[Groups]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ParticipationGroup'
CREATE INDEX [IX_FK_ParticipationGroup]
ON [dbo].[Participations]
    ([GroupId]);
GO

-- Creating foreign key on [GroupId] in table 'Posts_Article'
ALTER TABLE [dbo].[Posts_Article]
ADD CONSTRAINT [FK_GroupArticle]
    FOREIGN KEY ([GroupId])
    REFERENCES [dbo].[Groups]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupArticle'
CREATE INDEX [IX_FK_GroupArticle]
ON [dbo].[Posts_Article]
    ([GroupId]);
GO

-- Creating foreign key on [ReporterId] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [FK_ReportUser]
    FOREIGN KEY ([ReporterId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReportUser'
CREATE INDEX [IX_FK_ReportUser]
ON [dbo].[Reports]
    ([ReporterId]);
GO

-- Creating foreign key on [Avatar_Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_ImageUser]
    FOREIGN KEY ([Avatar_Id])
    REFERENCES [dbo].[Images]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ImageUser'
CREATE INDEX [IX_FK_ImageUser]
ON [dbo].[Users]
    ([Avatar_Id]);
GO

-- Creating foreign key on [UserId] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [FK_ReportedUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReportedUser'
CREATE INDEX [IX_FK_ReportedUser]
ON [dbo].[Reports]
    ([UserId]);
GO

-- Creating foreign key on [Image_Id] in table 'Banners'
ALTER TABLE [dbo].[Banners]
ADD CONSTRAINT [FK_BannerImage]
    FOREIGN KEY ([Image_Id])
    REFERENCES [dbo].[Images]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BannerImage'
CREATE INDEX [IX_FK_BannerImage]
ON [dbo].[Banners]
    ([Image_Id]);
GO

-- Creating foreign key on [Image_Id] in table 'Advertisements'
ALTER TABLE [dbo].[Advertisements]
ADD CONSTRAINT [FK_AdvertisementImage]
    FOREIGN KEY ([Image_Id])
    REFERENCES [dbo].[Images]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdvertisementImage'
CREATE INDEX [IX_FK_AdvertisementImage]
ON [dbo].[Advertisements]
    ([Image_Id]);
GO

-- Creating foreign key on [BanAccounts_Id] in table 'BanAccountBanReason'
ALTER TABLE [dbo].[BanAccountBanReason]
ADD CONSTRAINT [FK_BanAccountBanReason_BanAccount]
    FOREIGN KEY ([BanAccounts_Id])
    REFERENCES [dbo].[BanAccounts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [BanReasons_Id] in table 'BanAccountBanReason'
ALTER TABLE [dbo].[BanAccountBanReason]
ADD CONSTRAINT [FK_BanAccountBanReason_BanReason]
    FOREIGN KEY ([BanReasons_Id])
    REFERENCES [dbo].[BanReasons]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BanAccountBanReason_BanReason'
CREATE INDEX [IX_FK_BanAccountBanReason_BanReason]
ON [dbo].[BanAccountBanReason]
    ([BanReasons_Id]);
GO

-- Creating foreign key on [BannedUserId] in table 'BanAccounts'
ALTER TABLE [dbo].[BanAccounts]
ADD CONSTRAINT [FK_BanAccountUser]
    FOREIGN KEY ([BannedUserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BanAccountUser'
CREATE INDEX [IX_FK_BanAccountUser]
ON [dbo].[BanAccounts]
    ([BannedUserId]);
GO

-- Creating foreign key on [BanUserId] in table 'BanAccounts'
ALTER TABLE [dbo].[BanAccounts]
ADD CONSTRAINT [FK_UserBanAccount]
    FOREIGN KEY ([BanUserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserBanAccount'
CREATE INDEX [IX_FK_UserBanAccount]
ON [dbo].[BanAccounts]
    ([BanUserId]);
GO

-- Creating foreign key on [UserId] in table 'EditedLogs'
ALTER TABLE [dbo].[EditedLogs]
ADD CONSTRAINT [FK_EditedContentUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EditedContentUser'
CREATE INDEX [IX_FK_EditedContentUser]
ON [dbo].[EditedLogs]
    ([UserId]);
GO

-- Creating foreign key on [SeriesId] in table 'Posts_Article'
ALTER TABLE [dbo].[Posts_Article]
ADD CONSTRAINT [FK_SeriesArticle]
    FOREIGN KEY ([SeriesId])
    REFERENCES [dbo].[Series]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SeriesArticle'
CREATE INDEX [IX_FK_SeriesArticle]
ON [dbo].[Posts_Article]
    ([SeriesId]);
GO

-- Creating foreign key on [GroupId] in table 'Series'
ALTER TABLE [dbo].[Series]
ADD CONSTRAINT [FK_SeriesGroup]
    FOREIGN KEY ([GroupId])
    REFERENCES [dbo].[Groups]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SeriesGroup'
CREATE INDEX [IX_FK_SeriesGroup]
ON [dbo].[Series]
    ([GroupId]);
GO

-- Creating foreign key on [UserId] in table 'ProfileHistories'
ALTER TABLE [dbo].[ProfileHistories]
ADD CONSTRAINT [FK_ProfileHistoryUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProfileHistoryUser'
CREATE INDEX [IX_FK_ProfileHistoryUser]
ON [dbo].[ProfileHistories]
    ([UserId]);
GO

-- Creating foreign key on [SubscribedGroups_Id] in table 'SubscribeGroup'
ALTER TABLE [dbo].[SubscribeGroup]
ADD CONSTRAINT [FK_SubscribeGroup_Group]
    FOREIGN KEY ([SubscribedGroups_Id])
    REFERENCES [dbo].[Groups]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Subscribers_Id] in table 'SubscribeGroup'
ALTER TABLE [dbo].[SubscribeGroup]
ADD CONSTRAINT [FK_SubscribeGroup_User]
    FOREIGN KEY ([Subscribers_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SubscribeGroup_User'
CREATE INDEX [IX_FK_SubscribeGroup_User]
ON [dbo].[SubscribeGroup]
    ([Subscribers_Id]);
GO

-- Creating foreign key on [Followees_Id] in table 'Follow'
ALTER TABLE [dbo].[Follow]
ADD CONSTRAINT [FK_Follow_Follower]
    FOREIGN KEY ([Followees_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Followers_Id] in table 'Follow'
ALTER TABLE [dbo].[Follow]
ADD CONSTRAINT [FK_Follow_Followee]
    FOREIGN KEY ([Followers_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Follow_Followee'
CREATE INDEX [IX_FK_Follow_Followee]
ON [dbo].[Follow]
    ([Followers_Id]);
GO

-- Creating foreign key on [InviteeId] in table 'Invitations'
ALTER TABLE [dbo].[Invitations]
ADD CONSTRAINT [FK_InvitedUser]
    FOREIGN KEY ([InviteeId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InvitedUser'
CREATE INDEX [IX_FK_InvitedUser]
ON [dbo].[Invitations]
    ([InviteeId]);
GO

-- Creating foreign key on [PostId] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [FK_ReportPost]
    FOREIGN KEY ([PostId])
    REFERENCES [dbo].[Posts]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReportPost'
CREATE INDEX [IX_FK_ReportPost]
ON [dbo].[Reports]
    ([PostId]);
GO

-- Creating foreign key on [ParentId] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [FK_LocationLocation]
    FOREIGN KEY ([ParentId])
    REFERENCES [dbo].[Locations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LocationLocation'
CREATE INDEX [IX_FK_LocationLocation]
ON [dbo].[Locations]
    ([ParentId]);
GO

-- Creating foreign key on [Profile_Id] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [FK_LocationProfile]
    FOREIGN KEY ([Profile_Id])
    REFERENCES [dbo].[Profiles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LocationProfile'
CREATE INDEX [IX_FK_LocationProfile]
ON [dbo].[Locations]
    ([Profile_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Activities'
ALTER TABLE [dbo].[Activities]
ADD CONSTRAINT [FK_UserActivity]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserActivity'
CREATE INDEX [IX_FK_UserActivity]
ON [dbo].[Activities]
    ([User_Id]);
GO

-- Creating foreign key on [Id] in table 'Posts_Comment'
ALTER TABLE [dbo].[Posts_Comment]
ADD CONSTRAINT [FK_Comment_inherits_Post]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Posts]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Posts_MainPost'
ALTER TABLE [dbo].[Posts_MainPost]
ADD CONSTRAINT [FK_MainPost_inherits_Post]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Posts]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Posts_Question'
ALTER TABLE [dbo].[Posts_Question]
ADD CONSTRAINT [FK_Question_inherits_MainPost]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Posts_MainPost]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Posts_Answer'
ALTER TABLE [dbo].[Posts_Answer]
ADD CONSTRAINT [FK_Answer_inherits_Post]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Posts]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Posts_Article'
ALTER TABLE [dbo].[Posts_Article]
ADD CONSTRAINT [FK_Article_inherits_MainPost]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Posts_MainPost]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Posts_Discussion'
ALTER TABLE [dbo].[Posts_Discussion]
ADD CONSTRAINT [FK_Discussion_inherits_MainPost]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Posts_MainPost]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------