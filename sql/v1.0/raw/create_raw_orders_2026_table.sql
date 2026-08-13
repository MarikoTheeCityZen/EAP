use ECommerceWH;
go

-- Raw representation of the 2026 orders source file.
-- Source columns are preserved without business transformations.
-- Ingestion metadata is appended by the data ingestion process.

create table raw.orders_2026
(
order_id varchar(50),
customer_name nvarchar(100),
customer_city varchar(50),
region varchar(50),
ship_to_city varchar(50),
bill_to_city varchar(50),
order_date datetime2,
order_channel varchar(10),
status varchar(30),
priority varchar(30),
order_total decimal(10,2),
order_notes nvarchar(max),
gift_message nvarchar(255),
--metadata
_load_id bigint not null,
_loaded_at datetime2(3) not null 
constraint df_raw_orders_2026_loaded_at 
default sysutcdatetime(),
_source_object nvarchar(50) not null
);
