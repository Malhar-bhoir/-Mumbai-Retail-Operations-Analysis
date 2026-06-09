

# 📊 Mumbai Retail Operations Analysis

## 📄 Project Overview
This project is an end-to-end **data analytics portfolio piece** focusing on localized retail transactions across the **Mumbai Metropolitan Region (MMR)**.  
**Objective:** Identify key revenue drivers, assess geographical profitability, and provide actionable, data-backed recommendations for operational efficiency.

- **Executive Insights Summary:** `Executive_Summary_Mumbai_Retail.pdf`  
- **Dashboard Preview:** <img width="1204" height="697" alt="image" src="https://github.com/user-attachments/assets/d7a76338-e301-4982-a8ae-1866c20db312" />


---

## 💡 Key Analytical Insights
- **Q4 Festive Surge**  
  Time-series analysis shows a consistent ~20% spike in total revenue during October–November, strongly tied to **Diwali purchasing behaviors**.  

- **Margin Discrepancies by Geography**  
  - Western Suburbs: Highest profit margin at **14.55%**  
  - Thane & Navi Mumbai: Close second at **14.12%**  

- **Product Dominance**  
  Technology and Furniture dominate gross revenue, with **Phones** and **Chairs** far outpacing traditional office supplies.  

---

## 🚀 Strategic Recommendations
- **Supply Chain Pre-Allocation**  
  Pre-allocate inventory for Phones and Chairs to **Thane & Navi Mumbai warehouses** by late September to avoid Q4 bottlenecks.  

- **Targeted Marketing**  
  Shift acquisition budgets toward the **Western Suburbs** to maximize high-margin returns.  

- **Strategic Bundling**  
  Bundle **tech accessories** or **office storage units** with Phone/Chair purchases to lift **Average Order Value (AOV)**.  

---

## 🛠️ Engineering Approach & Tech Stack
- **Data Acquisition & Localization** (Python/Pandas)  
  - Cleaned missing values, parsed datetime formats.  
  - Mapped generic geographies to Mumbai zones (Bandra, Powai, Thane).  
  - Injected seasonal Diwali sales bump for time-series testing.  

- **Data Aggregation** (T-SQL)  
  - Extracted top product sub-categories, MoM revenue growth, and regional margins.  

- **Exploratory Data Analysis** (Jupyter/Matplotlib)  
  - Visualized distributions and validated SQL findings.  

- **Interactive Visualization** (Power BI)  
  - Built dashboard with DAX measures (`DISTINCTCOUNT`, `DIVIDE`) for dynamic KPI filtering.  

---

## 📁 Repository Structure
```
├── data/
│   ├── SampleSuperstore.csv              # Original raw data
│   └── Mumbai_Retail_Sales_Data.csv      # Cleaned & localized output
├── scripts/
│   ├── mumbai_retail_localization.py     # Data cleaning & mapping script
│   └── visualization_charts.ipynb        # EDA and Matplotlib visualizations
├── sql/
│   └── analytical_queries.sql            # T-SQL aggregation scripts
├── dashboard/
│   ├── Mumbai_Retail_Dashboard.pbix      # Power BI project file
│   └── dashboard_screenshot.png          # Image for README
├── Executive_Summary_Mumbai_Retail.pdf   # 1-Page Business Summary
└── README.md
```

---

## ⚙️ How to Run the Code
1. **Clone the repository**  
2. Run `mumbai_retail_localization.py` → generates localized dataset  
3. Import CSV into **SQL Server** → run `analytical_queries.sql`  
4. Open `.pbix` in **Power BI Desktop** → interact with dashboard  

