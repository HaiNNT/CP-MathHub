
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/24/2015 12:41:25
-- Generated from EDMX file: D:\FPT\Capstone Project\CP-MathHub.git\trunk\code\backend\CP-MathHub\CP-MathHub.Entity\CPMathHubModel.edmx
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
IF OBJECT_ID(N'[dbo].[FK_TagUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tags] DROP CONSTRAINT [FK_TagUser];
GO
IF OBJECT_ID(N'[dbo].[FK_UserMainPost_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserMainPost] DROP CONSTRAINT [FK_UserMainPost_User];
GO
IF OBJECT_ID(N'[dbo].[FK_UserMainPost_MainPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserMainPost] DROP CONSTRAINT [FK_UserMainPost_MainPost];
GO
IF OBJECT_ID(N'[dbo].[FK_UserMainPost1_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserMainPost1] DROP CONSTRAINT [FK_UserMainPost1_User];
GO
IF OBJECT_ID(N'[dbo].[FK_UserMainPost1_MainPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserMainPost1] DROP CONSTRAINT [FK_UserMainPost1_MainPost];
GO
IF OBJECT_ID(N'[dbo].[FK_SubscriptionUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subscriptions] DROP CONSTRAINT [FK_SubscriptionUser];
GO
IF OBJECT_ID(N'[dbo].[FK_SubscriptionUser1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subscriptions] DROP CONSTRAINT [FK_SubscriptionUser1];
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
IF OBJECT_ID(N'[dbo].[FK_FriendRequestionUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserRelationships] DROP CONSTRAINT [FK_FriendRequestionUser];
GO
IF OBJECT_ID(N'[dbo].[FK_FriendRequestionUser1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserRelationships] DROP CONSTRAINT [FK_FriendRequestionUser1];
GO
IF OBJECT_ID(N'[dbo].[FK_EditedContentPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EditedContents] DROP CONSTRAINT [FK_EditedContentPost];
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
IF OBJECT_ID(N'[dbo].[FK_ActivityUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Activities] DROP CONSTRAINT [FK_ActivityUser];
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
IF OBJECT_ID(N'[dbo].[Subscriptions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Subscriptions];
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
IF OBJECT_ID(N'[dbo].[UserRelationships]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserRelationships];
GO
IF OBJECT_ID(N'[dbo].[PrivacySettings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PrivacySettings];
GO
IF OBJECT_ID(N'[dbo].[EditedContents]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EditedContents];
GO
IF OBJECT_ID(N'[dbo].[Participations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Participations];
GO
IF OBJECT_ID(N'[dbo].[ReputationRules]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReputationRules];
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
IF OBJECT_ID(N'[dbo].[UserMainPost]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserMainPost];
GO
IF OBJECT_ID(N'[dbo].[UserMainPost1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserMainPost1];
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
    [Status] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Username] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Reputaion] int  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [Status] int  NOT NULL
);
GO

-- Creating table 'Profiles'
CREATE TABLE [dbo].[Profiles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FullName] nvarchar(max)  NOT NULL,
    [School] nvarchar(max)  NOT NULL,
    [Birthday] datetime  NOT NULL,
    [Location] nvarchar(max)  NOT NULL,
    [Facebook] nvarchar(max)  NOT NULL,
    [Summary] nvarchar(max)  NOT NULL,
    [ViewPoint] nvarchar(max)  NOT NULL,
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
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'Subscriptions'
CREATE TABLE [dbo].[Subscriptions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SubsAction] int  NOT NULL,
    [FollowerId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Invitations'
CREATE TABLE [dbo].[Invitations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [InvitedDate] nvarchar(max)  NOT NULL,
    [MainPostId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Votes'
CREATE TABLE [dbo].[Votes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [VotedDate] nvarchar(max)  NOT NULL,
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
    [AssessedDate] datetime  NOT NULL
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
    [Score] nvarchar(max)  NOT NULL,
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
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Attendances'
CREATE TABLE [dbo].[Attendances] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [JoinedDate] nvarchar(max)  NOT NULL,
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

-- Creating table 'UserRelationships'
CREATE TABLE [dbo].[UserRelationships] (
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
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'EditedContents'
CREATE TABLE [dbo].[EditedContents] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [PostId] int  NOT NULL
);
GO

-- Creating table 'Participations'
CREATE TABLE [dbo].[Participations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Role] int  NOT NULL,
    [JoinedDate] datetime  NOT NULL,
    [Status] int  NOT NULL,
    [UserId] int  NOT NULL,
    [GroupId] int  NOT NULL
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

-- Creating table 'BookmarkPost'
CREATE TABLE [dbo].[BookmarkPost] (
    [BookmarkUsers_Id] int  NOT NULL,
    [Bookmarks_Id] int  NOT NULL
);
GO

-- Creating table 'FollowPost'
CREATE TABLE [dbo].[FollowPost] (
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

-- Creating primary key on [Id] in table 'Subscriptions'
ALTER TABLE [dbo].[Subscriptions]
ADD CONSTRAINT [PK_Subscriptions]
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

-- Creating primary key on [Id] in table 'UserRelationships'
ALTER TABLE [dbo].[UserRelationships]
ADD CONSTRAINT [PK_UserRelationships]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PrivacySettings'
ALTER TABLE [dbo].[PrivacySettings]
ADD CONSTRAINT [PK_PrivacySettings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EditedContents'
ALTER TABLE [dbo].[EditedContents]
ADD CONSTRAINT [PK_EditedContents]
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

-- Creating primary key on [BookmarkUsers_Id], [Bookmarks_Id] in table 'BookmarkPost'
ALTER TABLE [dbo].[BookmarkPost]
ADD CONSTRAINT [PK_BookmarkPost]
    PRIMARY KEY CLUSTERED ([BookmarkUsers_Id], [Bookmarks_Id] ASC);
GO

-- Creating primary key on [FollowUsers_Id], [FollowPosts_Id] in table 'FollowPost'
ALTER TABLE [dbo].[FollowPost]
ADD CONSTRAINT [PK_FollowPost]
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
    ON DELETE NO ACTION ON UPDATE NO ACTION;

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

-- Creating non-clustered index for FOREIGN KEY 'FK_FavoriteTag_User'
CREATE INDEX [IX_FK_FavoriteTag_User]
ON [dbo].[FavoriteTag]
    ([FavoriteUsers_Id]);
GO

-- Creating foreign key on [UserId] in table 'Tags'
ALTER TABLE [dbo].[Tags]
ADD CONSTRAINT [FK_TagUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TagUser'
CREATE INDEX [IX_FK_TagUser]
ON [dbo].[Tags]
    ([UserId]);
GO

-- Creating foreign key on [BookmarkUsers_Id] in table 'BookmarkPost'
ALTER TABLE [dbo].[BookmarkPost]
ADD CONSTRAINT [FK_UserMainPost_User]
    FOREIGN KEY ([BookmarkUsers_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Bookmarks_Id] in table 'BookmarkPost'
ALTER TABLE [dbo].[BookmarkPost]
ADD CONSTRAINT [FK_UserMainPost_MainPost]
    FOREIGN KEY ([Bookmarks_Id])
    REFERENCES [dbo].[Posts_MainPost]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserMainPost_MainPost'
CREATE INDEX [IX_FK_UserMainPost_MainPost]
ON [dbo].[BookmarkPost]
    ([Bookmarks_Id]);
GO

-- Creating foreign key on [FollowUsers_Id] in table 'FollowPost'
ALTER TABLE [dbo].[FollowPost]
ADD CONSTRAINT [FK_UserMainPost1_User]
    FOREIGN KEY ([FollowUsers_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [FollowPosts_Id] in table 'FollowPost'
ALTER TABLE [dbo].[FollowPost]
ADD CONSTRAINT [FK_UserMainPost1_MainPost]
    FOREIGN KEY ([FollowPosts_Id])
    REFERENCES [dbo].[Posts_MainPost]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserMainPost1_MainPost'
CREATE INDEX [IX_FK_UserMainPost1_MainPost]
ON [dbo].[FollowPost]
    ([FollowPosts_Id]);
GO

-- Creating foreign key on [FollowerId] in table 'Subscriptions'
ALTER TABLE [dbo].[Subscriptions]
ADD CONSTRAINT [FK_SubscriptionUser]
    FOREIGN KEY ([FollowerId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubscriptionUser'
CREATE INDEX [IX_FK_SubscriptionUser]
ON [dbo].[Subscriptions]
    ([FollowerId]);
GO

-- Creating foreign key on [UserId] in table 'Subscriptions'
ALTER TABLE [dbo].[Subscriptions]
ADD CONSTRAINT [FK_SubscriptionUser1]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubscriptionUser1'
CREATE INDEX [IX_FK_SubscriptionUser1]
ON [dbo].[Subscriptions]
    ([UserId]);
GO

-- Creating foreign key on [MainPostId] in table 'Invitations'
ALTER TABLE [dbo].[Invitations]
ADD CONSTRAINT [FK_InvitationMainPost]
    FOREIGN KEY ([MainPostId])
    REFERENCES [dbo].[Posts_MainPost]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_InvitationMainPost'
CREATE INDEX [IX_FK_InvitationMainPost]
ON [dbo].[Invitations]
    ([MainPostId]);
GO

-- Creating foreign key on [UserId] in table 'Invitations'
ALTER TABLE [dbo].[Invitations]
ADD CONSTRAINT [FK_InviteUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_InviteUser'
CREATE INDEX [IX_FK_InviteUser]
ON [dbo].[Invitations]
    ([UserId]);
GO

-- Creating foreign key on [PostId] in table 'Votes'
ALTER TABLE [dbo].[Votes]
ADD CONSTRAINT [FK_VotePost]
    FOREIGN KEY ([PostId])
    REFERENCES [dbo].[Posts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

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
    ON DELETE NO ACTION ON UPDATE NO ACTION;

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
    ON DELETE NO ACTION ON UPDATE NO ACTION;

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
    ON DELETE NO ACTION ON UPDATE NO ACTION;

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
    ON DELETE NO ACTION ON UPDATE NO ACTION;

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

-- Creating non-clustered index for FOREIGN KEY 'FK_ShareMainPost_MainPost'
CREATE INDEX [IX_FK_ShareMainPost_MainPost]
ON [dbo].[ShareMainPost]
    ([SharedMainPosts_Id]);
GO

-- Creating foreign key on [UserId] in table 'UserRelationships'
ALTER TABLE [dbo].[UserRelationships]
ADD CONSTRAINT [FK_FriendRequestionUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FriendRequestionUser'
CREATE INDEX [IX_FK_FriendRequestionUser]
ON [dbo].[UserRelationships]
    ([UserId]);
GO

-- Creating foreign key on [TargetUserId] in table 'UserRelationships'
ALTER TABLE [dbo].[UserRelationships]
ADD CONSTRAINT [FK_FriendRequestionUser1]
    FOREIGN KEY ([TargetUserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FriendRequestionUser1'
CREATE INDEX [IX_FK_FriendRequestionUser1]
ON [dbo].[UserRelationships]
    ([TargetUserId]);
GO

-- Creating foreign key on [PostId] in table 'EditedContents'
ALTER TABLE [dbo].[EditedContents]
ADD CONSTRAINT [FK_EditedContentPost]
    FOREIGN KEY ([PostId])
    REFERENCES [dbo].[Posts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EditedContentPost'
CREATE INDEX [IX_FK_EditedContentPost]
ON [dbo].[EditedContents]
    ([PostId]);
GO

-- Creating foreign key on [UserId] in table 'Notifications'
ALTER TABLE [dbo].[Notifications]
ADD CONSTRAINT [FK_NotificationUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

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
    ON DELETE NO ACTION ON UPDATE NO ACTION;

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
    ON DELETE NO ACTION ON UPDATE NO ACTION;

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

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupArticle'
CREATE INDEX [IX_FK_GroupArticle]
ON [dbo].[Posts_Article]
    ([GroupId]);
GO

-- Creating foreign key on [User_Id] in table 'Activities'
ALTER TABLE [dbo].[Activities]
ADD CONSTRAINT [FK_ActivityUser]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ActivityUser'
CREATE INDEX [IX_FK_ActivityUser]
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