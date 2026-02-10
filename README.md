# Sales & Profit Performance Analysis

## 📌 Project Overview
This project presents an **end-to-end Sales and Profit Analysis** using a retail superstore dataset.  
The data was **cleaned and prepared in Microsoft Excel**, analyzed using **SQL**, and visualized through an **interactive Power BI dashboard** to uncover sales trends, profitability drivers, and loss-making areas.

---

## 🎯 Objectives
- Analyze overall sales and profit performance  
- Identify monthly sales and profit trends  
- Compare performance across regions and product categories  
- Detect loss-making sub-categories and customers  
- Understand the impact of discounts on profitability  
- Build a business-ready interactive dashboard  

---

## 🛠 Tools & Technologies
- **Microsoft Excel** – Data cleaning and preprocessing  
- **SQL Server** – Data querying and analysis  
- **Power BI** – Data visualization and dashboard development  

---

## 📂 Dataset Details
- **Dataset Name:** Retail Superstore Dataset  
- **Records:** 9,000+ orders  
- **Key Columns:**  
  - Order Date, Ship Date  
  - Sales, Profit, Discount, Quantity  
  - Category, Sub-Category  
  - Region, Customer Name  

---

## 🔄 Project Workflow

### 1️⃣ Data Cleaning & Preparation (Excel)
- Cleaned raw retail data using Microsoft Excel  
- Fixed formatting issues and validated numeric fields  
- Ensured data quality before loading into SQL Server  

---

### 2️⃣ Data Analysis (SQL)
- Loaded cleaned data into SQL Server  
- Wrote SQL queries to perform:
  - Total Sales and Total Profit analysis  
  - Monthly Sales and Profit trend analysis  
  - Region-wise and category-wise performance comparison  
  - Identification of loss-making sub-categories  
  - Customer-level profitability analysis  
  - Discount impact analysis  
  - Profit classification using `CASE WHEN`  
  - Ranking and trend analysis using window functions  

(SQL scripts are available in the `sql/` folder)

---

### 3️⃣ Dashboard Development (Power BI)
- Connected Power BI to SQL Server  
- Designed an interactive dashboard featuring:
  - KPI Cards: Total Sales, Total Profit, Profit Margin %  
  - Line Chart: Monthly Sales & Profit trends  
  - Bar Charts:
    - Sales & Profit by Region  
    - Loss-making Sub-Categories  
  - Interactive button slicers for:
    - Region  
    - Category  
    - Year  

---

## 📊 Key Business Insights
- High sales do not always translate into high profits  
- Certain sub-categories consistently generate losses  
- Discounts have a strong negative impact on profitability  
- Regional performance varies significantly  
- Profit trends fluctuate despite overall sales growth
  
---

## ⚠ Challenges & Solutions
**Challenge:** Data formatting and data type issues during SQL ingestion  
**Solution:** Cleaned and standardized the dataset in Excel before analysis  

---

## 📁 Repository Structure
sales-profit-analysis/
│
├── data/
│   └── superstore_project.csv
│
├── sql/
│   └── sales_profit_analysis_queries.sql
│
├── powerbi/
│   └── Sales_and_Profit_Performance_Dashboard.pbix
│
└── README.md


