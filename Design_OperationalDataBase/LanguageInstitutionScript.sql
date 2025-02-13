USE [master]
GO
/****** Object:  Database [Language_Institution_OperationalDataBase]    Script Date: 2/13/2024 11:37:21 AM ******/
CREATE DATABASE [Language_Institution_OperationalDataBase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Table_LI_edited', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Table_LI_edited.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [SECONDRY] 
( NAME = N'Table_LI_edited_Indexes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Table_LI_edited_Indexes.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Table_LI_edited_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Table_LI_edited_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Language_Institution_OperationalDataBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET ARITHABORT OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET RECOVERY FULL 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET  MULTI_USER 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET QUERY_STORE = OFF
GO
USE [Language_Institution_OperationalDataBase]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[book_ID] [int] IDENTITY(1,1) NOT NULL,
	[Level_ID] [int] NOT NULL,
	[book_title] [nvarchar](100) NOT NULL,
	[author] [nvarchar](100) NULL,
	[isbn] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[book_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books_Levels]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books_Levels](
	[Book_ID] [int] NULL,
	[Level_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branches]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branches](
	[branch_id] [int] IDENTITY(1,1) NOT NULL,
	[branch_city] [nvarchar](50) NOT NULL,
	[branch_address] [nvarchar](200) NULL,
	[branch_contact_phone] [nvarchar](20) NULL,
	[NumberofFloors] [int] NULL,
	[NumberofClasses] [int] NULL,
	[Institution_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Category_ID] [int] NOT NULL,
	[Category_Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[Class_ID] [int] NOT NULL,
	[Branch_ID] [int] NOT NULL,
	[Capacity] [int] NOT NULL,
	[FloorinBranch] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Class_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[employee_ID] [int] IDENTITY(1,1) NOT NULL,
	[Institution_ID] [int] NULL,
	[employee_first_name] [nvarchar](50) NOT NULL,
	[employee_last_name] [nvarchar](50) NOT NULL,
	[job_title] [nvarchar](50) NOT NULL,
	[employee_contact_email] [nvarchar](100) NOT NULL,
	[employee_contact_phone] [nvarchar](20) NULL,
	[employee_bank_name] [nvarchar](100) NOT NULL,
	[employee_account_number] [nvarchar](50) NOT NULL,
	[employee_swift_code] [nvarchar](50) NULL,
	[employee_iban] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees_Branches]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees_Branches](
	[employee_ID] [int] NULL,
	[branch_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Institutions]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Institutions](
	[Institution_ID] [int] NOT NULL,
	[InstitutionName] [nvarchar](100) NOT NULL,
	[CentralOffice_city] [nvarchar](50) NOT NULL,
	[CentralOffice_address] [nvarchar](200) NULL,
	[CentralOffice_contact_phone] [varchar](20) NULL,
	[OwnerName] [nvarchar](100) NOT NULL,
	[Owner_Email] [nvarchar](100) NULL,
	[Owner_Phone] [nvarchar](20) NULL,
	[Owner_Address] [nvarchar](255) NULL,
	[Owner_Image] [varbinary](max) NULL,
	[Owner_ContentType] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Institution_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[language_ID] [int] IDENTITY(1,1) NOT NULL,
	[language_name] [nvarchar](50) NOT NULL,
	[Institution_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[language_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages_Branches]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages_Branches](
	[language_ID] [int] NULL,
	[branch_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Levels]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Levels](
	[Level_ID] [int] IDENTITY(1,1) NOT NULL,
	[Package_ID] [int] NOT NULL,
	[Levelname] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[duration_weeks] [int] NULL,
	[Level_price] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Level_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Packages]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Packages](
	[Package_ID] [int] NOT NULL,
	[Packagename] [nvarchar](50) NOT NULL,
	[Language_ID] [int] NOT NULL,
	[Category_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Package_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserve_Students]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserve_Students](
	[Reserve_ID] [int] NOT NULL,
	[Student_ID] [int] NOT NULL,
	[Level_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Student_ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NULL,
	[Gender] [nvarchar](10) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NULL,
	[Address] [nvarchar](255) NULL,
	[Image] [varbinary](max) NULL,
	[ContentType] [nvarchar](100) NULL,
	[Institution_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students_Branches]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students_Branches](
	[student_ID] [int] NOT NULL,
	[Branch_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students_Levels]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students_Levels](
	[student_ID] [int] NOT NULL,
	[Level_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[teacher_ID] [int] IDENTITY(1,1) NOT NULL,
	[Institution_ID] [int] NULL,
	[teacher_first_name] [nvarchar](50) NOT NULL,
	[teacher_last_name] [nvarchar](50) NOT NULL,
	[nationality] [nvarchar](50) NULL,
	[experience_years] [int] NULL,
	[available_hours] [int] NULL,
	[teacher_contact_email] [nvarchar](100) NULL,
	[teacher_contact_phone] [nvarchar](20) NULL,
	[hire_date] [date] NULL,
	[teacher_bank_name] [nvarchar](100) NOT NULL,
	[teacher_account_number] [nvarchar](50) NOT NULL,
	[teacher_swift_code] [nvarchar](50) NULL,
	[teacher_iban] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[teacher_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers_Branches]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers_Branches](
	[teacher_ID] [int] NOT NULL,
	[Branch_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers_Languages]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers_Languages](
	[teacher_ID] [int] NOT NULL,
	[Language_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timesheet]    Script Date: 2/13/2024 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timesheet](
	[TIMESHIT_ID] [int] IDENTITY(1,1) NOT NULL,
	[Employee_ID] [int] NOT NULL,
	[Package_ID] [int] NOT NULL,
	[Placement_date] [date] NOT NULL,
	[Placement_Starttime] [time](7) NOT NULL,
	[Placement_Endtime] [time](7) NOT NULL,
	[Teacher_ID] [int] NOT NULL,
	[Class_ID] [int] NOT NULL,
	[Reserve_Price] [money] NOT NULL,
	[Institution_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TIMESHIT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Books_Levels]  WITH CHECK ADD  CONSTRAINT [FK_Books_Books_Levels] FOREIGN KEY([Book_ID])
REFERENCES [dbo].[Books] ([book_ID])
GO
ALTER TABLE [dbo].[Books_Levels] CHECK CONSTRAINT [FK_Books_Books_Levels]
GO
ALTER TABLE [dbo].[Books_Levels]  WITH CHECK ADD  CONSTRAINT [FK_Levels_Books_Levels] FOREIGN KEY([Level_ID])
REFERENCES [dbo].[Levels] ([Level_ID])
GO
ALTER TABLE [dbo].[Books_Levels] CHECK CONSTRAINT [FK_Levels_Books_Levels]
GO
ALTER TABLE [dbo].[Branches]  WITH CHECK ADD  CONSTRAINT [FK_Branches_Institutions] FOREIGN KEY([Institution_ID])
REFERENCES [dbo].[Institutions] ([Institution_ID])
GO
ALTER TABLE [dbo].[Branches] CHECK CONSTRAINT [FK_Branches_Institutions]
GO
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Branches_Classes] FOREIGN KEY([Branch_ID])
REFERENCES [dbo].[Branches] ([branch_id])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Branches_Classes]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Institutions_Employees] FOREIGN KEY([Institution_ID])
REFERENCES [dbo].[Institutions] ([Institution_ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Institutions_Employees]
GO
ALTER TABLE [dbo].[Employees_Branches]  WITH CHECK ADD  CONSTRAINT [FK_Branches_Employees_Branches] FOREIGN KEY([branch_ID])
REFERENCES [dbo].[Branches] ([branch_id])
GO
ALTER TABLE [dbo].[Employees_Branches] CHECK CONSTRAINT [FK_Branches_Employees_Branches]
GO
ALTER TABLE [dbo].[Employees_Branches]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees_Branches] FOREIGN KEY([employee_ID])
REFERENCES [dbo].[Employees] ([employee_ID])
GO
ALTER TABLE [dbo].[Employees_Branches] CHECK CONSTRAINT [FK_Employees_Employees_Branches]
GO
ALTER TABLE [dbo].[Languages]  WITH CHECK ADD  CONSTRAINT [FK_Institutions_Languages] FOREIGN KEY([Institution_ID])
REFERENCES [dbo].[Institutions] ([Institution_ID])
GO
ALTER TABLE [dbo].[Languages] CHECK CONSTRAINT [FK_Institutions_Languages]
GO
ALTER TABLE [dbo].[Languages_Branches]  WITH CHECK ADD  CONSTRAINT [FK_Branches_Languages_Branches] FOREIGN KEY([branch_ID])
REFERENCES [dbo].[Branches] ([branch_id])
GO
ALTER TABLE [dbo].[Languages_Branches] CHECK CONSTRAINT [FK_Branches_Languages_Branches]
GO
ALTER TABLE [dbo].[Languages_Branches]  WITH CHECK ADD  CONSTRAINT [FK_Languages_Languages_Branches] FOREIGN KEY([language_ID])
REFERENCES [dbo].[Languages] ([language_ID])
GO
ALTER TABLE [dbo].[Languages_Branches] CHECK CONSTRAINT [FK_Languages_Languages_Branches]
GO
ALTER TABLE [dbo].[Levels]  WITH CHECK ADD  CONSTRAINT [FK_Packages_Levels] FOREIGN KEY([Package_ID])
REFERENCES [dbo].[Packages] ([Package_ID])
GO
ALTER TABLE [dbo].[Levels] CHECK CONSTRAINT [FK_Packages_Levels]
GO
ALTER TABLE [dbo].[Packages]  WITH CHECK ADD  CONSTRAINT [FK_Categoies_Packages] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Categories] ([Category_ID])
GO
ALTER TABLE [dbo].[Packages] CHECK CONSTRAINT [FK_Categoies_Packages]
GO
ALTER TABLE [dbo].[Packages]  WITH CHECK ADD  CONSTRAINT [FK_Languages_Packages] FOREIGN KEY([Language_ID])
REFERENCES [dbo].[Languages] ([language_ID])
GO
ALTER TABLE [dbo].[Packages] CHECK CONSTRAINT [FK_Languages_Packages]
GO
ALTER TABLE [dbo].[Reserve_Students]  WITH CHECK ADD  CONSTRAINT [FK_Levels_Reserve_Students] FOREIGN KEY([Level_ID])
REFERENCES [dbo].[Levels] ([Level_ID])
GO
ALTER TABLE [dbo].[Reserve_Students] CHECK CONSTRAINT [FK_Levels_Reserve_Students]
GO
ALTER TABLE [dbo].[Reserve_Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Reserve_Students] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Students] ([Student_ID])
GO
ALTER TABLE [dbo].[Reserve_Students] CHECK CONSTRAINT [FK_Students_Reserve_Students]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Institutions_Students] FOREIGN KEY([Institution_ID])
REFERENCES [dbo].[Institutions] ([Institution_ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Institutions_Students]
GO
ALTER TABLE [dbo].[Students_Branches]  WITH CHECK ADD  CONSTRAINT [FK_Branches_Students_Branches] FOREIGN KEY([Branch_ID])
REFERENCES [dbo].[Branches] ([branch_id])
GO
ALTER TABLE [dbo].[Students_Branches] CHECK CONSTRAINT [FK_Branches_Students_Branches]
GO
ALTER TABLE [dbo].[Students_Branches]  WITH CHECK ADD  CONSTRAINT [FK_Students_Students_Branches] FOREIGN KEY([student_ID])
REFERENCES [dbo].[Students] ([Student_ID])
GO
ALTER TABLE [dbo].[Students_Branches] CHECK CONSTRAINT [FK_Students_Students_Branches]
GO
ALTER TABLE [dbo].[Students_Levels]  WITH CHECK ADD  CONSTRAINT [FK_Languages_Students_Languages] FOREIGN KEY([Level_ID])
REFERENCES [dbo].[Levels] ([Level_ID])
GO
ALTER TABLE [dbo].[Students_Levels] CHECK CONSTRAINT [FK_Languages_Students_Languages]
GO
ALTER TABLE [dbo].[Students_Levels]  WITH CHECK ADD  CONSTRAINT [FK_Students_Students_Languages] FOREIGN KEY([student_ID])
REFERENCES [dbo].[Students] ([Student_ID])
GO
ALTER TABLE [dbo].[Students_Levels] CHECK CONSTRAINT [FK_Students_Students_Languages]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [FK_Institutions_Teachers] FOREIGN KEY([Institution_ID])
REFERENCES [dbo].[Institutions] ([Institution_ID])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Institutions_Teachers]
GO
ALTER TABLE [dbo].[Teachers_Branches]  WITH CHECK ADD  CONSTRAINT [FK_Branches_Teachers_Branches] FOREIGN KEY([Branch_ID])
REFERENCES [dbo].[Branches] ([branch_id])
GO
ALTER TABLE [dbo].[Teachers_Branches] CHECK CONSTRAINT [FK_Branches_Teachers_Branches]
GO
ALTER TABLE [dbo].[Teachers_Branches]  WITH CHECK ADD  CONSTRAINT [FK_Teachers_Teachers_Branches] FOREIGN KEY([teacher_ID])
REFERENCES [dbo].[Teachers] ([teacher_ID])
GO
ALTER TABLE [dbo].[Teachers_Branches] CHECK CONSTRAINT [FK_Teachers_Teachers_Branches]
GO
ALTER TABLE [dbo].[Teachers_Languages]  WITH CHECK ADD  CONSTRAINT [FK_Languages_Teachers_Languages] FOREIGN KEY([Language_ID])
REFERENCES [dbo].[Languages] ([language_ID])
GO
ALTER TABLE [dbo].[Teachers_Languages] CHECK CONSTRAINT [FK_Languages_Teachers_Languages]
GO
ALTER TABLE [dbo].[Teachers_Languages]  WITH CHECK ADD  CONSTRAINT [FK_Teachers_Teachers_Languages] FOREIGN KEY([teacher_ID])
REFERENCES [dbo].[Teachers] ([teacher_ID])
GO
ALTER TABLE [dbo].[Teachers_Languages] CHECK CONSTRAINT [FK_Teachers_Teachers_Languages]
GO
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Classes_Timesheet] FOREIGN KEY([Class_ID])
REFERENCES [dbo].[Classes] ([Class_ID])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Classes_Timesheet]
GO
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Timesheet] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Employees] ([employee_ID])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Employees_Timesheet]
GO
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Institutions_Timesheet] FOREIGN KEY([Institution_ID])
REFERENCES [dbo].[Institutions] ([Institution_ID])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Institutions_Timesheet]
GO
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Packages_Timesheet] FOREIGN KEY([Package_ID])
REFERENCES [dbo].[Packages] ([Package_ID])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Packages_Timesheet]
GO
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Teachers_Timesheet] FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teachers] ([teacher_ID])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Teachers_Timesheet]
GO
USE [master]
GO
ALTER DATABASE [Language_Institution_OperationalDataBase] SET  READ_WRITE 
GO
