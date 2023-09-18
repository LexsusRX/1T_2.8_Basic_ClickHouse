

CREATE TABLE IF NOT EXISTS public.shops (
    shop_id INTEGER PRIMARY KEY,
    shop_name VARCHAR(50) NOT NULL
);


CREATE TABLE IF NOT EXISTS public.products (
    product_id INTEGER PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
	price NUMERIC(10, 2)
);


CREATE TABLE IF NOT EXISTS public.plan (
    product_id INTEGER REFERENCES products (product_id) ON DELETE CASCADE ON UPDATE CASCADE,
    shop_id INTEGER REFERENCES shops (shop_id) ON DELETE CASCADE ON UPDATE CASCADE,
	plan_cnt INTEGER,
	plan_date DATE
);



CREATE TABLE IF NOT EXISTS public.shop_dns (
	sale_date DATE,
	shop_id INTEGER REFERENCES shops (shop_id) ON DELETE CASCADE ON UPDATE CASCADE,
	product_id INTEGER REFERENCES products (product_id) ON DELETE CASCADE ON UPDATE CASCADE,
    sales_cnt INTEGER

);


CREATE TABLE IF NOT EXISTS public.shop_mvideo (
	sale_date DATE,
	shop_id INTEGER REFERENCES shops (shop_id) ON DELETE CASCADE ON UPDATE CASCADE,
	product_id INTEGER REFERENCES products (product_id) ON DELETE CASCADE ON UPDATE CASCADE,
	sales_cnt INTEGER

);

CREATE TABLE IF NOT EXISTS public.shop_citilink (
	sale_date DATE,
	shop_id INTEGER REFERENCES shops (shop_id) ON DELETE CASCADE ON UPDATE CASCADE,
	product_id INTEGER REFERENCES products (product_id) ON DELETE CASCADE ON UPDATE CASCADE,
	sales_cnt INTEGER

);








