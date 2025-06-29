
Sales Performance & Profitability Dashboard

 📊 Project Overview
This project simulates a retail business dataset and uses SQL and Power BI to generate sales performance insights. 
The goal is to demonstrate junior data analyst skills in querying, transforming, and visualizing business data.

🗂️ Database Schema

 Customers
- `customer_id`: Unique identifier for customer
- `name`: Customer name
- `region`: Region of customer (North, South, East, West)
- `signup_date`: Date of signup

Products
- `product_id`: Unique identifier for product
- `category`: Product category (Electronics, Furniture, Clothing, Books)
- `name`: Product name
- `price`: Selling price
- `cost_price`: Cost price to company

 Orders
- `order_id`: Unique identifier for order
- `customer_id`: Foreign key to Customers
- `order_date`: Date of order
- `status`: Completed or Cancelled

OrderItems
- `item_id`: Unique identifier for order item
- `order_id`: Foreign key to Orders
- `product_id`: Foreign key to Products
- `quantity`: Number of units
- `total_price`: Total price = quantity × price

🛠️ SQL Queries Performed
- Total revenue and total orders
- Region-wise and monthly sales
- Top 5 products by quantity sold
- Profit per product
- Customer segmentation by order frequency

📈 Power BI Dashboard Features
- KPIs: Total Sales, Total Profit, Orders, Customers
- Line chart: Monthly revenue trend
- Bar chart: Category-wise sales and profit
- Table: Top 5 best-selling products
- Filters: By Region, Category, Date

 📁 Files Included
- `create_tables.sql`: SQL script to create tables
- `sample_data.sql`: Sample 300+ data insert script
- `queries.sql`: SQL queries for analysis
- `customers.csv`, `products.csv`, `orders.csv`, `order_items.csv`: Excel for Power BI
- `SalesDashboard.pbix`: Power BI dashboard (separately generated)


