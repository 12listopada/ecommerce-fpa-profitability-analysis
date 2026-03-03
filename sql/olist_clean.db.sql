BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS actual_items_monthly(
  purchase_month,
  orders_cnt,
  revenue,
  freight
);
CREATE TABLE IF NOT EXISTS actual_payments_monthly(
  purchase_month,
  paid_value
);
CREATE TABLE IF NOT EXISTS actuals_monthly(
  purchase_month,
  orders_cnt,
  revenue,
  freight,
  paid_value
);
CREATE TABLE IF NOT EXISTS actuals_monthly_by_category(
  purchase_month,
  category_english,
  revenue,
  freight
);
CREATE TABLE IF NOT EXISTS assumptions_category_rates (
  category_english TEXT PRIMARY KEY,
  cogs_rate REAL NOT NULL,
  shipping_cost_share REAL NOT NULL,
  payment_fee_rate REAL NOT NULL
);
CREATE TABLE IF NOT EXISTS board_kpi_monthly(
  purchase_month,
  revenue,
  gross_margin,
  gross_margin_pct,
  contribution_margin,
  contribution_margin_pct,
  ebitda
);
CREATE TABLE IF NOT EXISTS budget_monthly(
  purchase_month,
  budget_orders,
  budget_aov
, budget_revenue REAL);
CREATE TABLE IF NOT EXISTS budget_monthly_scenario(
  scenario TEXT,
  purchase_month,
  budget_orders,
  budget_aov
, budget_revenue REAL);
CREATE TABLE IF NOT EXISTS cash_monthly_by_category(
  purchase_month,
  category_english,
  revenue,
  paid_value_allocated
);
CREATE TABLE IF NOT EXISTS cost_ratios(
  purchase_month,
  cogs_ratio,
  shipping_ratio,
  fee_ratio
);
CREATE TABLE IF NOT EXISTS drivers_monthly(
  purchase_month,
  orders_cnt,
  revenue,
  aov
);
CREATE TABLE IF NOT EXISTS ebitda_monthly(
  purchase_month,
  revenue,
  cogs_proxy,
  gross_margin,
  shipping_cost_proxy,
  payment_fees_proxy,
  contribution_margin,
  fixed_costs,
  ebitda
);
CREATE TABLE IF NOT EXISTS ebitda_monthly_scenario(
  scenario TEXT,
  purchase_month,
  budget_revenue REAL,
  budget_cogs,
  budget_shipping,
  budget_fees,
  budget_contribution_margin,
  fixed_costs,
  budget_ebitda
);
CREATE TABLE IF NOT EXISTS ebitda_variance(
  scenario TEXT,
  purchase_month,
  actual_ebitda,
  budget_ebitda,
  ebitda_variance
);
CREATE TABLE IF NOT EXISTS fixed_costs_monthly(
  purchase_month,
  fixed_costs
);
CREATE TABLE IF NOT EXISTS items_enriched(
  order_id TEXT,
  order_item_id INT,
  product_id TEXT,
  seller_id TEXT,
  price REAL,
  freight_value,
  product_category_name TEXT,
  category_english
);
CREATE TABLE IF NOT EXISTS margins_monthly_by_category(
  purchase_month,
  category_english,
  revenue,
  freight,
  cogs_proxy,
  shipping_cost_proxy,
  payment_fees_proxy,
  gross_margin,
  contribution_margin
);
CREATE TABLE IF NOT EXISTS margins_monthly_total(
  purchase_month,
  revenue,
  cogs_proxy,
  gross_margin,
  shipping_cost_proxy,
  payment_fees_proxy,
  contribution_margin,
  gross_margin_pct,
  contribution_margin_pct
);
CREATE TABLE IF NOT EXISTS missing_item_orders(
  purchase_month,
  order_id TEXT,
  is_actual_eligible,
  paid_value
);
CREATE TABLE IF NOT EXISTS "olist_customers_dataset" (
	"customer_id"	TEXT,
	"customer_unique_id"	TEXT,
	"customer_zip_code_prefix"	INTEGER,
	"customer_city"	TEXT,
	"customer_state"	TEXT
);
CREATE TABLE IF NOT EXISTS "olist_geolocation_dataset" (
	"geolocation_zip_code_prefix"	INTEGER,
	"geolocation_lat"	REAL,
	"geolocation_lng"	REAL,
	"geolocation_city"	TEXT,
	"geolocation_state"	TEXT
);
CREATE TABLE IF NOT EXISTS "olist_order_items_dataset" (
	"order_id"	TEXT,
	"order_item_id"	INTEGER,
	"product_id"	TEXT,
	"seller_id"	TEXT,
	"shipping_limit_date"	TEXT,
	"price"	REAL,
	"freight_value"	REAL
);
CREATE TABLE IF NOT EXISTS "olist_order_payments_dataset" (
	"order_id"	TEXT,
	"payment_sequential"	INTEGER,
	"payment_type"	TEXT,
	"payment_installments"	INTEGER,
	"payment_value"	REAL
);
CREATE TABLE IF NOT EXISTS "olist_order_reviews_dataset" (
	"review_id"	TEXT,
	"order_id"	TEXT,
	"review_score"	INTEGER,
	"review_comment_title"	TEXT,
	"review_comment_message"	TEXT,
	"review_creation_date"	TEXT,
	"review_answer_timestamp"	TEXT
);
CREATE TABLE IF NOT EXISTS "olist_orders_dataset" (
	"order_id"	TEXT,
	"customer_id"	TEXT,
	"order_status"	TEXT,
	"order_purchase_timestamp"	TEXT,
	"order_approved_at"	TEXT,
	"order_delivered_carrier_date"	TEXT,
	"order_delivered_customer_date"	TEXT,
	"order_estimated_delivery_date"	TEXT
);
CREATE TABLE IF NOT EXISTS "olist_products_dataset" (
	"product_id"	TEXT,
	"product_category_name"	TEXT,
	"product_name_lenght"	INTEGER,
	"product_description_lenght"	INTEGER,
	"product_photos_qty"	INTEGER,
	"product_weight_g"	INTEGER,
	"product_length_cm"	INTEGER,
	"product_height_cm"	INTEGER,
	"product_width_cm"	INTEGER
);
CREATE TABLE IF NOT EXISTS "olist_sellers_dataset" (
	"seller_id"	TEXT,
	"seller_zip_code_prefix"	INTEGER,
	"seller_city"	TEXT,
	"seller_state"	TEXT
);
CREATE TABLE IF NOT EXISTS order_item_totals(
  order_id TEXT,
  order_items_revenue
);
CREATE TABLE IF NOT EXISTS orders_clean(
  order_id TEXT,
  customer_id TEXT,
  order_status TEXT,
  order_purchase_timestamp TEXT,
  purchase_month,
  is_actual_eligible
);
CREATE TABLE IF NOT EXISTS payments_by_order(
  order_id TEXT,
  paid_value,
  payment_rows
);
CREATE TABLE IF NOT EXISTS "product_category_name_translation" (
	"product_category_name"	TEXT,
	"product_category_name_english"	TEXT
);
CREATE TABLE IF NOT EXISTS sales_items_allocated(
  purchase_month,
  order_id TEXT,
  is_actual_eligible,
  order_item_id INT,
  category_english,
  item_revenue REAL,
  paid_value,
  order_items_revenue,
  allocated_paid_value
);
CREATE TABLE IF NOT EXISTS sales_items_base(
  purchase_month,
  order_id TEXT,
  is_actual_eligible,
  order_item_id INT,
  category_english,
  item_revenue REAL,
  paid_value,
  order_items_revenue
, allocated_paid_value REAL);
CREATE TABLE IF NOT EXISTS scenario_params (
  scenario TEXT PRIMARY KEY,
  orders_growth REAL NOT NULL,
  aov_growth REAL NOT NULL
);
CREATE TABLE IF NOT EXISTS variance_decomposition(
  scenario TEXT,
  purchase_month,
  actual_orders,
  actual_revenue,
  actual_aov,
  budget_orders,
  budget_aov,
  budget_revenue REAL,
  revenue_variance,
  volume_effect,
  price_effect
);
CREATE TABLE IF NOT EXISTS variance_monthly(
  purchase_month,
  actual_revenue,
  budget_revenue REAL,
  revenue_variance,
  revenue_variance_pct
);
CREATE TABLE IF NOT EXISTS variance_monthly_scenario(
  scenario TEXT,
  purchase_month,
  actual_revenue,
  budget_revenue REAL,
  revenue_variance,
  revenue_variance_pct
);
CREATE INDEX idx_items_order_id ON olist_order_items_dataset(order_id);
CREATE INDEX idx_items_product_id ON olist_order_items_dataset(product_id);
CREATE INDEX idx_orders_order_id ON olist_orders_dataset(order_id);
CREATE INDEX idx_orders_purchase_ts ON olist_orders_dataset(order_purchase_timestamp);
CREATE INDEX idx_payments_order_id ON olist_order_payments_dataset(order_id);
CREATE INDEX idx_products_product_id ON olist_products_dataset(product_id);
COMMIT;
