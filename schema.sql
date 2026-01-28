-- =====================================
-- SCHEMA: Enterprise Customer Support Analytics
-- Database: PostgreSQL
-- =====================================

-- Customers Dimension
CREATE TABLE IF NOT EXISTS customers (
    customer_id SERIAL PRIMARY KEY,
    customer_type VARCHAR(10) CHECK (customer_type IN ('B2B', 'B2C')),
    country VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Products Dimension
CREATE TABLE IF NOT EXISTS products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    product_category VARCHAR(50)
);

-- Issue Categories Dimension
CREATE TABLE IF NOT EXISTS issue_categories (
    issue_id SERIAL PRIMARY KEY,
    issue_type VARCHAR(50) NOT NULL
);

-- Support Agents Dimension
CREATE TABLE IF NOT EXISTS support_agents (
    agent_id SERIAL PRIMARY KEY,
    region VARCHAR(50),
    experience_level VARCHAR(20)
);

-- Tickets Fact Table
CREATE TABLE IF NOT EXISTS tickets (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    product_id INT REFERENCES products(product_id),
    issue_id INT REFERENCES issue_categories(issue_id),
    agent_id INT REFERENCES support_agents(agent_id),
    priority VARCHAR(10),
    created_at TIMESTAMP,
    resolved_at TIMESTAMP,
    resolution_time_minutes INT,
    sla_breached BOOLEAN
);

