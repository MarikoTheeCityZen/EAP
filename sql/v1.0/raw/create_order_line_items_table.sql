use ECommerceWH;
go

--Raw representation of our order line items
-- Source columns are preserved without business transformations.
-- Ingestion metadata is appended by the data ingestion process.

create table raw.order_line_items
(
line_id varchar(50),
order_id varchar(50),
product_name nvarchar(100),
quantity int,
unit_price decimal(10,2),
unit_cost decimal(10,2),
discount decimal(10,2),
line_total decimal(10,2),
--metadata
_load_id bigint not null,
_loaded_at datetime2(3) not null 
constraint df_raw_order_line_items_loaded_at 
default sysutcdatetime(),
_source_object nvarchar(50) not null
);
