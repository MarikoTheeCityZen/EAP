use ECommerceWH;
go

--Create Address table with the ingestion metadata

create table  raw.address
(
address_id int,
street nvarchar(50),
city_name nvarchar(50),
--metadata
_load_id bigint not null,
_loaded_at datetime2(3) not null 
constraint df_raw_address_loaded_at 
default sysutcdatetime(),
_source_object nvarchar(50) not null
);
