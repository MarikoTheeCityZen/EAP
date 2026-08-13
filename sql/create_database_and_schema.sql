--In this script we are going to create a new database called ECommerceWH if it does not already exist. 
--We then create three logical schemas within the ECommerceWH database if they do not already exist: raw, stage, and dwh.
--By doing so we ensure idempotency, meaning that running this script multiple times will not result in errors or duplicate objects.
use master;
go

if DB_ID(N'ECommerceWH') is  null
begin
	 create database ECommerceWH;
end;
go

use ECommerceWH;
go

if SCHEMA_ID('raw') is null
begin
	 exec(N'create schema raw');
end;
go

if SCHEMA_ID('stage') is null
begin
	 exec(N'create schema stage');
end;
go

if SCHEMA_ID('dwh') is null
begin
	 exec(N'create schema dwh');
end;
go


