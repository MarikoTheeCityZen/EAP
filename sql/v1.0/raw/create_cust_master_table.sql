use ECommerceWH;
go

--Creating customers table to hold raw data as ingested from our source with metadata

create table raw.cust_master
(
customer_id int  null,
customer_name nvarchar(100) null,
segment nvarchar(20) null,
address_id int null,
account_manager nvarchar(20) null,
hash_key varchar null,
source_id nvarchar(20) null,
--metadata
_load_id bigint not null,
_loaded_at datetime2(3) 
constraint raw_cust_master_loaded_at 
default sysutcdatetime(),
_source_object nvarchar(50) not null
);
