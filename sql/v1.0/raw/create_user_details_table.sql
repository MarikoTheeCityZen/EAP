use ECommerceWH;
go

--Create user details table containing extra information( Phone, CreditLimit) about our customers and ingestion metadata

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
