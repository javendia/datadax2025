CREATE TABLE [md].[relationships]
(
  [id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY
  ,[source_table_id] INT FOREIGN KEY REFERENCES md.tables(id) ON DELETE CASCADE
  ,[source_column_id] INT FOREIGN KEY REFERENCES md.tables_columns(id) ON DELETE CASCADE
  ,[destination_table_id] INT FOREIGN KEY REFERENCES md.tables(id) ON DELETE CASCADE
  ,[destination_column_id] INT FOREIGN KEY REFERENCES md.tables_columns(id) ON DELETE CASCADE
  ,[cardinality] VARCHAR(50) NOT NULL
  ,[filtering] SMALLINT NOT NULL DEFAULT(1) -- 1=unidirectional 2=bidirectional
  ,[active] BIT NOT NULL DEFAULT(1) -- 0=inactive 1=active
)
