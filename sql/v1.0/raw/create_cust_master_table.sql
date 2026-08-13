use ECommerceWH;
go

--Raw representation of our Customers
-- Source columns are preserved without business transformations.
-- Ingestion metadata is appended by the data ingestion process.

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
