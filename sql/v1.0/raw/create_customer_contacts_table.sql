use ECommerceWH;
go 

--Raw representation of our Customer Contacts
-- Source columns are preserved without business transformations.
-- Ingestion metadata is appended by the data ingestion process.

create table raw.customer_contacts
(
customer_id int,
contact_name nvarchar(30),
email nvarchar(50),
is_primary nvarchar(10),
--metadata
_load_id bigint not null,
_loaded_at datetime2(3) not null 
constraint df_raw_cust_contacts_loaded_at 
default sysutcdatetime(),
_source_object nvarchar(50) not null
);

