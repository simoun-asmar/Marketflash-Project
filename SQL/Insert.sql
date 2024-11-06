-- SQL Script for Inserting Data into Tables
-- This script inserts initial data into each table, ensuring that primary keys and foreign key relationships
-- are correctly populated according to the ERD structure.
-- Each table has 5 rows of sample data, using naming conventions for primary keys.

INSERT INTO departments (department_id, department)
VALUES 
    ('D001', 'Media'),
    ('D002', 'Design'),
    ('D003', 'Administration'),
    ('D004', 'Sales'),
    ('D005', 'Marketing');

INSERT INTO channels (channel_id, name)
VALUES 
    ('CH001', 'YouTube'),
    ('CH002', 'Email'),
    ('CH003', 'TikTok'),
    ('CH004', 'Instagram'),
    ('CH005', 'Facebook');

INSERT INTO campaign_types (campaign_type_id, campaign_type)
VALUES 
    ('CT001', 'Sales'),
    ('CT002', 'Product Launch'),
    ('CT003', 'Brand Awareness'),
    ('CT004', 'Lead Generation'),
    ('CT005', 'Customer Retention');

INSERT INTO locations (location_id, location)
VALUES 
    ('L001', 'USA'),
    ('L002', 'Europe'),
    ('L003', 'Canada'),
    ('L004', 'LATAM'),
    ('L005', 'Asia');

INSERT INTO employees (employee_id, employee_name, address, email, phone, supervisor_id, department_id)
VALUES 
    ('E001', 'Aaron Faulkner', '123 Maple St, Springfield', 'aaron.faulkner@example.com', '555-123-4567', NULL, 'D001'),
    ('E002', 'Becky Brown', '456 Oak St, Rivertown', 'becky.brown@example.com', '555-234-5678', 'E001', 'D001'),
    ('E003', 'Brandon Townsend Jr.', '789 Pine St, Hillside', 'brandon.townsend@example.com', '555-345-6789', 'E002', 'D001'),
    ('E004', 'Jesus Rivera', '101 Cedar St, Greenfield', 'jesus.rivera@example.com', '555-456-7890', 'E001', 'D001'),
    ('E005', 'Kyle Serrano', '202 Birch St, Lakeside', 'kyle.serrano@example.com', '555-567-8901', 'E001', 'D001');

INSERT INTO clients (client_id, company_name, address, email, phone, contact_person)
VALUES 
    ('CL001', 'Lopez PLC', '0806 Watson Drive Suite 662, Port Andrea, DE 42229-2699', 'zmcintyre@bauer.info', '3724028579', 'Barbara Walker'),
    ('CL002', 'Weaver, Garner and Ramos', '2933 Ortiz Overpass Suite 099, South Douglasbury, TX 36804', 'oscott@gmail.com', '498.978.7718x501', 'Melinda Johnston'),
    ('CL003', 'Salinas-Chavez', '53637 Bonnie Walk Suite 961, South Adrianaport, MS 67492', 'richard84@hotmail.com', '2545622603', 'Chelsea Hoffman'),
    ('CL004', 'Russell, Wilson and Rogers', '27907 Deborah Hill Suite 235, Abigailbury, CO 29283', 'michael78@yahoo.com', '(995)213-6315', 'Michael Howard'),
    ('CL005', 'White Ltd', '172 Angela Crescent Apt. 306, North Laura, HI 43454', 'jeremy56@gmail.com', '(320)185-3187x395', 'Nathan Weber');

INSERT INTO campaigns (campaign_id, start_date, end_date, channel_id, client_id, campaign_type_id, audience, likes, clicks, conversion, expense, views, engagement, total_sales, location_id, executive_id)
VALUES 
    ('C001', '2023-12-18', '2024-01-10', 'CH001', 'CL001', 'CT001', 'Adults 18-40', 1056, 1056, 702, 13961.03, 23458, 7718, NULL, 'L001', 'E001'),
    ('C002', '2023-10-12', '2023-11-09', 'CH002', 'CL002', 'CT002', 'Female 60+', 1360, 1360, 182, 43804.31, NULL, 8075, 50878.17, 'L002', 'E002'),
    ('C003', '2023-05-18', '2023-06-04', 'CH003', 'CL003', 'CT003', 'Male 40-60', 1655, 1655, 669, 36007.47, 45934, 2446, 76729.41, 'L003', 'E003'),
    ('C004', '2023-02-23', '2023-03-09', 'CH004', 'CL004', 'CT004', 'Female 18-40', 2669, 2669, 243, 37425.85, 30391, 1700, 42784.94, 'L004', 'E003'),
    ('C005', '2023-11-20', '2023-12-11', 'CH005', 'CL005', 'CT005', 'Male 60+', 4242, 4242, 753, 48590.34, 52042, 191, 64163.39, 'L003', 'E004');
