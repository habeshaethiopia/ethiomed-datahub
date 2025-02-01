# **Ethiomed Data Warehouse**  

## **Overview**  
Ethiomed Data Warehouse is a scalable data infrastructure designed to collect, process, and analyze data on Ethiopian medical businesses. This project integrates **web and Telegram scraping**, **ETL/ELT pipelines**, and **YOLO-based object detection** to provide a robust platform for data-driven insights.  

## **Features**  
✅ **Automated Web & Telegram Scraping** – Collects real-time medical business data  
✅ **ETL/ELT Pipelines** – Cleans, transforms, and loads data into the warehouse  
✅ **YOLO-Based Object Detection** – Extracts visual insights from collected images  
✅ **Scalable Data Warehouse** – Efficient storage and querying of structured data  
✅ **Data Integration & Enrichment** – Enhances datasets for better analytics  

## **Tech Stack**  
- **Programming Languages:** Python, SQL  
- **Scraping:** Scrapy, Selenium, Telethon (for Telegram)  
- **ETL/ELT:** Apache Airflow, Pandas, dbt (Data Build Tool)  
- **Data Warehouse:** PostgreSQL, BigQuery, Snowflake (configurable)  
- **Object Detection:** YOLOv8 (Ultralytics)  
- **Cloud & Storage:** AWS S3, Google Cloud Storage  

## **Architecture**  
1. **Data Collection:** Scrapes data from websites and Telegram channels  
2. **Data Processing:** Cleans, normalizes, and structures data using ETL/ELT  
3. **Object Detection:** Uses YOLO to detect medical-related objects in images  
4. **Data Warehousing:** Stores processed data for fast querying and analysis  
5. **Data Analysis & Reporting:** Generates insights for decision-making  

## **Setup & Installation**  

### **Prerequisites**  
Ensure you have the following installed:  
- Python 3.8+  
- PostgreSQL / BigQuery / Snowflake  
- Docker (optional but recommended for deployment)  

### **Installation Steps**  
1. Clone the repository:  
   ```bash
   git clone https://github.com/habeshaethiopia/ethiomed-datahub.git
   cd ethiomed-datahub
   ```  
2. Install dependencies:  
   ```bash
   pip install -r requirements.txt
   ```  
3. Set up environment variables (`.env` file):  
   ```plaintext
   DATABASE_URL=your_database_url
   TELEGRAM_API_ID=your_api_id
   TELEGRAM_API_HASH=your_api_hash
   ```  
4. Run the scraper:  
   ```bash
   python scraper.py
   ```  
5. Process the data using ETL/ELT pipeline:  
   ```bash
   python etl_pipeline.py
   ```  
6. Run YOLO object detection:  
   ```bash
   python object_detection.py
   ```  
7. Load data into the warehouse:  
   ```bash
   python load_to_warehouse.py
   ```  

## **Usage**  
- **Run Scrapers** to fetch data from websites & Telegram channels  
- **Execute ETL Pipelines** to transform and clean raw data  
- **Perform Object Detection** on medical-related images  
- **Query the Data Warehouse** to analyze insights  

## **Future Enhancements**  
📌 Implement a real-time streaming pipeline  
📌 Improve YOLO model for better medical object detection  
📌 Deploy a visualization dashboard for analytics  

## **Contributing**  
We welcome contributions! Please check the [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.  

## **License**  
This project is licensed under the **MIT License**. See [LICENSE](LICENSE) for details.  

---
