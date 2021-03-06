USE [master]
GO
/****** Object:  Database [AlternativaSistemas.Teste.DB]    Script Date: 09/03/2022 08:40:52 ******/
CREATE DATABASE [AlternativaSistemas.Teste.DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AlternativaSistemas.Teste.DB', FILENAME = N'C:\Users\Seth Sebeck\AlternativaSistemas.Teste.DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AlternativaSistemas.Teste.DB_log', FILENAME = N'C:\Users\Seth Sebeck\AlternativaSistemas.Teste.DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AlternativaSistemas.Teste.DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET  MULTI_USER 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET QUERY_STORE = OFF
GO
USE [AlternativaSistemas.Teste.DB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [AlternativaSistemas.Teste.DB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09/03/2022 08:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 09/03/2022 08:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](1024) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 09/03/2022 08:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](1024) NOT NULL,
	[value] [decimal](10, 2) NOT NULL,
	[brand] [nvarchar](50) NOT NULL,
	[category_id] [int] NOT NULL,
 CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Produtos_category_id]    Script Date: 09/03/2022 08:40:53 ******/
CREATE NONCLUSTERED INDEX [IX_Produtos_category_id] ON [dbo].[Produtos]
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Produtos]  WITH CHECK ADD  CONSTRAINT [FK_Produtos_Categorias_category_id] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categorias] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Produtos] CHECK CONSTRAINT [FK_Produtos_Categorias_category_id]
GO
USE [master]
GO
ALTER DATABASE [AlternativaSistemas.Teste.DB] SET  READ_WRITE 
GO
