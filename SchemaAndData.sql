USE [Chatter]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/16/2017 1:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/16/2017 1:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/16/2017 1:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/16/2017 1:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/16/2017 1:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/16/2017 1:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chat]    Script Date: 8/16/2017 1:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chat](
	[ChatID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[Message] [nvarchar](200) NOT NULL,
	[PostingDate] [datetime] NOT NULL CONSTRAINT [DF_Chat_PostingDate]  DEFAULT (getdate()),
	[Id] [nvarchar](128) NULL,
 CONSTRAINT [PK_Chat] PRIMARY KEY CLUSTERED 
(
	[ChatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Like]    Script Date: 8/16/2017 1:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Like](
	[LikeID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NULL,
	[ChatID] [int] NULL,
 CONSTRAINT [PK_Like] PRIMARY KEY CLUSTERED 
(
	[LikeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201708151417234_InitialCreate', N'Chatter.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E3FC0F90F829E7A0E522B97B38B6D60EF2275929EA09B0BD6D9A26F0B5AA21D61254A95A83441D15FD687FEA4FE850E254A166FBAD88AED140B2C2272F8CD70382487C3A1FFFAE3CFF187A730B01E7192FA1199D847A343DBC2C48D3C9F2C27764617DFBEB33FBCFFF7BFC6175EF864FD54D29D303A6849D289FD40697CEA38A9FB8043948E42DF4DA2345AD0911B850EF222E7F8F0F03BE7E8C8C100610396658D3F6584FA21CE3FE0731A1117C73443C175E4E120E5E55033CB51AD1B14E234462E9ED8D30744294E4605A56D9D053E0229663858D8162224A288828CA79F533CA3494496B3180A5070FF1C63A05BA020C55CF6D31579D76E1C1EB36E38AB8625949BA5340A7B021E9D70BD3872F3B5B46B577A03CD5D8086E933EB75AEBD897DE5E1BCE8531480026486A7D32061C413FBBA627196C637988ECA86A302F23201B85FA3E4EBA88E7860756E7750D9D1F1E890FD3BB0A65940B3044F08CE68828203EB2E9B07BEFB237EBE8FBE623239399A2F4EDEBD798BBC93B7FFC3276FEA3D85BE029D500045774914E30464C38BAAFFB6E588ED1CB961D5ACD6A6D00AD8124C09DBBA464F1F3159D207982CC7EF6CEBD27FC25E59C28DEB33F1610641239A64F0799305019A07B8AA771A79B2FF1BB81EBF793B08D71BF4E82FF3A197F8C3C449605E7DC2415E9B3EF87131BD84F1FEC2C92E932864DFA27D15B55F665196B8AC339191E41E254B4C45E9C6CECA783B9934831ADEAC4BD4FD376D26A96ADE5A52D6A1756642C962DBB3A194F765F976B6B8B33886C1CB4D8B69A4C9E0C48D6A24B504C328EA572673D4D5640874E59FBC025E84C80F0658023B7001CF63E12721AE7AF97D040687486F99EF509AC20AE0FD1FA50F0DA2C39F03883EC36E968061CE280AE317E776F710117C93857366EFDBE335D8D0DCFF1A5D229746C90561AD36C6FB18B95FA38C5E10EF1C51FC99BA2520FBBCF7C3EE00838873E6BA384D2FC198B1378DC0B12E01AF083D39EE0DC716A75DBB20D300F9A1DE079196D12F25E9CA0FD15328BE88814CE78F3489FA315AFAA49BA825A959D482A255544ED6575406D64D524E691634276895B3A01ACCC3CB476878172F87DD7F1F6FB3CDDBB416D4D438831512FF80094E6019F3EE72E784AC46A0CBBAB10B67211F3EC6F4C5F7A69CD34F28C88666B5D66CC81781E167430EBBFFB32117138A1F7D8F79251D0E3E2531C077A2D79FA9DAE79C24D9B6A783D0CD6D33DFCE1A609A2E67691AB97E3E0B34212F1EB010E5071FCE6A8F5E14BD912320D03130749F6D7950027DB365A3BA25E738C0145B676E11129CA2D4459EAA46E890D743B07247D508B68A8488C2FD57E109968E13D608B143500A33D527549D163E71FD1805AD5A925A76DCC258DF2B1E72CD398E31610C5B35D185B93EF0C104A8F84883D2A6A1B153B3B866433478ADA6316F736157E3AEC423B662932DBEB3C12EB9FFF62286D9ACB12D1867B34ABA08600CE2EDC240F959A5AB01C807977D3350E9C4643050EE526DC540458DEDC0404595BC3A032D8EA85DC75F3AAFEE9B798A07E5ED6FEB8DEADA816D0AFAD833D32C7C4F6843A1054E54F33C9FB34AFC4435873390939FCF52EEEACA26C2C067988A219B95BFABF5439D6610D9889A005786D602CAAFFF14206542F510AE8CE5354AC7BD881EB065DCAD1196AFFD126CCD0654ECFA35688DD07C592A1B67A7D347D5B3CA1A1423EF7458A8E1680C425EBCC48E77508A292EAB2AA68B2FDCC71BAE758C0F4683825A3C578392CACE0CAEA5D234DBB5A473C8FAB8641B6949729F0C5A2A3B33B896B88DB62B49E314F4700B365291B8850F34D9CA4847B5DB547563A7C88CE20563C7904235BE4671EC93652DA58A9758339E4FF5EDAC7FB2515860386EAAC939AAA4AD38D128414B2CD5026B90F4D24F527A8E289A2316E7997AA142A6DD5B0DCB7FC9B2BE7DAA8358EE032535FB9BC778C54B7B619F551D11DEFE127A17326F260FA16BC65EDFDC62E96D284089266A3F8D822C2466E7CADCBAB8BBABB72F4A5484B123C9AF384F8AA6141757547BA7415127C4000354F92DEB0F9219C2A4EAD2EBAC2BDBE4899A51CAC0541DC514ACDAD9A0991C98CE0325FB85FDC7A915E165E6134F46A903F0A29E18B57C0605AC56D71D554C39A9638A35DD11A5BC923AA454D543CA7AF6882064BD622D3C8346F514DD39A8F9227574B5B63BB22673A40EADA95E035B23B35CD71D55935C5207D65477C75E659AC80BE81EEF58C6D3CA5A5B567198DD6CCF3260BCCC6A38CC9657BBB3AF03D58A7B62F15B79058C97EFA525194F746B595211BFD8CC920C18E61547B8E916179CC6EB7933A6707D2D2CEA4DD7F766BC7EF6FAA256A11CE664928A7B75A8930E6F637E90EAF048463E591524B655AA1136F4E794E270C40846B35F8269E063B67C9704D788F80B9CD22265C33E3E3C3A96DEDAECCFBB17274DBD407310353D7E11C76C0BD957E41125EE034AD45C880DDE86AC409530F315F1F0D3C4FE2D6F759A472CD85F79F18175957E26FE2F1954DC2719B67E57733B87C9956F3E58EDE9CB86EE5ABDFAF94BD1F4C0BA4D60C69C5A87922ED71961F1BD432F698AA61B48B3F62B88D73BA184A7065A546942ACFFB260EED3415E1594527E13A2A7FFF4154DFB72602344CDEB80A1F00651A129FB7F1D2C63E6BF079F34CFFCEFD759FD4B80754433BE02F0497F30F90D40F765A86CB9C3AD46731EDAC69294EBB935877AA384CA5DEF4D4AAAF546135D4DA7EE01B741CAF41A96F1CAB28D07DB1D35C9C48361EFD2B45F3C83785F928657E91CBBCD15DE667A70C355D03F2A2B780FF2D8347939BBCFFDDDB6AD9962B87B9E40D92FC377CF8C8D676BED3E8F77DBC6660AF3EEB9B1F5CAD6DD335BDBD5FEB9634BEBBC85EE3CF7564D2332DCC5E862C16DB9B545E01C4EF8F3088CA0F0288B2791FA64AEA644D416862B123353731699CC5899380A5F85A2996DBFBEF20DBFB1B39CA699AD21F7B289375FFF1B79739A66DE868CC65D64056B730A7599DA2DEB5853E2D36BCA02167AD29274DEE6B3365EACBFA6A4DF419422CC1EC31DF1EBC9F11D4425434E9D1E39BDEA752FEC9DB55F4E84FD3BF5972B08F63B8A04BBC2AE59D15C9145546EDE9244258914A1B9C61479B0A59E25D45F209742358B31E76FBAF3B81DBBE99863EF8ADC6634CE28741987F34008783127A0897F9EB82CCA3CBE8DF39F2719A20B20A6CF62F3B7E4FBCC0FBC4AEE4B4D4CC800C1BC0B1ED1656349596477F95C21DD44A42310575FE514DDE3300E002CBD2533F488D7910DCCEF235E22F77915013481B40F84A8F6F1B98F96090A538EB16A0F9F60C35EF8F4FE6FDF41516C40540000, N'6.1.3-40302')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8460dc33-08f5-452e-877d-8921f54dc0c7', N'drobin45@kent.edu', 0, N'ADmPsdQhoUBYRJkT5QdoLTHJmQLpbyPkTGLHIbkhTkhIxPKz4T9V01EkgD2M395l9Q==', N'63247dbf-0fca-468d-8392-c29d859cf1bc', NULL, 0, 0, NULL, 1, 0, N'drobin45@kent.edu')
SET IDENTITY_INSERT [dbo].[Chat] ON 

INSERT [dbo].[Chat] ([ChatID], [UserID], [Message], [PostingDate], [Id]) VALUES (3, N'dbr801', N'Single quotes actually', CAST(N'2017-08-15 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Chat] ([ChatID], [UserID], [Message], [PostingDate], [Id]) VALUES (4, N'dbr801', N'Single quotes actually', CAST(N'2017-08-15 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Chat] ([ChatID], [UserID], [Message], [PostingDate], [Id]) VALUES (5, N'drobin', N'Not a very good inaugaral message :/', CAST(N'2017-08-15 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Chat] ([ChatID], [UserID], [Message], [PostingDate], [Id]) VALUES (6, N'dbr801', N'Well, maybe it is not so bad for an inaugaral message', CAST(N'2017-08-15 00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Chat] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_AspNetUsers1] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_AspNetUsers1]
GO
ALTER TABLE [dbo].[Chat]  WITH CHECK ADD  CONSTRAINT [FK_Chat_AspNetUsers] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Chat] CHECK CONSTRAINT [FK_Chat_AspNetUsers]
GO
