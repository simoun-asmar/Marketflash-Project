-- Join Queries to Test Relationships Between Tables

-- employees and departments (testing department_id foreign key)
SELECT e.employee_id, e.employee_name, e.email, d.department AS department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- campaigns and channels (testing channel_id foreign key)
SELECT c.campaign_id, c.campaign_type_id, ch.name AS channel_name
FROM campaigns c
JOIN channels ch ON c.channel_id = ch.channel_id;

-- campaigns and clients (testing client_id foreign key)
SELECT c.campaign_id, c.campaign_type_id, cl.company_name AS client_name
FROM campaigns c
JOIN clients cl ON c.client_id = cl.client_id;

-- campaigns and employees (testing executive_id foreign key)
SELECT c.campaign_id, c.campaign_type_id, e.employee_name AS executive_name
FROM campaigns c
JOIN employees e ON c.executive_id = e.employee_id;

-- campaigns and locations (testing location_id foreign key)
SELECT c.campaign_id, c.campaign_type_id, l.location AS campaign_location
FROM campaigns c
JOIN locations l ON c.location_id = l.location_id;

-- campaigns and campaign_types (testing campaign_type_id foreign key)
SELECT c.campaign_id, ct.campaign_type AS type_name
FROM campaigns c
JOIN campaign_types ct ON c.campaign_type_id = ct.campaign_type_id;

-- employees self-join (testing supervisor_id foreign key in employees table)
SELECT e.employee_id, e.employee_name, s.employee_name AS supervisor_name
FROM employees e
LEFT JOIN employees s ON e.supervisor_id = s.employee_id;

-- Comprehensive join across campaigns, channels, clients, campaign_types, locations, and employees
-- This query provides a complete view of each campaign's details and verifies that foreign key relationships
-- are correctly set up across multiple tables.
SELECT 
    c.campaign_id,
    c.start_date,
    c.end_date,
    ch.name AS channel_name,
    cl.company_name AS client_name,
    ct.campaign_type AS campaign_type,
    l.location AS location_name,
    e.employee_name AS executive_name,
    c.audience,
    c.likes,
    c.clicks,
    c.conversion,
    c.expense,
    c.views,
    c.engagement,
    c.total_sales
FROM 
    campaigns c
JOIN 
    channels ch ON c.channel_id = ch.channel_id
JOIN 
    clients cl ON c.client_id = cl.client_id
JOIN 
    campaign_types ct ON c.campaign_type_id = ct.campaign_type_id
JOIN 
    locations l ON c.location_id = l.location_id
JOIN 
    employees e ON c.executive_id = e.employee_id;
