USE [EmployeeManagementDB]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2/13/2026 11:37:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Designation] [nvarchar](100) NULL,
	[Address] [nvarchar](255) NULL,
	[Department] [nvarchar](100) NULL,
	[JoiningDate] [date] NULL,
	[Skillset] [nvarchar](255) NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Status] [bit] NULL,
	[Role] [nvarchar](20) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL,
	[ModifiedAt] [datetime] NULL,
	[ProfileImage] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1, N'Admin', N'System Admin', N'', N'IT', NULL, N'', N'admin', N'admin123', 1, N'Admin', N'System', N'admin', CAST(N'2026-02-09T18:42:06.670' AS DateTime), CAST(N'2026-02-11T18:19:05.150' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (2, N'Test', N'Developer', N'Test Address', N'IT dept', CAST(N'2026-02-01' AS Date), N'C#, SQL', N'testuser', N'test123', 1, N'Employee', N'testuser', N'admin', CAST(N'2026-02-09T18:54:17.830' AS DateTime), CAST(N'2026-02-11T16:26:20.267' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (3, N'Test Name', N'Senior Developer', N'Updated Address', N'IT Dept', CAST(N'2026-02-01' AS Date), N'C#, SQL, React', N'john', N'john123', 1, N'Employee', N'john', N'admin', CAST(N'2026-02-10T07:50:21.397' AS DateTime), CAST(N'2026-02-12T17:59:32.427' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (5, N'Niya', N'software engineer', N'xxxx,jjj,kerala', N'IT Dept', CAST(N'2026-02-10' AS Date), N'python', N'niya', N'niya123', 1, N'Employee', N'niya', N'admin', CAST(N'2026-02-10T10:11:41.080' AS DateTime), CAST(N'2026-02-12T17:59:18.430' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (13, N'heera', N'Engineer', N'xxxx,kkkk', N'IT Dept', CAST(N'2026-03-10' AS Date), N'python', N'heera', N'heera123', 0, N'Employee', N'heera', N'admin', CAST(N'2026-02-10T11:47:12.887' AS DateTime), CAST(N'2026-02-12T11:22:12.577' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (14, N'salwa', N'software engineer', N'Kaloor , Ernakulam', N'IT Dept', CAST(N'2026-05-10' AS Date), N'python,c++', N'salwa', N'salwa123', 1, N'Employee', N'salwa', N'salwa', CAST(N'2026-02-10T21:54:11.377' AS DateTime), CAST(N'2026-02-13T11:31:34.307' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (15, N'joju', N'audit', N'jsss,dds', N'audit dept', CAST(N'2024-09-03' AS Date), N'excel', N'jojuu', N'jojuu', 1, N'Employee', N'jojuu', N'admin', CAST(N'2026-02-11T01:18:16.153' AS DateTime), CAST(N'2026-02-11T15:53:58.973' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (16, N'nora', N'sde', N'gg,ghg', N'IT Dept', CAST(N'2026-09-07' AS Date), N'python', N'nora', N'nora123', 1, N'Employee', N'nora', N'admin', CAST(N'2026-02-11T01:19:51.800' AS DateTime), CAST(N'2026-02-11T15:53:59.820' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (18, N'riya mariya s', N'system engineer', N'kochi', N'IT Dept', CAST(N'2026-09-07' AS Date), N'python,html,css', N'riya', N'riya12345', 1, N'Employee', N'riya', N'riya', CAST(N'2026-02-11T11:07:34.513' AS DateTime), CAST(N'2026-02-13T09:59:46.327' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (22, N'diya', N'analyst', N'kochi', N'IT Dept', CAST(N'2026-09-07' AS Date), N'python, html', N'Diya', N'diya123', 1, N'Employee', N'Diya', N'admin', CAST(N'2026-02-11T11:13:17.827' AS DateTime), CAST(N'2026-02-11T18:34:48.653' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (27, N'rahul', N'sde', N'kochi', N'IT Dept', CAST(N'2026-11-07' AS Date), N'python', N'rahul', N'rahul', 1, N'Employee', N'rahul', N'admin', CAST(N'2026-02-11T11:35:27.993' AS DateTime), CAST(N'2026-02-11T18:34:55.130' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (31, N' Mathew', N'software engineer', N'xx house, dd road, kerala', N'IT', CAST(N'2026-02-12' AS Date), N'React', N'mathew', N'john123', 1, N'Employee', N'mathew', NULL, CAST(N'2026-02-12T00:08:09.497' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (37, N'maria john', N'software engineer', N'xx house, dd road, kerala', N'IT', CAST(N'2026-02-12' AS Date), N'React', N'maria', N'maria123', 1, N'Employee', N'maria', NULL, CAST(N'2026-02-12T00:16:08.643' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (39, N'jasi joseph', N'software engineer', N'xx house, dd road, kerala', N'IT', CAST(N'2026-02-12' AS Date), N'React', N'jasi', N'jasi123', 0, N'Employee', N'jasi', N'admin', CAST(N'2026-02-12T01:08:42.103' AS DateTime), CAST(N'2026-02-13T00:03:07.220' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (40, N'joseph', N'software engineer', N'xx house, dd road, kerala', N'IT', CAST(N'2026-02-12' AS Date), N'React', N'joseph', N'joseph123', 0, N'Employee', N'joseph', N'admin', CAST(N'2026-02-12T01:12:20.103' AS DateTime), CAST(N'2026-02-13T00:03:05.753' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1029, N'Salwa Saleem', N'software engineer', N'kochi', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'salwasaleem', N'salwa1234', 1, N'Employee', N'salwasaleem', NULL, CAST(N'2026-02-12T18:01:01.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1032, N'Andrew P ', N'software engineer', N'USA', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'andrew', N'andrew123', 1, N'Employee', N'andrew', NULL, CAST(N'2026-02-12T22:04:05.857' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1034, N'Andrew', N'software engineer', N'USA', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'andrew1', N'andrew123', 0, N'Employee', N'andrew1', N'admin', CAST(N'2026-02-12T22:04:19.383' AS DateTime), CAST(N'2026-02-13T00:03:12.247' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1035, N'Andrew P A', N'software engineer', N'USA', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'andrew1234', N'andrew123', 0, N'Employee', N'andrew1234', N'admin', CAST(N'2026-02-12T22:04:57.610' AS DateTime), CAST(N'2026-02-13T00:03:11.260' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1036, N'seema nair', N'software engineer', N'kochi', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'seemanair', N'seema123', 1, N'Employee', N'seemanair', NULL, CAST(N'2026-02-12T23:02:56.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1038, N'reema nair', N'software engineer', N'kochi', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'reemanair', N'reema123', 1, N'Employee', N'reemanair', NULL, CAST(N'2026-02-12T23:03:27.490' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1040, N'nimisha kp', N'software engineer', N'kochi', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'nimisha', N'nimisha', 1, N'Employee', N'nimisha', NULL, CAST(N'2026-02-12T23:10:18.963' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1041, N'nimy kp', N'software engineer', N'kochi', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'nimy', N'nimy', 1, N'Employee', N'nimy', NULL, CAST(N'2026-02-12T23:11:00.947' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1042, N'arya', N'software engineer', N'kochi', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'arya', N'arya', 1, N'Employee', N'arya', NULL, CAST(N'2026-02-12T23:19:10.477' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1043, N'kikoki', N'software engineer', N'kochi', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'kikoki', N'salwa123', 0, N'Employee', N'kikoki', N'admin', CAST(N'2026-02-12T23:19:38.667' AS DateTime), CAST(N'2026-02-13T00:03:16.880' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1044, N'kikoki', N'software engineer', N'kochi', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'kiko', N'salwa', 0, N'Employee', N'kiko', N'admin', CAST(N'2026-02-12T23:20:04.670' AS DateTime), CAST(N'2026-02-13T00:03:22.047' AS DateTime), NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1045, N'sososo', N'software engineer', N'kochi', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'sososo', N'salwa', 1, N'Employee', N'sososo', NULL, CAST(N'2026-02-12T23:21:00.617' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1046, N'sachin', N'software engineer', N'kochi', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'sachin', N'koshi123', 1, N'Employee', N'sachin', NULL, CAST(N'2026-02-12T23:49:15.013' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1047, N'koshi kumar', N'software engineer', N'kochi', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'koshikumar', N'salwa', 1, N'Employee', N'koshikumar', NULL, CAST(N'2026-02-12T23:49:34.213' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1048, N'sidharth', N'software engineer', N'kochi', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'sidharth', N'bhbhbh', 1, N'Employee', N'sidharth', NULL, CAST(N'2026-02-12T23:50:24.170' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1049, N'siya', N'software engineer', N'kochi', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'siya', N'siya1234', 1, N'Employee', NULL, NULL, CAST(N'2026-02-13T11:30:11.500' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Employees] ([EmployeeId], [Name], [Designation], [Address], [Department], [JoiningDate], [Skillset], [Username], [Password], [Status], [Role], [CreatedBy], [ModifiedBy], [CreatedAt], [ModifiedAt], [ProfileImage]) VALUES (1050, N'siya', N'software engineer', N'kochi', N'IT Dept', CAST(N'2026-09-08' AS Date), N'python', N'siya123', N'siya123', 1, N'Employee', NULL, NULL, CAST(N'2026-02-13T11:30:47.613' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Employee__536C85E4E3BF61BF]    Script Date: 2/13/2026 11:37:16 AM ******/
ALTER TABLE [dbo].[Employees] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllEmployees]    Script Date: 2/13/2026 11:37:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetAllEmployees]
AS
BEGIN
    SELECT *
    FROM Employees;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEmployeeById]    Script Date: 2/13/2026 11:37:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetEmployeeById]
    @EmployeeId INT
AS
BEGIN
    SELECT *
    FROM dbo.Employees
    WHERE EmployeeId = @EmployeeId
      AND Status = 1;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Login]    Script Date: 2/13/2026 11:37:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Login]
    @Username NVARCHAR(50),
    @Password NVARCHAR(255)
AS
BEGIN
    SELECT EmployeeId, Name, Role, Status
    FROM Employees
    WHERE Username = @Username
      AND Password = @Password;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_RegisterEmployee]    Script Date: 2/13/2026 11:37:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_RegisterEmployee]
    @Name NVARCHAR(100),
    @Designation NVARCHAR(100),
    @Address NVARCHAR(255),
    @Department NVARCHAR(100),
    @JoiningDate DATE,
    @Skillset NVARCHAR(255),
    @Username NVARCHAR(50),
    @Password NVARCHAR(255),
    @ProfileImage VARBINARY(MAX) = NULL,
    @Result INT OUTPUT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Employees WHERE Username = @Username)
    BEGIN
        SET @Result = -1;
        RETURN;
    END

    INSERT INTO Employees
    (Name, Designation, Address, Department, JoiningDate, Skillset, Username, Password, Status, Role, ProfileImage)
    VALUES
    (@Name, @Designation, @Address, @Department, @JoiningDate, @Skillset, @Username, @Password, 1, 'Employee', @ProfileImage)

    SET @Result = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SoftDeleteEmployee]    Script Date: 2/13/2026 11:37:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SoftDeleteEmployee]
(
    @EmployeeId INT,
    @ModifiedBy NVARCHAR(50)
)
AS
BEGIN
    UPDATE Employees
    SET
        Status = CASE WHEN Status = 1 THEN 0 ELSE 1 END,
        ModifiedBy = @ModifiedBy,
        ModifiedAt = GETDATE()
    WHERE EmployeeId = @EmployeeId;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ToggleEmployeeStatus]    Script Date: 2/13/2026 11:37:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ToggleEmployeeStatus]
(
    @EmployeeId INT,
    @ModifiedBy NVARCHAR(50)
)
AS
BEGIN
    UPDATE Employees
    SET
        Status = CASE 
                    WHEN Status = 1 THEN 0
                    ELSE 1
                 END,
        ModifiedBy = @ModifiedBy,
        ModifiedAt = GETDATE()
    WHERE EmployeeId = @EmployeeId;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateEmployee]    Script Date: 2/13/2026 11:37:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateEmployee]
    @EmployeeId INT,
    @Name NVARCHAR(100),
    @Designation NVARCHAR(100),
    @Address NVARCHAR(200),
    @Department NVARCHAR(100),
    @Skillset NVARCHAR(200),
    @Username NVARCHAR(50) = NULL,
    @Password NVARCHAR(255) = NULL,
    @ModifiedBy NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- 🔹 Check if new username already exists
    IF @Username IS NOT NULL
       AND EXISTS (
           SELECT 1 FROM Employees
           WHERE Username = @Username
           AND EmployeeId <> @EmployeeId
       )
    BEGIN
        RAISERROR('USERNAME_EXISTS', 16, 1);
        RETURN;
    END

    UPDATE Employees
    SET
        Name = @Name,
        Designation = @Designation,
        Address = @Address,
        Department = @Department,
        Skillset = @Skillset,

        -- 🔹 Keep old username if NULL
        Username = COALESCE(@Username, Username),

        -- 🔹 Update password only if provided
        Password = COALESCE(@Password, Password),

        ModifiedBy = @ModifiedBy,
        ModifiedAt = GETDATE()
    WHERE EmployeeId = @EmployeeId
END
GO
