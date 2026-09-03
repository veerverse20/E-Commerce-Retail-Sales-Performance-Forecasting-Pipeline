    
# 📊 E-Commerce Sales Performance & Forecasting Pipeline  
 
An end-to-end data analytics and forecasting solution that ingests raw retail transactional data, performs data cleaning and transformation using SQL, executes Python-based time-series revenue forecasting, and delivers executive-ready business insights through an interactive Power BI dashboard.

---

## 📌 Business Overview & Objective  

In competitive retail environments, analyzing historical performance alone is insufficient for operational efficiency. E-commerce leadership needs clarity on both past trends and future revenue streams to optimize inventory, streamline marketing campaigns, and allocate regional budgets.

This project delivers:
* **Historical Metric Tracking**: Real-time aggregation of Revenue, Orders, Items Sold, and Average Order Value (AOV).
* **Predictive Revenue Modeling**: A 3-month forward-looking forecasting model using Python time-series analysis.
* **Geographical & Temporal Segmentation**: Deep dives into regional market contribution and sales patterns by day of the week.

---

## 🏗️ Repository Architecture

```text
E-Commerce Retail Sales Performance & Forecasting Pipeline/
├── Dashboard/      # Power BI desktop files (.pbix) and layout templates
├── Dataset/        # Raw and cleaned CSV datasets
├── Icons/          # Custom UI and metric icons used in the dashboard
├── Notebooks/      # Jupyter notebooks for data cleaning, EDA, & time-series forecasting
├── SQL/            # SQL scripts for data extraction, transformations, & aggregations
└── README.md       # Project documentation & execution guide

```

---

## 🛠️ Tech Stack & Skills Demonstrated

* **Data Extraction & Transformation**: SQL, PostgreSQL
* **Data Science & Forecasting**: Python (`pandas`, `numpy`, `statsmodels`, `matplotlib`)
* **Business Intelligence & Data Visualization**: Power BI Desktop
* **Data Modeling & Analytics**: DAX (Data Analysis Expressions)

---

## 📈 Dashboard Key Features & Analytics Highlights

### 1. Key Performance Indicators (KPIs)

* **Total Revenue**: High-level aggregate revenue metric ($9.75M across analyzed periods).
* **Total Orders & Volume**: Tracks customer order frequency (25.9K) and physical unit volume (5M).
* **Average Order Value (AOV)**: Standardized order metric ($376.36) to gauge buyer basket size.

### 2. Time-Series Trend & Predictive Forecast

* Integrates actual historical monthly performance with a **3-Month Predictive Revenue Forecast**.
* Enables executive stakeholders to visualize seasonal sales momentum alongside projected growth.

### 3. Geographical Distribution

* Implements dynamic DAX grouping to identify top revenue-contributing markets (**United Kingdom, Netherlands, EIRE, Germany, France**) while consolidating long-tail international sales into an **Others** segment for clean reporting.

### 4. Operational Day-of-Week Revenue Analysis

* Evaluates weekly purchasing behavior to help marketing teams time promotional pushes on peak buyer days.

---

## 🧮 DAX Calculations Reference

Below are key DAX formulas utilized in the Power BI model:  

#### 1. Dynamic Regional Grouping Column

```dax
Country_Grouped = 
IF(
    'public cleaned_retail_sales'[country] IN {"United Kingdom", "Netherlands", "EIRE", "Germany", "France"},
    'public cleaned_retail_sales'[country],
    "Others"
)

```

#### 2. Day of Week Formatting

```dax
DayOfWeek = FORMAT('public cleaned_retail_sales'[invoice_date], "ddd")

```

---

## 🚀 How to Run & Reproduce

### 1. Prerequisites

Ensure you have the following installed on your machine:

* **Python 3.8+**
* **Power BI Desktop**
* **Git**

### 2. Clone the Repository

```bash
git clone [https://github.com/veerverse20/E-Commerce-Retail-Sales-Performance-Forecasting-Pipeline.git](https://github.com/veerverse20/E-Commerce-Retail-Sales-Performance-Forecasting-Pipeline.git)
cd "E-Commerce Retail Sales Performance & Forecasting Pipeline"

```

### 3. Run the Python Notebook

Navigate to the `Notebooks/` directory and execute the analysis notebook to perform data processing and generate model forecasts:

```bash
jupyter notebook

```

### 4. Open the Power BI Dashboard

Open the `.pbix` file located in the `Dashboard/` folder using **Power BI Desktop**. Ensure dataset source paths point to the local CSV files in `Dataset/`.

---

## 🤝 Contact & Author

* **Name**: Virendra
* **Role**: Data Analyst / Business Analyst
* **Repository**: [E-Commerce-Retail-Sales-Performance-Forecasting-Pipeline](https://www.google.com/search?q=https://github.com/veerverse20/E-Commerce-Retail-Sales-Performance-Forecasting-Pipeline)

```

```
