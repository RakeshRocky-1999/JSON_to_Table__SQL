# JSON TO TABLE: Bridging Unstructured and Structured Data

## Overview
This project demonstrates how to efficiently transform JSON data into a structured tabular format using Microsoft SQL Server. The solution is designed to extract and process JSON data, load it into a relational database table, and ensure data integrity through updates and merges with existing records. Additional transformations and domain-specific enhancements, such as deriving domain names from email addresses and enriching country and state data, are also implemented.

## Features
- **JSON Parsing**: Converts JSON data into a relational format using SQL Server’s `OPENJSON` function.
- **Data Transformation**: Handles updates to fields like expiration dates and enriches data with information from external tables (e.g., `CountryRegion` and `StateProvince` from AdventureWorks database).
- **Data Integrity**: Uses `MERGE` statements to handle inserts and updates efficiently.
- **Domain Derivation**: Extracts the domain name from email addresses for further analysis.
- **Error Handling**: Implements robust exception handling with SQL Server’s `TRY...CATCH` blocks.

## Database Setup
1. **Create Database**:
   ```sql
   CREATE DATABASE MINI_PROJECT;
   USE MINI_PROJECT;
   ```

2. **Create Main Table**:
   The `T_PC_REFERRALS` table stores processed JSON data.
   ```sql
   CREATE TABLE T_PC_REFERRALS (
       ID NVARCHAR(MAX),
       ENGAGEMENTID NVARCHAR(MAX),
       CREATEDDATETIME NVARCHAR(MAX),
       UPDATEDDATETIME NVARCHAR(MAX),
       EXPIRATIONDATETIME NVARCHAR(MAX),
       STATUS NVARCHAR(MAX),
       SUBSTATUS NVARCHAR(MAX),
       STATUSREASON NVARCHAR(MAX),
       MPNID NVARCHAR(MAX),
       ACCEPTEDDATETIME NVARCHAR(MAX),
       ORGANIZATION_NAME NVARCHAR(MAX),
       ADDRESSLINE1 NVARCHAR(MAX),
       ADDRESSLINE2 NVARCHAR(MAX),
       CITY NVARCHAR(MAX),
       STATE NVARCHAR(MAX),
       COUNTRY NVARCHAR(MAX),
       POSTALCODE NVARCHAR(MAX),
       DEALVALUE NVARCHAR(MAX),
       CURRENCY NVARCHAR(MAX),
       FIRSTNAME NVARCHAR(MAX),
       LASTNAME NVARCHAR(MAX),
       MOBILENUMBER NVARCHAR(MAX),
       EMAIL NVARCHAR(MAX),
       ORG_DOMAIN NVARCHAR(MAX),
       DATAINSERTED DATETIME DEFAULT(GETDATE())
   );
   ```

## Stored Procedure
A stored procedure `SP_PC_REFERRALS` is created to:
- Parse JSON input.
- Insert parsed data into a temporary table.
- Perform updates and merges with the main table.
- Enrich data by joining with external AdventureWorks tables.
- Handle errors with transaction management.

### Stored Procedure Implementation
```sql
CREATE PROCEDURE [dbo].[SP_PC_REFERRALS] (@JSON NVARCHAR(MAX))
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Temporary Table Creation
        DROP TABLE IF EXISTS #T_PC_REFERRALS;
        CREATE TABLE #T_PC_REFERRALS (
            ID NVARCHAR(MAX),
            ENGAGEMENTID NVARCHAR(MAX),
            CREATEDDATETIME NVARCHAR(MAX),
            UPDATEDDATETIME NVARCHAR(MAX),
            EXPIRATIONDATETIME NVARCHAR(MAX),
            STATUS NVARCHAR(MAX),
            SUBSTATUS NVARCHAR(MAX),
            STATUSREASON NVARCHAR(MAX),
            MPNID NVARCHAR(MAX),
            ACCEPTEDDATETIME NVARCHAR(MAX),
            ORGANIZATION_NAME NVARCHAR(MAX),
            ADDRESSLINE1 NVARCHAR(MAX),
            ADDRESSLINE2 NVARCHAR(MAX),
            CITY NVARCHAR(MAX),
            STATE NVARCHAR(MAX),
            COUNTRY NVARCHAR(MAX),
            POSTALCODE NVARCHAR(MAX),
            DEALVALUE NVARCHAR(MAX),
            CURRENCY NVARCHAR(MAX),
            FIRSTNAME NVARCHAR(MAX),
            LASTNAME NVARCHAR(MAX),
            MOBILENUMBER NVARCHAR(MAX),
            EMAIL NVARCHAR(MAX)
        );

        -- Insert JSON Data into Temporary Table
        INSERT INTO #T_PC_REFERRALS (ID, ENGAGEMENTID, CREATEDDATETIME, UPDATEDDATETIME, ...)
        SELECT ID, ENGAGEMENTID, CREATEDDATETIME, UPDATEDDATETIME, ...
        FROM OPENJSON (@JSON)
        WITH (
            ID NVARCHAR(MAX) '$.id',
            ENGAGEMENTID NVARCHAR(MAX) '$.engagementId',
            CREATEDDATETIME NVARCHAR(MAX) '$.createdDateTime',
            ...
        );

        -- Data Transformation and Enrichment
        UPDATE #T_PC_REFERRALS SET EXPIRATIONDATETIME = ...;

        -- Merge into Main Table
        MERGE T_PC_REFERRALS AS TARGET
        USING #T_PC_REFERRALS AS SOURCE
        ON TARGET.ID = SOURCE.ID
        WHEN MATCHED THEN UPDATE SET ...
        WHEN NOT MATCHED THEN INSERT (...);

        -- Derive Domain Name
        UPDATE T_PC_REFERRALS SET ORG_DOMAIN = ...;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
    SET NOCOUNT OFF;
END;
```

## Usage
1. **Execute Stored Procedure**:
   ```sql
   DECLARE @JSON NVARCHAR(MAX) = '{...JSON DATA...}';
   EXEC SP_PC_REFERRALS @JSON;
   ```
2. **View Transformed Data**:
   ```sql
   SELECT * FROM T_PC_REFERRALS;
   ```

## Key Highlights
- Leverages SQL Server’s `OPENJSON` for JSON parsing.
- Enriches data by integrating with external AdventureWorks tables.
- Uses `MERGE` for efficient data synchronization.
- Handles errors gracefully with `TRY...CATCH` blocks.

## Future Enhancements
- Add logging to track JSON processing.
- Extend support for nested JSON structures.
- Automate the entire workflow using SQL Server Agent.

## Conclusion
This project bridges the gap between unstructured JSON data and relational databases, providing a robust framework for data transformation and enrichment in SQL Server.

