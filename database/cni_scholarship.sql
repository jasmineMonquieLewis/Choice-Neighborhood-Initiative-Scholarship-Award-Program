USE [master]
GO
/****** Object:  Database [Scholarship_Program]    Script Date: 6/3/2019 8:36:07 PM ******/
CREATE DATABASE [Scholarship_Program]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Scholarship_Program', FILENAME = N'C:\Users\dholmes\Scholarship_Program.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Scholarship_Program_log', FILENAME = N'C:\Users\dholmes\Scholarship_Program_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Scholarship_Program] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Scholarship_Program].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Scholarship_Program] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Scholarship_Program] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Scholarship_Program] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Scholarship_Program] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Scholarship_Program] SET ARITHABORT OFF 
GO
ALTER DATABASE [Scholarship_Program] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Scholarship_Program] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Scholarship_Program] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Scholarship_Program] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Scholarship_Program] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Scholarship_Program] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Scholarship_Program] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Scholarship_Program] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Scholarship_Program] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Scholarship_Program] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Scholarship_Program] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Scholarship_Program] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Scholarship_Program] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Scholarship_Program] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Scholarship_Program] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Scholarship_Program] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Scholarship_Program] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Scholarship_Program] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Scholarship_Program] SET  MULTI_USER 
GO
ALTER DATABASE [Scholarship_Program] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Scholarship_Program] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Scholarship_Program] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Scholarship_Program] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Scholarship_Program] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Scholarship_Program] SET QUERY_STORE = OFF
GO
USE [Scholarship_Program]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Scholarship_Program]
GO
/****** Object:  Table [dbo].[ElectronicApplications]    Script Date: 6/3/2019 8:36:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectronicApplications](
	[ElectronicApplicationID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[CellPhone] [varchar](50) NULL,
	[MailingStreetAddress] [varchar](50) NULL,
	[MailingCity] [varchar](50) NULL,
	[MailingState] [char](2) NULL,
	[MailingZipCode] [int] NULL,
	[BirthMonth] [int] NULL,
	[BirthDay] [int] NULL,
	[BirthYear] [int] NULL,
	[Sex] [varchar](50) NULL,
	[GPA] [varchar](50) NULL,
	[IsFirstToAttendCollege] [bit] NULL,
	[SchoolCurrentlyAttending] [varchar](100) NULL,
	[SchoolCityStateCurrentlyAttending] [varchar](100) NULL,
	[AcademicHonors] [varchar](500) NULL,
	[NonAcademicAwards] [varchar](500) NULL,
	[MembershipActivities] [varchar](500) NULL,
	[HobbiesOutsideInterests] [varchar](500) NULL,
	[ExtracurricularActivites] [varchar](500) NULL,
	[SchoolRelatedVolunteerActivites] [varchar](500) NULL,
	[CollegeToAttend] [varchar](500) NULL,
	[CollegeChoiceOne] [varchar](500) NULL,
	[CollegeChoiceTwo] [varchar](500) NULL,
	[CollegeChoiceThree] [varchar](500) NULL,
	[IsRelativeEmployeeOfHano] [bit] NULL,
	[ParentOrLegalGuardianFirstName] [varchar](100) NULL,
	[ParentOrLegalGuardianLastName] [varchar](100) NULL,
	[ParentOrLegalGuardianStreetAddress] [varchar](100) NULL,
	[ParentOrLegalGuardianCity] [varchar](100) NULL,
	[ParentOrLegalGuardianState] [char](2) NULL,
	[ParentOrLegalGuardianZipCode] [int] NULL,
	[ParentOrLegalGuardianHomePhone] [varchar](20) NULL,
	[ParentOrLegalGuardianWorkPhone] [varchar](20) NULL,
	[SignatureOfScholarshipApplicant] [varchar](100) NULL,
	[SignatureOfScholarshipApplicantDate] [varchar](50) NULL,
	[OfficalSubmissionDate] [datetime] NULL,
 CONSTRAINT [PK_ElectronicApplications] PRIMARY KEY CLUSTERED 
(
	[ElectronicApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UploadedApplications]    Script Date: 6/3/2019 8:36:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UploadedApplications](
	[UploadedApplicationID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[CellPhone] [char](15) NULL,
	[SignatureOfScholarshipApplicantDate] [varchar](50) NULL,
	[OfficalDBSubmissionDate] [datetime] NULL,
	[fk_UploadedByUserID] [int] NULL,
 CONSTRAINT [PK_UploadedApplications_1] PRIMARY KEY CLUSTERED 
(
	[UploadedApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/3/2019 8:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Scholarship_Program] SET  READ_WRITE 
GO
