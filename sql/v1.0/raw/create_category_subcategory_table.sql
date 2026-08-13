use ECommerceWH;
go

--Create subcategories table with ingestion metadata

create table subcategories
(
category_subcategory nvarchar(50),
--metadata
_load_id bigint not null,
_loaded_at datetime2(3) not null 
constraint df_raw_category_subcategory_loaded_at 
default sysutcdatetime(),
_source_object nvarchar(50) not null
);
