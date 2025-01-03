USE [master]
GO
/****** Object:  Database [saritaksi]    Script Date: 3.01.2025 12:20:40 ******/
CREATE DATABASE [saritaksi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'saritaksi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\saritaksi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'saritaksi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\saritaksi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [saritaksi] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [saritaksi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [saritaksi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [saritaksi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [saritaksi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [saritaksi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [saritaksi] SET ARITHABORT OFF 
GO
ALTER DATABASE [saritaksi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [saritaksi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [saritaksi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [saritaksi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [saritaksi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [saritaksi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [saritaksi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [saritaksi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [saritaksi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [saritaksi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [saritaksi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [saritaksi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [saritaksi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [saritaksi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [saritaksi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [saritaksi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [saritaksi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [saritaksi] SET RECOVERY FULL 
GO
ALTER DATABASE [saritaksi] SET  MULTI_USER 
GO
ALTER DATABASE [saritaksi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [saritaksi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [saritaksi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [saritaksi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [saritaksi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [saritaksi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'saritaksi', N'ON'
GO
ALTER DATABASE [saritaksi] SET QUERY_STORE = ON
GO
ALTER DATABASE [saritaksi] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [saritaksi]
GO
/****** Object:  Table [dbo].[cache]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cache](
	[key] [nvarchar](255) NOT NULL,
	[value] [nvarchar](max) NOT NULL,
	[expiration] [int] NOT NULL,
 CONSTRAINT [cache_key_primary] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cache_locks]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cache_locks](
	[key] [nvarchar](255) NOT NULL,
	[owner] [nvarchar](255) NOT NULL,
	[expiration] [int] NOT NULL,
 CONSTRAINT [cache_locks_key_primary] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[complaints]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[complaints](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](255) NOT NULL,
	[complaint] [nvarchar](max) NOT NULL,
	[created_at] [nvarchar](255) NULL,
	[updated_at] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](255) NOT NULL,
	[subject] [nvarchar](255) NOT NULL,
	[message] [nvarchar](max) NOT NULL,
	[is_read] [bit] NOT NULL,
	[created_at] [nvarchar](255) NULL,
	[updated_at] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[driver_earnings]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[driver_earnings](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[driver_id] [bigint] NOT NULL,
	[earned] [int] NOT NULL,
	[created_at] [nvarchar](255) NULL,
	[updated_at] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[drivers]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[drivers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[profile_photo_url] [nvarchar](500) NULL,
	[experience_years] [nvarchar](255) NOT NULL,
	[vehicle_model] [nvarchar](255) NOT NULL,
	[vehicle_license_plate] [nvarchar](255) NOT NULL,
	[license] [nvarchar](255) NULL,
	[registration] [nvarchar](255) NOT NULL,
	[bio] [nvarchar](255) NULL,
	[tel] [nvarchar](255) NOT NULL,
	[created_at] [nvarchar](255) NULL,
	[updated_at] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[failed_jobs]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[failed_jobs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[uuid] [nvarchar](255) NOT NULL,
	[connection] [nvarchar](max) NOT NULL,
	[queue] [nvarchar](max) NOT NULL,
	[payload] [nvarchar](max) NOT NULL,
	[exception] [nvarchar](max) NOT NULL,
	[failed_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_batches]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_batches](
	[id] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[total_jobs] [int] NOT NULL,
	[pending_jobs] [int] NOT NULL,
	[failed_jobs] [int] NOT NULL,
	[failed_job_ids] [nvarchar](max) NOT NULL,
	[options] [nvarchar](max) NULL,
	[cancelled_at] [int] NULL,
	[created_at] [int] NOT NULL,
	[finished_at] [int] NULL,
 CONSTRAINT [job_batches_id_primary] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobs]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[queue] [nvarchar](255) NOT NULL,
	[payload] [nvarchar](max) NOT NULL,
	[attempts] [tinyint] NOT NULL,
	[reserved_at] [int] NULL,
	[available_at] [int] NOT NULL,
	[created_at] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[migrations]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[migrations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[migration] [nvarchar](255) NOT NULL,
	[batch] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[passengers]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[passengers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[tel] [nvarchar](255) NOT NULL,
	[gender] [nvarchar](255) NOT NULL,
	[created_at] [nvarchar](255) NULL,
	[updated_at] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[password_reset_tokens]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[password_reset_tokens](
	[email] [nvarchar](255) NOT NULL,
	[token] [nvarchar](255) NOT NULL,
	[created_at] [nvarchar](255) NOT NULL,
 CONSTRAINT [password_reset_tokens_email_primary] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservations]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservations](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](255) NOT NULL,
	[reservation] [nvarchar](max) NOT NULL,
	[created_at] [nvarchar](255) NULL,
	[updated_at] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ride_histories]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ride_histories](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[request_id] [bigint] NOT NULL,
	[passenger_id] [bigint] NOT NULL,
	[driver_id] [bigint] NOT NULL,
	[start_location] [nvarchar](255) NOT NULL,
	[end_location] [nvarchar](255) NOT NULL,
	[start_time] [nvarchar](255) NOT NULL,
	[end_time] [nvarchar](255) NOT NULL,
	[status] [nvarchar](255) NOT NULL,
	[price] [int] NOT NULL,
	[created_at] [nvarchar](255) NULL,
	[updated_at] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ride_requests]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ride_requests](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[pickup_location] [nvarchar](255) NOT NULL,
	[dropoff_location] [nvarchar](255) NOT NULL,
	[pickup_time] [nvarchar](255) NOT NULL,
	[passenger_count] [int] NOT NULL,
	[special_requests] [nvarchar](max) NULL,
	[passenger_id] [bigint] NOT NULL,
	[driver_id] [bigint] NULL,
	[completed_at] [nvarchar](255) NULL,
	[created_at] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sessions]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sessions](
	[id] [nvarchar](255) NOT NULL,
	[user_id] [bigint] NULL,
	[ip_address] [nvarchar](45) NULL,
	[user_agent] [nvarchar](max) NULL,
	[payload] [nvarchar](max) NOT NULL,
	[last_activity] [int] NOT NULL,
 CONSTRAINT [sessions_id_primary] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[suggestions]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[suggestions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](255) NOT NULL,
	[suggestion] [nvarchar](max) NOT NULL,
	[created_at] [nvarchar](255) NULL,
	[updated_at] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[email_verified_at] [datetime] NULL,
	[password] [nvarchar](255) NOT NULL,
	[tel] [nvarchar](255) NOT NULL,
	[gender] [nvarchar](255) NOT NULL,
	[canDrive] [bit] NOT NULL,
	[is_active] [bit] NOT NULL,
	[remember_token] [nvarchar](100) NULL,
	[created_at] [nvarchar](255) NOT NULL,
	[updated_at] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vehicles]    Script Date: 3.01.2025 12:20:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehicles](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[driver_id] [bigint] NOT NULL,
	[driver_name] [nvarchar](255) NOT NULL,
	[vehicle_model] [nvarchar](255) NOT NULL,
	[license_plate] [nvarchar](255) NOT NULL,
	[vehicle_age] [nvarchar](255) NOT NULL,
	[created_at] [nvarchar](255) NULL,
	[updated_at] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [failed_jobs_uuid_unique]    Script Date: 3.01.2025 12:20:40 ******/
CREATE UNIQUE NONCLUSTERED INDEX [failed_jobs_uuid_unique] ON [dbo].[failed_jobs]
(
	[uuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [jobs_queue_index]    Script Date: 3.01.2025 12:20:40 ******/
CREATE NONCLUSTERED INDEX [jobs_queue_index] ON [dbo].[jobs]
(
	[queue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [passengers_email_unique]    Script Date: 3.01.2025 12:20:40 ******/
CREATE UNIQUE NONCLUSTERED INDEX [passengers_email_unique] ON [dbo].[passengers]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [sessions_last_activity_index]    Script Date: 3.01.2025 12:20:40 ******/
CREATE NONCLUSTERED INDEX [sessions_last_activity_index] ON [dbo].[sessions]
(
	[last_activity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [sessions_user_id_index]    Script Date: 3.01.2025 12:20:40 ******/
CREATE NONCLUSTERED INDEX [sessions_user_id_index] ON [dbo].[sessions]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [users_email_unique]    Script Date: 3.01.2025 12:20:40 ******/
CREATE UNIQUE NONCLUSTERED INDEX [users_email_unique] ON [dbo].[users]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [users_tel_unique]    Script Date: 3.01.2025 12:20:40 ******/
CREATE UNIQUE NONCLUSTERED INDEX [users_tel_unique] ON [dbo].[users]
(
	[tel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT ('false') FOR [is_read]
GO
ALTER TABLE [dbo].[driver_earnings] ADD  DEFAULT ('0') FOR [earned]
GO
ALTER TABLE [dbo].[drivers] ADD  DEFAULT ('0') FOR [experience_years]
GO
ALTER TABLE [dbo].[failed_jobs] ADD  DEFAULT (getdate()) FOR [failed_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('0') FOR [canDrive]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('0') FOR [is_active]
GO
ALTER TABLE [dbo].[driver_earnings]  WITH CHECK ADD  CONSTRAINT [driver_earnings_driver_id_foreign] FOREIGN KEY([driver_id])
REFERENCES [dbo].[drivers] ([id])
GO
ALTER TABLE [dbo].[driver_earnings] CHECK CONSTRAINT [driver_earnings_driver_id_foreign]
GO
ALTER TABLE [dbo].[drivers]  WITH CHECK ADD  CONSTRAINT [drivers_user_id_foreign] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[drivers] CHECK CONSTRAINT [drivers_user_id_foreign]
GO
ALTER TABLE [dbo].[passengers]  WITH CHECK ADD  CONSTRAINT [passengers_user_id_foreign] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[passengers] CHECK CONSTRAINT [passengers_user_id_foreign]
GO
ALTER TABLE [dbo].[ride_histories]  WITH CHECK ADD  CONSTRAINT [ride_histories_driver_id_foreign] FOREIGN KEY([driver_id])
REFERENCES [dbo].[drivers] ([id])
GO
ALTER TABLE [dbo].[ride_histories] CHECK CONSTRAINT [ride_histories_driver_id_foreign]
GO
ALTER TABLE [dbo].[ride_histories]  WITH CHECK ADD  CONSTRAINT [ride_histories_passenger_id_foreign] FOREIGN KEY([passenger_id])
REFERENCES [dbo].[passengers] ([id])
GO
ALTER TABLE [dbo].[ride_histories] CHECK CONSTRAINT [ride_histories_passenger_id_foreign]
GO
ALTER TABLE [dbo].[ride_histories]  WITH CHECK ADD  CONSTRAINT [ride_histories_request_id_foreign] FOREIGN KEY([request_id])
REFERENCES [dbo].[ride_requests] ([id])
GO
ALTER TABLE [dbo].[ride_histories] CHECK CONSTRAINT [ride_histories_request_id_foreign]
GO
ALTER TABLE [dbo].[ride_requests]  WITH CHECK ADD  CONSTRAINT [ride_requests_driver_id_foreign] FOREIGN KEY([driver_id])
REFERENCES [dbo].[drivers] ([id])
GO
ALTER TABLE [dbo].[ride_requests] CHECK CONSTRAINT [ride_requests_driver_id_foreign]
GO
ALTER TABLE [dbo].[ride_requests]  WITH CHECK ADD  CONSTRAINT [ride_requests_passenger_id_foreign] FOREIGN KEY([passenger_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[ride_requests] CHECK CONSTRAINT [ride_requests_passenger_id_foreign]
GO
ALTER TABLE [dbo].[vehicles]  WITH CHECK ADD  CONSTRAINT [vehicles_driver_id_foreign] FOREIGN KEY([driver_id])
REFERENCES [dbo].[drivers] ([id])
GO
ALTER TABLE [dbo].[vehicles] CHECK CONSTRAINT [vehicles_driver_id_foreign]
GO
USE [master]
GO
ALTER DATABASE [saritaksi] SET  READ_WRITE 
GO
