/****** Object:  ForeignKey [FK_TicketAttachments_Tickets]    Script Date: 12/05/2010 18:31:00 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketAttachments_Tickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketAttachments]'))
ALTER TABLE [dbo].[TicketAttachments] DROP CONSTRAINT [FK_TicketAttachments_Tickets]

/****** Object:  ForeignKey [FK_TicketComments_Tickets]    Script Date: 12/05/2010 18:31:00 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketComments_Tickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketComments]'))
ALTER TABLE [dbo].[TicketComments] DROP CONSTRAINT [FK_TicketComments_Tickets]

/****** Object:  ForeignKey [FK_TicketEventNotifications_TicketComments]    Script Date: 12/05/2010 18:31:00 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketEventNotifications_TicketComments]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketEventNotifications]'))
ALTER TABLE [dbo].[TicketEventNotifications] DROP CONSTRAINT [FK_TicketEventNotifications_TicketComments]

/****** Object:  ForeignKey [FK_TicketTags_Tickets]    Script Date: 12/05/2010 18:31:00 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketTags_Tickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketTags]'))
ALTER TABLE [dbo].[TicketTags] DROP CONSTRAINT [FK_TicketTags_Tickets]

/****** Object:  Table [dbo].[TicketEventNotifications]    Script Date: 12/05/2010 18:31:00 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketEventNotifications_TicketComments]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketEventNotifications]'))
ALTER TABLE [dbo].[TicketEventNotifications] DROP CONSTRAINT [FK_TicketEventNotifications_TicketComments]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TicketEventNotifications]') AND type in (N'U'))
DROP TABLE [dbo].[TicketEventNotifications]

/****** Object:  Table [dbo].[TicketAttachments]    Script Date: 12/05/2010 18:31:00 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketAttachments_Tickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketAttachments]'))
ALTER TABLE [dbo].[TicketAttachments] DROP CONSTRAINT [FK_TicketAttachments_Tickets]

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[TicketAttachments_IsPending]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketAttachments] DROP CONSTRAINT [TicketAttachments_IsPending]
END

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TicketAttachments]') AND type in (N'U'))
DROP TABLE [dbo].[TicketAttachments]

/****** Object:  Table [dbo].[TicketComments]    Script Date: 12/05/2010 18:31:00 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketComments_Tickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketComments]'))
ALTER TABLE [dbo].[TicketComments] DROP CONSTRAINT [FK_TicketComments_Tickets]

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_TicketComments_IsHtml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketComments] DROP CONSTRAINT [DF_TicketComments_IsHtml]
END

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_TicketComments_CommentDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TicketComments] DROP CONSTRAINT [DF_TicketComments_CommentDate]
END

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TicketComments]') AND type in (N'U'))
DROP TABLE [dbo].[TicketComments]

/****** Object:  Table [dbo].[TicketTags]    Script Date: 12/05/2010 18:31:00 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketTags_Tickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketTags]'))
ALTER TABLE [dbo].[TicketTags] DROP CONSTRAINT [FK_TicketTags_Tickets]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TicketTags]') AND type in (N'U'))
DROP TABLE [dbo].[TicketTags]

/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 12/05/2010 18:31:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_GetErrorsXml]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ELMAH_GetErrorsXml]

/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 12/05/2010 18:31:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_GetErrorXml]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ELMAH_GetErrorXml]

/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 12/05/2010 18:31:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_LogError]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ELMAH_LogError]

/****** Object:  Table [dbo].[Settings]    Script Date: 12/05/2010 18:31:00 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Settings_SettingType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [DF_Settings_SettingType]
END

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Settings]') AND type in (N'U'))
DROP TABLE [dbo].[Settings]

/****** Object:  Table [dbo].[AdCachedRoleMembers]    Script Date: 12/05/2010 18:31:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdCachedRoleMembers]') AND type in (N'U'))
DROP TABLE [dbo].[AdCachedRoleMembers]

/****** Object:  Table [dbo].[AdCachedUserProperties]    Script Date: 12/05/2010 18:31:00 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AdCachedUserProperties_IsActiveInAd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AdCachedUserProperties] DROP CONSTRAINT [DF_AdCachedUserProperties_IsActiveInAd]
END

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdCachedUserProperties]') AND type in (N'U'))
DROP TABLE [dbo].[AdCachedUserProperties]

/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 12/05/2010 18:31:00 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ELMAH_Error_ErrorId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ELMAH_Error] DROP CONSTRAINT [DF_ELMAH_Error_ErrorId]
END

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_Error]') AND type in (N'U'))
DROP TABLE [dbo].[ELMAH_Error]

/****** Object:  Table [dbo].[Tickets]    Script Date: 12/05/2010 18:31:00 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Tickets_IsHtml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tickets] DROP CONSTRAINT [DF_Tickets_IsHtml]
END

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Tickets_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tickets] DROP CONSTRAINT [DF_Tickets_CreatedDate]
END

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Tickets_AffectsCustomer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tickets] DROP CONSTRAINT [DF_Tickets_AffectsCustomer]
END

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Tickets_PublishedToKb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tickets] DROP CONSTRAINT [DF_Tickets_PublishedToKb]
END

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tickets]') AND type in (N'U'))
DROP TABLE [dbo].[Tickets]

/****** Object:  Table [dbo].[Tickets]    Script Date: 12/05/2010 18:31:00 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tickets]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tickets](
	[TicketId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[Details] [ntext] NOT NULL,
	[IsHtml] [bit] NOT NULL CONSTRAINT [DF_Tickets_IsHtml]  DEFAULT ((0)),
	[TagList] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Tickets_CreatedDate]  DEFAULT (getdate()),
	[Owner] [nvarchar](100) NOT NULL,
	[AssignedTo] [nvarchar](100) NULL,
	[CurrentStatus] [nvarchar](50) NOT NULL,
	[CurrentStatusDate] [datetime] NOT NULL,
	[CurrentStatusSetBy] [nvarchar](100) NOT NULL,
	[LastUpdateBy] [nvarchar](100) NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
	[Priority] [nvarchar](25) NULL,
	[AffectsCustomer] [bit] NOT NULL CONSTRAINT [DF_Tickets_AffectsCustomer]  DEFAULT ((0)),
	[PublishedToKb] [bit] NOT NULL CONSTRAINT [DF_Tickets_PublishedToKb]  DEFAULT ((0)),
	[Version] [timestamp] NOT NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[TicketId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END

/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 12/05/2010 18:31:00 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_Error]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ELMAH_Error](
	[ErrorId] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ELMAH_Error_ErrorId]  DEFAULT (newid()),
	[Application] [nvarchar](60) NOT NULL,
	[Host] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Source] [nvarchar](60) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[StatusCode] [int] NOT NULL,
	[TimeUtc] [datetime] NOT NULL,
	[Sequence] [int] IDENTITY(1,1) NOT NULL,
	[AllXml] [ntext] NOT NULL,
 CONSTRAINT [PK_ELMAH_Error] PRIMARY KEY NONCLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END

CREATE NONCLUSTERED INDEX [IX_ELMAH_Error_App_Time_Seq]
    ON [dbo].[ELMAH_Error]([Application] ASC, [TimeUtc] DESC, [Sequence] DESC)

/****** Object:  Table [dbo].[AdCachedUserProperties]    Script Date: 12/05/2010 18:31:00 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdCachedUserProperties]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AdCachedUserProperties](
	[UserName] [nvarchar](150) NOT NULL,
	[PropertyName] [nvarchar](100) NOT NULL,
	[PropertyValue] [nvarchar](250) NULL,
	[LastRefreshed] [datetime] NULL,
	[IsActiveInAd] [bit] NOT NULL CONSTRAINT [DF_AdCachedUserProperties_IsActiveInAd]  DEFAULT ((1)),
 CONSTRAINT [PK_AdCachedUserProperties] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC,
	[PropertyName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END

/****** Object:  Table [dbo].[AdCachedRoleMembers]    Script Date: 12/05/2010 18:31:00 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdCachedRoleMembers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AdCachedRoleMembers](
	[GroupName] [nvarchar](150) NOT NULL,
	[MemberName] [nvarchar](150) NOT NULL,
	[MemberDisplayName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_AdCachedRoleMembers] PRIMARY KEY CLUSTERED 
(
	[GroupName] ASC,
	[MemberName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END

/****** Object:  Table [dbo].[Settings]    Script Date: 12/05/2010 18:31:00 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Settings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Settings](
	[SettingName] [nvarchar](50) NOT NULL,
	[SettingValue] [nvarchar](max) NULL,
	[DefaultValue] [nvarchar](max) NULL,
	[SettingType] [nvarchar](50) NOT NULL CONSTRAINT [DF_Settings_SettingType]  DEFAULT (N'SimpleString'),
	[SettingDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[SettingName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END

INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'AdUserPropertiesSqlCacheRefreshMinutes', N'120', N'120', N'IntString', N'Used only in AD environments; sets the amount of time the system will wait before updating the user properties in the SQL cache.\n\nThese values are less critical than other values cached from AD (such as the list of group members), and so these properties can be refreshed less frequently. This value should be the same or higher than the "Refresh Security Cache Minutes" setting. ')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'AllowSubmitterRoleToEditPriority', N'false', N'false', N'BoolString', N'If true submitters can set the priority field either during ticket creation, or in the ticket editor. Setting this to false reserves the priority field for help desk staff use only, though priorities will still be visible to submitters once set by the staff. \n\nIn all cases, the priority is an optional field.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'AllowSubmitterRoleToEditTags', N'true', N'true', N'BoolString', N'If true submitters can set tags during ticket creation and in the ticket editor. Setting this to false reserves the tags for help desk staff use only, though tags will still be visible to submitters once set by the staff.\n\nTagging is encouraged as it assists in later ticket searches.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'BlindCopyToEmailAddress', N'', N'', N'SimpleString', N'An email address that should be blind copied (BCC) on all email notifiacitons.\n\nUsually this is left blank, but can be useful as a diagnostic tool to test the notificiations system.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'CategoryList', N'Hardware,Software,Network', N'Hardware,Software,Network', N'StringList', N'This is the list of possible selections for the Category dropdown list.\n\nIs is advised that your use generic categories. The recommended rule-of-thumb is that there should be one option that fits any possible ticket a user might create, and there should NOT be a value such as "other", "N/A", or "unknown". Keeping the values general in nature increases the odds that users will pick a meaningful value.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'CleanupPendingAttachmentsAfterHours', N'1', N'1', N'IntString', N'This setting controls how long the system will leave pending attachments in the database before purging them.\n\nWhen users first upload an attachment to a ticket, the attachment is in an uncommitted state. This gives the user time to finish writing comments, adding more files, filling in other fields, etc. If for some reason the user does not finish submitting/updating the ticket, these attachments remain on the server for a while (in case they come back).')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'CreateSqlMembershipRegistrationsAsSubmitters', N'true', N'true', N'BoolString', N'If true new users that register will automatically be added to the submitters role.\n\nIf your system is exposed to the public, and you do NOT intend for the general public to be able to use your system, you should set this to false and require that an admin manually grant new users permissions.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'EmailDeliveryTimerIntervalMinutes', N'3', N'3', N'IntString', N'Determines how often TicketDesk will fire off the background process that examines the email notifications queue.\n\nGenerally 1 - 5 minutes is appropriate for most environments, but you can change this if you want.\n\nYou should not set this to a value lower than the "Email Notification Initial Delay Minutes" setting.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'EmailMaxConsolidationWaitMinutes', N'12', N'12', N'DoubleString', N'This setting controls the max amount of time that the system will continue waiting on additional changes to a ticket before going ahead and sending a notifiaciton email.\n\nIf changes continue to occur to a ticket within the wait-period, the system will continue to wait before sending the email until either the changes slow down or the limit set by this setting is reached. \n\nThe value here can contain a decimal. This value should be larger or the same as the "Email Notification Initial Delay Minutes" setting.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'EmailMaxDeliveryAttempts', N'5', N'5', N'IntString', N'How many times the system will attempt to deliver an email notifications before giving up.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'EmailNotificationInitialDelayMinutes', N'6', N'6', N'DoubleString', N'This controls the minimum amount of time after a notification for a ticket change has been queued before the system will send the notification.\n\nIf additional changes to a ticket occurs before this time is reached, TicketDesk will consolidate the multiple notifications into a single message rather than spamming the user with multiple messages about each change. Each time a new change occurs, the amount of time to wait is incremented again by this same value.\n\nThe value here can contain a decimal. The value should never be lower than the "Email Delivery Timer Interval Minutes" setting (they can be the same), and should also not be shorter than the "Email Max Consolidation Wait Minutes" setting (again, they can be the same).')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'EmailResendDelayMinutes', N'5', N'5', N'IntString', N'This setting detemines how long TicketDesk will wait if there is an error when trying to send an email notification. Each time the notification failes, the wiat time will be the number of attempts times the value of this setting: Example, if the setting is 5 and message fails the third attempt, it will wait 15 minutes before trying again.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'EmailServiceName', N'DefaultEmailHandler', N'DefaultEmailHandler', N'SimpleString', N'Change this setting only if you have created a custom MEF module to handle email delivery! This should be the name of the MEF Export Contract Name of your custom email module. If you don''t know what that means, then DO NOT TOUCH THIS SETTING!')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'EnableEmailNotifications', N'true', N'true', N'BoolString', N'This setting controls if the email notifications system is enabled or not.\n\nIf set to false, the system will still queue up notificaitons, but it will never send them out to the users.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'EnableOutlookFriendlyHtmlEmail', N'false', N'false', N'BoolString', N'Determines if TicketDesk will use the email template that is "friendly" to outlook email clients when generating the HTML body of an email.\n\nTicketDesk normally generates both an HTML and a Plain text body for emails. The HTML is rendered using real CSS that is supported by the vast majority of browsers and email clients. However, Microsoft''s Outlook (up to 2010) still use Microsoft Word to redner emails, instead of Internet Explorer. Word''s HTML capabilities are very limisted and are not W3C standards based.\n\nIf the majority of your users use Outlook, you should enable this setting so they their emails render well in outlook.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'FromEmailAddress', N'ticketdesk@nowhere.com', N'ticketdesk@nowhere.com', N'SimpleString', N'The email address to use in the "TO" field of email notifiacitons.\n\nUsually this is not a real person''s email address, just a made up address at your organization.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'FromEmailDisplayName', N'TicketDesk', N'TicketDesk', N'SimpleString', N'The "friendly name" to use in the "TO" field of email notifiacitons.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'IsDemo', N'false', N'false', N'BoolString', N'This setting indicates that TicketDesk is running in "demo mode".\n\nCurrently the only thing this affects are attachements. In Demo mode, the attachments system will not store the file contents that are uploaded (to keep people from using your demo site as an ad-hoc warze server).')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'KillAllProfilesOnStartup', N'false', N'false', N'BoolString', N'Setting this to "true" will cause the system to delete stored profile settings for ALL users.\n\nThis is sometimes useful after upgrading TicketDesk to a new version to reset user''s TicketCenter List Settings. The system will auto-regenerate a default set of profile values.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'LuceneDirectory', N'~/TdSearchIndex', N'~/TdSearchIndex', N'SimpleString', N'This is the relative path to the directory where TicketDesk should store the full-text indexes used by the search feature.\n\nYou can use the text "ram" (case sensitive) to tell Lucene.net to use a purely in-memory index, but this is not recommended for your production sites. The asp.net user account will need read/write access to this folder location.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'PriorityList', N'High,Low,Medium', N'High,Low,Medium', N'StringList', N'This is the list of possible selections for the Priority dropdown list.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'RefreshSecurityCacheMinutes', N'30', N'30', N'IntString', N'Used only in AD environments (for right now); sets the amount of time the system will wait before a background process attempts to rebuild the SQL cached values retrieved from AD.\n\nThe system will always rebuild the cache when it first starts up.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'SiteRootUrlForEmail', N'http://localhost:2534', N'http://localhost:2534', N'SimpleString', N'The root URL of the web site; will be used in email notifications to create the fully qualified link URLs. Without a valid setting, users clicking links in their notification email will not be directed to the TicketDesk site.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'TicketTypesList', N'Question,Problem,Request', N'Question,Problem,Request', N'StringList', N'This is the list of possible selections for the Ticket Type dropdown list. The type of ticket is usually the "kind" of issue the user is submitting.\n\nIs is advised that your use generic types. The recommended rule-of-thumb is that there should be one option that fits any possible ticket a user might create, and there should NOT be a value such as "other", "N/A", or "unknown". Keeping the values general in nature increases the odds that users will pick a meaningful value.')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'HideHomePage',N'false',N'false',N'BoolString',N'Hide the home tab from the main menu and makes TicketCenter default home page')
INSERT [dbo].[Settings] ([SettingName], [SettingValue], [DefaultValue], [SettingType], [SettingDescription]) VALUES (N'Version', N'2.0.2',N'2.0.0', N'SimpleString',N'The version of the TicketDesk database. CHANGE AT YOUR OWN RISK!')
                 



/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 12/05/2010 18:31:01 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_LogError]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[ELMAH_LogError]
(
    @ErrorId UNIQUEIDENTIFIER,
    @Application NVARCHAR(60),
    @Host NVARCHAR(30),
    @Type NVARCHAR(100),
    @Source NVARCHAR(60),
    @Message NVARCHAR(500),
    @User NVARCHAR(50),
    @AllXml NTEXT,
    @StatusCode INT,
    @TimeUtc DATETIME
)
AS

    SET NOCOUNT ON

    INSERT
    INTO
        [ELMAH_Error]
        (
            [ErrorId],
            [Application],
            [Host],
            [Type],
            [Source],
            [Message],
            [User],
            [AllXml],
            [StatusCode],
            [TimeUtc]
        )
    VALUES
        (
            @ErrorId,
            @Application,
            @Host,
            @Type,
            @Source,
            @Message,
            @User,
            @AllXml,
            @StatusCode,
            @TimeUtc
        )

' 
END

/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 12/05/2010 18:31:01 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_GetErrorXml]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[ELMAH_GetErrorXml]
(
    @Application NVARCHAR(60),
    @ErrorId UNIQUEIDENTIFIER
)
AS

    SET NOCOUNT ON

    SELECT 
        [AllXml]
    FROM 
        [ELMAH_Error]
    WHERE
        [ErrorId] = @ErrorId
    AND
        [Application] = @Application

' 
END

/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 12/05/2010 18:31:01 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_GetErrorsXml]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[ELMAH_GetErrorsXml]
(
    @Application NVARCHAR(60),
    @PageIndex INT = 0,
    @PageSize INT = 15,
    @TotalCount INT OUTPUT
)
AS 

    SET NOCOUNT ON

    DECLARE @FirstTimeUTC DATETIME
    DECLARE @FirstSequence INT
    DECLARE @StartRow INT
    DECLARE @StartRowIndex INT

    SELECT 
        @TotalCount = COUNT(1) 
    FROM 
        [ELMAH_Error]
    WHERE 
        [Application] = @Application

    -- Get the ID of the first error for the requested page

    SET @StartRowIndex = @PageIndex * @PageSize + 1

    IF @StartRowIndex <= @TotalCount
    BEGIN

        SET ROWCOUNT @StartRowIndex

        SELECT  
            @FirstTimeUTC = [TimeUtc],
            @FirstSequence = [Sequence]
        FROM 
            [ELMAH_Error]
        WHERE   
            [Application] = @Application
        ORDER BY 
            [TimeUtc] DESC, 
            [Sequence] DESC

    END
    ELSE
    BEGIN

        SET @PageSize = 0

    END

    -- Now set the row count to the requested page size and get
    -- all records below it for the pertaining application.

    SET ROWCOUNT @PageSize

    SELECT 
        errorId     = [ErrorId], 
        application = [Application],
        host        = [Host], 
        type        = [Type],
        source      = [Source],
        message     = [Message],
        [user]      = [User],
        statusCode  = [StatusCode], 
        time        = CONVERT(VARCHAR(50), [TimeUtc], 126) + ''Z''
    FROM 
        [ELMAH_Error] error
    WHERE
        [Application] = @Application
    AND
        [TimeUtc] <= @FirstTimeUTC
    AND 
        [Sequence] <= @FirstSequence
    ORDER BY
        [TimeUtc] DESC, 
        [Sequence] DESC
    FOR
        XML AUTO

' 
END

/****** Object:  Table [dbo].[TicketTags]    Script Date: 12/05/2010 18:31:00 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TicketTags]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TicketTags](
	[TicketTagId] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](100) NOT NULL,
	[TicketId] [int] NOT NULL,
 CONSTRAINT [PK_TicketTags] PRIMARY KEY CLUSTERED 
(
	[TicketTagId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END

/****** Object:  Table [dbo].[TicketComments]    Script Date: 12/05/2010 18:31:00 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TicketComments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TicketComments](
	[TicketId] [int] NOT NULL,
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[CommentEvent] [nvarchar](500) NULL,
	[Comment] [ntext] NULL,
	[IsHtml] [bit] NOT NULL CONSTRAINT [DF_TicketComments_IsHtml]  DEFAULT ((0)),
	[CommentedBy] [nvarchar](100) NOT NULL,
	[CommentedDate] [datetime] NOT NULL CONSTRAINT [DF_TicketComments_CommentDate]  DEFAULT (getdate()),
	[Version] [timestamp] NOT NULL,
 CONSTRAINT [PK_TicketComments] PRIMARY KEY CLUSTERED 
(
	[TicketId] ASC,
	[CommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END

/****** Object:  Table [dbo].[TicketAttachments]    Script Date: 12/05/2010 18:31:00 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TicketAttachments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TicketAttachments](
	[TicketId] [int] NULL,
	[FileId] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](255) NOT NULL,
	[FileSize] [int] NOT NULL,
	[FileType] [nvarchar](250) NOT NULL,
	[UploadedBy] [nvarchar](100) NOT NULL,
	[UploadedDate] [datetime] NOT NULL,
	[FileContents] [varbinary](max) NOT NULL,
	[FileDescription] [nvarchar](500) NULL,
	[IsPending] [bit] NOT NULL CONSTRAINT [TicketAttachments_IsPending]  DEFAULT ((0)),
 CONSTRAINT [PK_TicketAttachments] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END

SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[TicketEventNotifications]    Script Date: 12/05/2010 18:31:00 ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TicketEventNotifications]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TicketEventNotifications](
	[TicketId] [int] NOT NULL,
	[CommentId] [int] NOT NULL,
	[NotifyUser] [nvarchar](100) NOT NULL,
	[NotifyUserDisplayName] [nvarchar](100) NOT NULL,
	[NotifyEmail] [nvarchar](255) NOT NULL,
	[NotifyUserReason] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[DeliveryAttempts] [int] NOT NULL,
	[LastDeliveryAttemptDate] [datetime] NULL,
	[Status] [nvarchar](20) NOT NULL,
	[NextDeliveryAttemptDate] [datetime] NULL,
	[EventGeneratedByUser] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_TicketEventNotifications] PRIMARY KEY CLUSTERED 
(
	[TicketId] ASC,
	[CommentId] ASC,
	[NotifyUser] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END

/****** Object:  ForeignKey [FK_TicketAttachments_Tickets]    Script Date: 12/05/2010 18:31:00 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketAttachments_Tickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketAttachments]'))
ALTER TABLE [dbo].[TicketAttachments]  WITH CHECK ADD  CONSTRAINT [FK_TicketAttachments_Tickets] FOREIGN KEY([TicketId])
REFERENCES [dbo].[Tickets] ([TicketId])

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketAttachments_Tickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketAttachments]'))
ALTER TABLE [dbo].[TicketAttachments] CHECK CONSTRAINT [FK_TicketAttachments_Tickets]

/****** Object:  ForeignKey [FK_TicketComments_Tickets]    Script Date: 12/05/2010 18:31:00 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketComments_Tickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketComments]'))
ALTER TABLE [dbo].[TicketComments]  WITH CHECK ADD  CONSTRAINT [FK_TicketComments_Tickets] FOREIGN KEY([TicketId])
REFERENCES [dbo].[Tickets] ([TicketId])
ON DELETE CASCADE

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketComments_Tickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketComments]'))
ALTER TABLE [dbo].[TicketComments] CHECK CONSTRAINT [FK_TicketComments_Tickets]

/****** Object:  ForeignKey [FK_TicketEventNotifications_TicketComments]    Script Date: 12/05/2010 18:31:00 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketEventNotifications_TicketComments]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketEventNotifications]'))
ALTER TABLE [dbo].[TicketEventNotifications]  WITH CHECK ADD  CONSTRAINT [FK_TicketEventNotifications_TicketComments] FOREIGN KEY([TicketId], [CommentId])
REFERENCES [dbo].[TicketComments] ([TicketId], [CommentId])

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketEventNotifications_TicketComments]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketEventNotifications]'))
ALTER TABLE [dbo].[TicketEventNotifications] CHECK CONSTRAINT [FK_TicketEventNotifications_TicketComments]

/****** Object:  ForeignKey [FK_TicketTags_Tickets]    Script Date: 12/05/2010 18:31:00 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketTags_Tickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketTags]'))
ALTER TABLE [dbo].[TicketTags]  WITH CHECK ADD  CONSTRAINT [FK_TicketTags_Tickets] FOREIGN KEY([TicketId])
REFERENCES [dbo].[Tickets] ([TicketId])
ON DELETE CASCADE

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TicketTags_Tickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TicketTags]'))
ALTER TABLE [dbo].[TicketTags] CHECK CONSTRAINT [FK_TicketTags_Tickets]

DROP TABLE [dbo].[__MigrationHistory]