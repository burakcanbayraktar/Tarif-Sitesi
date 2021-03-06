USE [yeme]
GO
/****** Object:  Table [dbo].[kullanıcılar]    Script Date: 15.01.2022 19:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullanıcılar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kad] [varchar](100) NOT NULL,
	[sifre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_kullanıcılar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yem]    Script Date: 15.01.2022 19:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[foto] [image] NOT NULL,
	[baslik] [varchar](100) NOT NULL,
	[icerik] [varchar](500) NOT NULL,
 CONSTRAINT [PK_yem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yemn]    Script Date: 15.01.2022 19:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yemn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[foto] [varchar](100) NOT NULL,
	[baslik] [varchar](50) NOT NULL,
	[icerik] [varchar](500) NOT NULL,
 CONSTRAINT [PK_yemn] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[kullanıcılar] ON 

INSERT [dbo].[kullanıcılar] ([id], [kad], [sifre]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[kullanıcılar] OFF
GO
SET IDENTITY_INSERT [dbo].[yemn] ON 

INSERT [dbo].[yemn] ([id], [foto], [baslik], [icerik]) VALUES (8, N'fistikli-baklava-yemekcom1.jpg', N'baklava ', N'ince hamurlar yardımıyla yapılıuyor')
INSERT [dbo].[yemn] ([id], [foto], [baslik], [icerik]) VALUES (9, N'suboregi.jpg', N'Su Böreği', N'ince hamurlar yardımıyla yapılıuyor')
SET IDENTITY_INSERT [dbo].[yemn] OFF
GO
