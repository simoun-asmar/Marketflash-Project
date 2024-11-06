# SQL

This folder contains all SQL scripts necessary for creating, populating, and testing the Marketflash database, based on the requirements gathered from discussions with Markus, the owner of Marketflash. Each file in this folder is dedicated to a specific aspect of the database setup and validation.

### Files in this Folder:

1. **Create.sql**
   - This script is responsible for building the database structure.
   - It defines each table, along with primary and foreign keys, and enforces data integrity through constraints.
   - The tables and column names are carefully aligned with the ERD to ensure consistency and adherence to the normalized design, minimizing redundancy.

2. **Insert.sql**
   - This file contains commands to populate each table with sample data.
   - The initial dataset includes 5 rows per table to provide a foundation for testing the structure and relationships.
   - Data points were derived from the Marketflash data sheets provided by Markus, with unique IDs and values structured according to the project’s naming conventions.

3. **Join.sql**
   - This script tests the relationships between tables using JOIN statements.
   - Each query in this file verifies the integrity of foreign key connections by pulling data from related tables.
   - It includes tests on all key relationships, such as `employees` to `departments`, `campaigns` to `channels`, and `campaigns` to `clients`, ensuring that the database relationships are functioning as designed.
   - Additionally, a comprehensive query is provided to pull a complete view of campaign details across multiple tables, simulating the kind of data analysis needed for the Marketflash dashboard.

### Purpose:
The **SQL** folder provides all the foundational scripts required to set up, populate, and validate the Marketflash database. These scripts ensure that the data structure is optimized for accurate reporting and analysis, which will be visualized later in the dashboard.

Each script can be run sequentially:
1. **Create.sql** to build the structure.
2. **Insert.sql** to load sample data.
3. **Join.sql** to test relationships and validate that the database operates as intended.

These files together ensure that the database is ready for actionable insights, supporting the campaign analysis objectives that will be highlighted in the dashboard.

