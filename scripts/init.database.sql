/*
=============================================================================
Create Database and Schemas
=============================================================================

Script Purpose:
  This script creates a new database named 'Datawarehouse' afte checking if it already exists, if the database exits,it is dropped and recreated. Addtionally the scripts
    sets up three schemas within the database:'bronze', 'silver' and 'gold'
*/

use master;

--Drop and recreate the 'Datawarehouse' database
if exists(select 1 from sys.databases where name ='DataWarehouse')
BEGIN
  alter database DataWarehouse set single_user with rollback immediate;
drop database DataWarehouse;
END;
GO
--creating datawarehouse database
create database DataWarehouse;

use DataWarehouse;
--creating schema's 
create schema bronze;

create schema silver;
--Go is used to run the next line of code and act as seperate between lines of code and continue the execution
GO
create schema gold;
GO
