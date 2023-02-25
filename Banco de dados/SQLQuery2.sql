USE [master]
GO
/****** Object:  Database [calculadora_simuladora]    Script Date: 23/02/2023 22:10:54 ******/
CREATE DATABASE [calculadora_simuladora]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'calculadora_simuladora', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\calculadora_simuladora.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'calculadora_simuladora_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\calculadora_simuladora_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [calculadora_simuladora] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [calculadora_simuladora].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [calculadora_simuladora] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET ARITHABORT OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [calculadora_simuladora] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [calculadora_simuladora] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [calculadora_simuladora] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET  ENABLE_BROKER 
GO
ALTER DATABASE [calculadora_simuladora] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [calculadora_simuladora] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [calculadora_simuladora] SET  MULTI_USER 
GO
ALTER DATABASE [calculadora_simuladora] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [calculadora_simuladora] SET DB_CHAINING OFF 
GO
ALTER DATABASE [calculadora_simuladora] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [calculadora_simuladora] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [calculadora_simuladora] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [calculadora_simuladora] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [calculadora_simuladora] SET QUERY_STORE = OFF
GO
USE [calculadora_simuladora]
GO
/****** Object:  Table [dbo].[simulacao_calculadora_juros]    Script Date: 23/02/2023 22:10:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[simulacao_calculadora_juros](
	[id_simulacao] [int] IDENTITY(1,1) NOT NULL,
	[valor_inicial] [decimal](15, 2) NOT NULL,
	[valor_aporte_mensal] [decimal](15, 2) NOT NULL,
	[taxa_juros] [decimal](10, 4) NOT NULL,
	[quantidade_tempo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_simulacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_simulacao]    Script Date: 23/02/2023 22:10:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_simulacao](
	[id_simulacao] [int] NOT NULL,
	[nome_pessoa] [varchar](100) NOT NULL,
	[descricao] [varchar](200) NULL,
	[data_simulacao] [date] NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [calculadora_simuladora] SET  READ_WRITE 
GO
