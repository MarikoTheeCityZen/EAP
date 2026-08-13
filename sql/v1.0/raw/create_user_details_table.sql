use ECommerceWH;
go

--Raw representation of our User/Customer Details
-- Source columns are preserved without business transformations.
-- Ingestion metadata is appended by the data ingestion process.

create table raw.user_details
(
user_id int,
credit_limit int,
phone varchar(20),
--metadata
_load_id bigint not null,
_loaded_at datetime2(3) not null 
constraint df_raw_user_details_loaded_at 
default sysutcdatetime(),
_source_object nvarchar(50) not null
);
