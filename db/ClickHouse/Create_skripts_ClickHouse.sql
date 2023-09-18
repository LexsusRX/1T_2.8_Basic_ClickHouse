
CREATE TABLE IF NOT EXISTS shops (
    shop_id UInt8 NOT NULL,
    shop_name String NOT NULL
)
ENGINE = PostgreSQL('postgres:5432', 'postgresclickhouse', 'shops', 'postgres', 'postgres');


CREATE TABLE IF NOT EXISTS products (
    product_id UInt32 NOT NULL,
    product_name String NOT NULL,
	price Decimal32(2) NOT NULL
)
ENGINE = PostgreSQL('postgres:5432', 'postgresclickhouse', 'products', 'postgres', 'postgres');


CREATE TABLE IF NOT EXISTS plan (
	product_id UInt32 NOT NULL,
    shop_id UInt8 NOT NULL,
	plan_cnt UInt16 NOT NULL,
	plan_date Date NOT NULL
)
ENGINE = PostgreSQL('postgres:5432', 'postgresclickhouse', 'plan', 'postgres', 'postgres');


CREATE TABLE IF NOT EXISTS shop_dns (
	sale_date Date NOT NULL,
    shop_id UInt8 NOT NULL,
	product_id UInt32 NOT NULL,
    sales_cnt UInt16 NOT NULL
)
ENGINE = PostgreSQL('postgres:5432', 'postgresclickhouse', 'shop_dns', 'postgres', 'postgres');


CREATE TABLE IF NOT EXISTS shop_mvideo (
	sale_date Date NOT NULL,
    shop_id UInt8 NOT NULL,
	product_id UInt32 NOT NULL,
    sales_cnt UInt16 NOT NULL
)
ENGINE = PostgreSQL('postgres:5432', 'postgresclickhouse', 'shop_mvideo', 'postgres', 'postgres');

CREATE TABLE IF NOT EXISTS shop_citilink (
	sale_date Date NOT NULL,
    shop_id UInt8 NOT NULL,
	product_id UInt32 NOT NULL,
    sales_cnt UInt16 NOT NULL
)
ENGINE = PostgreSQL('postgres:5432', 'postgresclickhouse', 'shop_citilink', 'postgres', 'postgres');


CREATE TABLE IF NOT EXISTS default.task_vitrina (
    "sale_month" String,
	"shop_name" String,
	"product_name" String,
	"sales_fact" Float64,
	"sales_plan" Float64,
	"sales_fact_plan" Float64,
	"income_fact" Float64,
	"income_plan" Float64,
	"income_fact_plan" Float64
)
ENGINE = PostgreSQL('postgres:5432', 'postgresclickhouse', 'task_vitrina', 'postgres', 'postgres');








