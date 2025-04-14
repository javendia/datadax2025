CREATE TABLE [md].[tables_models]
(
  [model_id] INT NULL
  ,[table_id] INT NULL
  CONSTRAINT [FK_tables_models] FOREIGN KEY (model_id)
    REFERENCES md.models(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
  CONSTRAINT [FK_models_tables] FOREIGN KEY (table_id)
    REFERENCES md.tables(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
