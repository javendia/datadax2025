CREATE TABLE [md].[models]
(
  [id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY
  ,[name] NVARCHAR(150) NOT NULL UNIQUE
  ,[description] NVARCHAR(255) NULL
  ,[active] BIT NOT NULL DEFAULT(1) -- 0=inactive 1=active
  ,[created_at] DATETIME2(7) NOT NULL DEFAULT(SYSDATETIME())
)
