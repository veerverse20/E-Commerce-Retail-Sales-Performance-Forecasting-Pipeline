-- Creates the staging table for raw retail transactions
CREATE TABLE raw_online_retail (
    transaction_id SERIAL PRIMARY KEY,      -- Auto-incrementing unique identifier for every row
    invoice_no VARCHAR(20),                 -- Text, because some numbers start with 'C'
    stock_code VARCHAR(20),                 -- Product codes can contain letters
    description VARCHAR(255),               -- Text description of the item
    quantity INTEGER,                       -- Whole numbers only (can be negative)
    invoice_date TIMESTAMP,                 -- Exact date and time of purchase
    unit_price NUMERIC(10, 2),              -- Decimal numbers with exactly 2 decimal places for currency
    customer_id INTEGER,                    -- Whole numbers for IDs (allows nulls by default)
    country VARCHAR(100)                    -- Text name of the country
);