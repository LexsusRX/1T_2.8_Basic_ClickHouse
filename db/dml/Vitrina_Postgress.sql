CREATE OR REPLACE VIEW public.task_vitrina AS
WITH task_vitrina AS (
	SELECT shop_id , sale_date , product_id , sales_cnt 
	FROM shop_dns
	UNION 
	SELECT shop_id , sale_date ,  product_id , sales_cnt 
	FROM shop_mvideo
	UNION 
	SELECT shop_id , sale_date ,  product_id , sales_cnt 
	FROM shop_citilink
),
shop_sales AS (
		SELECT shop_name, shop_id, date_part('month', sale_date) AS sale_month, product_id , sum(sales_cnt) sales
		FROM task_vitrina
				JOIN shops s USING (shop_id)
		GROUP BY shop_name, product_id , shop_id , sale_month
	)
	SELECT 
		shs.sale_month,
		shs.shop_name,
		prs.product_name,
		shs.sales AS sales_fact,
		p.plan_cnt AS sales_plan,
		ROUND ((shs.sales / p.plan_cnt), 2) AS sales_fact_plan,
		shs.sales * prs.price AS income_fact,
		p.plan_cnt * prs.price AS income_plan,
		ROUND ((shs.sales * prs.price) / (p.plan_cnt * prs.price), 2) AS income_fact_plan
	FROM 
		shop_sales AS shs
		JOIN plan p ON shs.shop_id = p.shop_id AND shs.product_id = p.product_id 
		JOIN products prs ON shs.product_id = prs.product_id 
		ORDER BY shs.sale_month, shs.shop_name, prs.product_name
;





