CREATE TABLE [md].[tables_columns]
(
  [id] INT NOT NULL IDENTITY(1,1)
  ,[name] VARCHAR(150) NOT NULL
  ,[table_id] INT NULL
  ,[data_type] VARCHAR(50) NOT NULL
  ,[hidden] BIT NOT NULL DEFAULT(0) -- 0=visible 1=hidden
  ,[data_format] VARCHAR(50) NULL
  ,[summarize] BIT NOT NULL DEFAULT(0) -- 0=not summarized 1=summarized
  CONSTRAINT [PK_tables_columns] PRIMARY KEY NONCLUSTERED (id)
  CONSTRAINT [FK_columns_tables] FOREIGN KEY (table_id)
    REFERENCES md.tables(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
