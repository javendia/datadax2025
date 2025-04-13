CREATE TABLE [md].[tables]
(
  [id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY
  ,[name] VARCHAR(150) NOT NULL
  ,[hidden] BIT NOT NULL DEFAULT(0) -- 0=visible 1=hidden
  ,[primary_key] VARCHAR(150) NULL
)
