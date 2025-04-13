CREATE TABLE [md].[tables_columns]
(
  [id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY
  ,[name] VARCHAR(150) NOT NULL
  ,[table_id] INT FOREIGN KEY REFERENCES md.tables(id) ON DELETE CASCADE
  ,[data_type] VARCHAR(50) NOT NULL
  ,[hidden] BIT NOT NULL DEFAULT(0) -- 0=visible 1=hidden
  ,[data_format] VARCHAR(50) NOT NULL
  ,[summarize] BIT NOT NULL DEFAULT(0)
)
