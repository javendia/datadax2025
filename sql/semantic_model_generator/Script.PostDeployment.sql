-- This file contains SQL statements that will be executed after the build script.

-- md.models
IF NOT EXISTS(SELECT 1 FROM [md].[models])
BEGIN
    INSERT INTO [md].[models] ([name], [description], [active], [model_version], [created_at], [updated_at])
    VALUES
    ('Contoso', 'This is a test model.', 1, '1.0.0', SYSDATETIME(), SYSDATETIME())
END;

-- md.tables
IF NOT EXISTS(SELECT 1 FROM [md].[tables])
BEGIN
    INSERT INTO [md].[tables] ([name], [hidden], [primary_key])
    VALUES
    ('Currency Exchange', 0, NULL),
    ('Customer', 0, 'CustomerKey'),
    ('Date', 0, 'Date'),
    ('Product', 0, 'ProductKey'),
    ('Sales', 0, NULL),
    ('Store', 0, 'StoreKey')
END;

-- md.tables_columns
IF NOT EXISTS(SELECT 1 FROM [md].[tables_columns])
BEGIN
    INSERT INTO [md].[tables_columns] ([name], [table_id], [data_type], [hidden], [data_format], [summarize])
    VALUES
    ('CustomerKey', 2, 'INT', 0, NULL, 0),
    ('Gender', 2, 'NVARCHAR', 0, NULL, 0),
    ('Name', 2, 'NVARCHAR', 0, NULL, 0),
    ('Address', 2, 'NVARCHAR', 0, NULL, 0),
    ('City', 2, 'NVARCHAR', 0, NULL, 0),
    ('State Code', 2, 'NVARCHAR', 0, NULL, 0),
    ('State', 2, 'NVARCHAR', 0, NULL, 0),
    ('Zip Code', 2, 'NVARCHAR', 0, NULL, 0),
    ('Country Code', 2, 'NVARCHAR', 0, NULL, 0),
    ('Country', 2, 'NVARCHAR', 0, NULL, 0),
    ('Continent', 2, 'NVARCHAR', 0, NULL, 0),
    ('Birthday', 2, 'DATE', 0, NULL, 0),
    ('Age', 2, 'INT', 0, NULL, 0),
    ('ProductKey', 4, 'INT', 0, NULL, 0),
    ('Product Code', 4, 'NVARCHAR', 0, NULL, 0),
    ('Product Name', 4, 'NVARCHAR', 0, NULL, 0),
    ('Manufacturer', 4, 'NVARCHAR', 0, NULL, 0),
    ('Brand', 4, 'NVARCHAR', 0, NULL, 0),
    ('Color', 4, 'NVARCHAR', 0, NULL, 0),
    ('Weight Unit Measure', 4, 'NVARCHAR', 0, NULL, 0),
    ('Weight', 4, 'FLOAT', 0, NULL, 0),
    ('Unit Cost', 4, 'MONEY', 0, NULL, 0),
    ('Unit Price', 4, 'MONEY', 0, NULL, 0),
    ('Subcategory Code', 4, 'INT', 0, NULL, 0),
    ('Subcategory', 4, 'NVARCHAR', 0, NULL, 0),
    ('Category Code', 4, 'INT', 0, NULL, 0),
    ('Category', 4, 'NVARCHAR', 0, NULL, 0),
    ('Date', 1, 'DATE', 0, NULL, 0),
    ('FromCurrency', 1, 'NCHAR', 0, NULL, 0),
    ('ToCurrency', 1, 'NCHAR', 0, NULL, 0),
    ('Exchange', 1, 'FLOAT', 0, NULL, 0),
    ('StoreKey', 6, 'INT', 0, NULL, 0),
    ('Store Code', 6, 'INT', 0, NULL, 0),
    ('Country', 6, 'NVARCHAR', 0, NULL, 0),
    ('State', 6, 'NVARCHAR', 0, NULL, 0),
    ('Name', 6, 'NVARCHAR', 0, NULL, 0),
    ('Square Meters', 6, 'INT', 0, NULL, 0),
    ('Open Date', 6, 'DATE', 0, NULL, 0),
    ('Close Date', 6, 'DATE', 0, NULL, 0),
    ('Status', 6, 'NVARCHAR', 0, NULL, 0),
    ('Date', 3, 'DATE', 0, NULL, 0),
    ('Year', 3, 'INT', 0, NULL, 0),
    ('Year Quarter', 3, 'NVARCHAR', 0, NULL, 0),
    ('Year Quarter Number', 3, 'INT', 0, NULL, 0),
    ('Quarter', 3, 'NVARCHAR', 0, NULL, 0),
    ('Year Month', 3, 'NVARCHAR', 0, NULL, 0),
    ('Year Month Short', 3, 'NVARCHAR', 0, NULL, 0),
    ('Year Month Number', 3, 'INT', 0, NULL, 0),
    ('Month', 3, 'NVARCHAR', 0, NULL, 0),
    ('Month Short', 3, 'NVARCHAR', 0, NULL, 0),
    ('Month Number', 3, 'INT', 0, NULL, 0),
    ('Day of Week', 3, 'NVARCHAR', 0, NULL, 0),
    ('Day of Week Short', 3, 'NVARCHAR', 0, NULL, 0),
    ('Day of Week Number', 3, 'INT', 0, NULL, 0),
    ('Working Day', 3, 'BIT', 0, NULL, 0),
    ('Working Day Number', 3, 'INT', 0, NULL, 0),
    ('Order Number', 5, 'BIGINT', 0, NULL, 0),
    ('Line Number', 5, 'INT', 0, NULL, 0),
    ('Order Date', 5, 'DATE', 0, NULL, 0),
    ('Delivery Date', 5, 'DATE', 0, NULL, 0),
    ('CustomerKey', 5, 'INT', 0, NULL, 0),
    ('StoreKey', 5, 'INT', 0, NULL, 0),
    ('ProductKey', 5, 'INT', 0, NULL, 0),
    ('Quantity', 5, 'INT', 0, NULL, 0),
    ('Unit Price', 5, 'MONEY', 0, NULL, 0),
    ('Net Price', 5, 'MONEY', 0, NULL, 0),
    ('Unit Cost', 5, 'MONEY', 0, NULL, 0),
    ('Currency Code', 5, 'NVARCHAR', 0, NULL, 0),
    ('Exchange Rate', 5, 'FLOAT', 0, NULL, 0)
END;

-- md.tables_models
IF NOT EXISTS(SELECT 1 FROM [md].[tables_models])
BEGIN
    INSERT INTO [md].[tables_models] ([model_id], [table_id])
    VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 5),
    (1, 6);
END;