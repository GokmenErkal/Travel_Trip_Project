USE [master]
GO
/****** Object:  Database [TravelDb]    Script Date: 30.05.2023 14:27:15 ******/
CREATE DATABASE [TravelDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TravelDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TravelDb.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TravelDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TravelDb_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TravelDb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TravelDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TravelDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TravelDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TravelDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TravelDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TravelDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [TravelDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TravelDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TravelDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TravelDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TravelDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TravelDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TravelDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TravelDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TravelDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TravelDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TravelDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TravelDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TravelDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TravelDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TravelDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TravelDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TravelDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TravelDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TravelDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TravelDb] SET  MULTI_USER 
GO
ALTER DATABASE [TravelDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TravelDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TravelDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TravelDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TravelDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 30.05.2023 14:27:15 ******/
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
/****** Object:  Table [dbo].[Admins]    Script Date: 30.05.2023 14:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici] [nvarchar](max) NULL,
	[Sifre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Admins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AdresBlogs]    Script Date: 30.05.2023 14:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdresBlogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
	[AdresAcik] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Telefon] [nvarchar](max) NULL,
	[Konum] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AdresBlogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 30.05.2023 14:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NULL,
	[Tarih] [datetime] NULL,
	[Aciklama] [nvarchar](max) NOT NULL,
	[BlogImage] [nvarchar](max) NULL,
	[BitisTarihi] [datetime] NULL,
	[Fiyat] [nvarchar](max) NULL,
	[TurDetay] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Blogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hakkimizdas]    Script Date: 30.05.2023 14:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hakkimizdas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FotoUrl] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Hakkimizdas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[iletisims]    Script Date: 30.05.2023 14:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iletisims](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Konu] [nvarchar](max) NULL,
	[Mesaj] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.iletisims] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OtelRezervasyons]    Script Date: 30.05.2023 14:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtelRezervasyons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](max) NULL,
	[Soyad] [nvarchar](max) NULL,
	[Telefon] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[KisiSayisi] [int] NOT NULL,
	[DogumTarihi] [datetime] NULL,
	[Otelid] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OtelRezervasyons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Otels]    Script Date: 30.05.2023 14:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otels](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OtelBaslik] [nvarchar](max) NULL,
	[OtelImage] [nvarchar](max) NULL,
	[Konum] [nvarchar](max) NULL,
	[Fiyat] [nvarchar](max) NULL,
	[OtelDetay] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Otels] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TurRezervasyons]    Script Date: 30.05.2023 14:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurRezervasyons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](max) NULL,
	[Soyad] [nvarchar](max) NULL,
	[Telefon] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[MisafirSayisi] [int] NOT NULL,
	[DogumT] [datetime] NULL,
	[Blogid] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TurRezervasyons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 30.05.2023 14:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici] [nvarchar](max) NULL,
	[Sifre] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Yorumlars]    Script Date: 30.05.2023 14:27:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorumlars](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Yorum] [nvarchar](max) NULL,
	[Blogid] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Yorumlars] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_Otelid]    Script Date: 30.05.2023 14:27:15 ******/
CREATE NONCLUSTERED INDEX [IX_Otelid] ON [dbo].[OtelRezervasyons]
(
	[Otelid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Blogid]    Script Date: 30.05.2023 14:27:15 ******/
CREATE NONCLUSTERED INDEX [IX_Blogid] ON [dbo].[TurRezervasyons]
(
	[Blogid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Blogid]    Script Date: 30.05.2023 14:27:15 ******/
CREATE NONCLUSTERED INDEX [IX_Blogid] ON [dbo].[Yorumlars]
(
	[Blogid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OtelRezervasyons]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OtelRezervasyons_dbo.Otels_Otelid] FOREIGN KEY([Otelid])
REFERENCES [dbo].[Otels] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OtelRezervasyons] CHECK CONSTRAINT [FK_dbo.OtelRezervasyons_dbo.Otels_Otelid]
GO
ALTER TABLE [dbo].[TurRezervasyons]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurRezervasyons_dbo.Blogs_Blogid] FOREIGN KEY([Blogid])
REFERENCES [dbo].[Blogs] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TurRezervasyons] CHECK CONSTRAINT [FK_dbo.TurRezervasyons_dbo.Blogs_Blogid]
GO
ALTER TABLE [dbo].[Yorumlars]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Yorumlars_dbo.Blogs_Blogid] FOREIGN KEY([Blogid])
REFERENCES [dbo].[Blogs] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Yorumlars] CHECK CONSTRAINT [FK_dbo.Yorumlars_dbo.Blogs_Blogid]
GO
USE [master]
GO
ALTER DATABASE [TravelDb] SET  READ_WRITE 
GO
