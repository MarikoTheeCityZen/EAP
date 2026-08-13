use ECommerceWH;
go 

--Raw representation of our Products
-- Source columns are preserved without business transformations.
-- Ingestion metadata is appended by the data ingestion process.

create table raw.products
(
product_code varchar(50),
product_name nvarchar(50),
brand nvarchar(50),
subcategory_name nvarchar(50),
unit_price decimal(10,2),
primary_supplier nvarchar(50),
product_description nvarchar(1000),
hash_key nvarchar(100),
source_id varchar(50),
--metadata
_load_id bigint not null,
_loaded_at datetime2(3) not null 
constraint df_raw_products_loaded_at 
default sysutcdatetime(),
_source_object nvarchar(50) not null
);
