CREATE TABLE [md].[relationships]
(
  [id] INT NOT NULL IDENTITY(1,1)
  ,[source_table_id] INT NULL
  ,[source_column_id] INT NULL
  ,[destination_table_id] INT NULL
  ,[destination_column_id] INT NULL
  ,[cardinality] VARCHAR(50) NOT NULL
  ,[filtering] SMALLINT NOT NULL DEFAULT(1) -- 1=unidirectional 2=bidirectional
  ,[active] BIT NOT NULL DEFAULT(1) -- 0=inactive 1=active
  CONSTRAINT [PK_relationships] PRIMARY KEY NONCLUSTERED (id)
  CONSTRAINT [FK_rel_source_tables] FOREIGN KEY (source_table_id)
    REFERENCES md.tables(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
  CONSTRAINT [FK_rel_source_columns] FOREIGN KEY (source_column_id)
    REFERENCES md.tables_columns(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
  CONSTRAINT [FK_rel_destination_tables] FOREIGN KEY (destination_table_id)
    REFERENCES md.tables(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
  CONSTRAINT [FK_rel_destination_columns] FOREIGN KEY (destination_column_id)
    REFERENCES md.tables_columns(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
