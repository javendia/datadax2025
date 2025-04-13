CREATE TABLE [md].[tables_models]
(
  [model_id] INT FOREIGN KEY REFERENCES md.models(id) ON DELETE CASCADE
  ,[table_id] INT FOREIGN KEY REFERENCES md.tables(id) ON DELETE CASCADE
)
