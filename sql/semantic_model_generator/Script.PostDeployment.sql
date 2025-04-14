-- This file contains SQL statements that will be executed after the build script.

-- md.models
INSERT INTO [md].[models] ([name], [description], [active], [model_version], [created_at], [updated_at])
VALUES
('Contoso', 'This is a test model.', 1, '1.0.0', SYSDATETIME(), SYSDATETIME());

-- md.tables
INSERT INTO [md].[tables] ([name], [hidden], [primary_key])
VALUES
('Currency Exchange', 0, NULL),
('Customer', 0, 'CustomerKey'),
('Date', 0, 'Date'),
('Product', 0, 'ProductKey'),
('Sales', 0, NULL),
('Store', 0, 'StoreKey');