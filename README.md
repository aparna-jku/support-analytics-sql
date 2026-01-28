# Enterprise Customer Support Analytics System (SQL / PostgreSQL)

## 📌 Overview
This project simulates an **enterprise-style customer support analytics system**, inspired by real-world CRM workflows used by large software companies (e.g., Adobe).

The goal is to demonstrate how customer support data can be **structured, stored, and analyzed** to generate meaningful insights about service quality, product issues, and operational performance.

---

## 🎯 Problem Statement
Large software companies handle thousands of support tickets every day.  
To improve customer experience and meet SLAs, they need to answer questions such as:

- Which products generate the most support issues?
- Are SLAs being breached for specific countries or customer types?
- How long does it take to resolve different categories of issues?
- Does agent experience impact resolution time?

This project models how such information can be captured and analyzed reliably.

---

## 🏗️ Data Model
The database follows a **fact–dimension (star schema) design**.

### Dimension Tables
- **customers** – customer type (B2B/B2C), country
- **products** – product name and category
- **issue_categories** – type of support issue
- **support_agents** – agent region and experience level

### Fact Table
- **tickets** – records each support interaction, including:
  - customer, product, issue, and agent references
  - timestamps for creation and resolution
  - resolution time in minutes
  - SLA breach indicator

Foreign keys ensure **data integrity and consistency**.

---

## 🔍 Analytics & Insights
Using SQL joins and aggregations, the system supports analysis such as:
- SLA breach rates by country
- Average resolution time by product
- Performance comparison between junior and senior agents
- Identification of high-impact issue categories

The data used is **synthetic but realistic**, designed to validate the schema and analytics logic.

---

## 🛠️ Tech Stack
- **Database:** PostgreSQL  
- **Query Language:** SQL  
- **Tools:** pgAdmin  
- **Data:** Synthetic, production-style sample data

---

## 📂 Project Structure



---

## 🚀 Why This Project Matters
This project demonstrates:
- Relational data modeling
- Fact and dimension table design
- Business-oriented SQL analytics
- How operational data is transformed into decision-ready information

It reflects how **real analytics systems are designed**, not just SQL syntax.

---

## 🔮 Future Enhancements
- Python-based ETL pipeline
- Automated data generation
- Feature engineering for ML models
- Dashboarding (Power BI / Tableau)

---

## 🧠 Key Takeaway
This project focuses on **designing reliable data systems** that support real business decisions using SQL and PostgreSQL.

