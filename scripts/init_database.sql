USE master;
go

IF EXISTS (SELECT 1 FROM sys.databases where name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
go

create database DataWarehouse;
go

use DataWarehouse;
go
create schema bronze;
go
create schema silver;
go
create schema gold;
