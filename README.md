# Welcome to the Bingeflix Data Team

### Coding Conventions
#### General
- Use UPPER case for all keywords
- Use trailing commas in SELECT statements
- Use Snowflake dialect
- Use consistent style in GROUP BY and ORDER BY (either names or numbers, not both)


### Testing Conventions
#### Sources
- The primary key source column must have not_null and unique generic tests.
- All boolean columns must have an accepted_values schema test. The accepted values are true and false.
- Columns that contain category values must have an accepted_values schema test.
- Columns that should never be null must have a not_null schema test.
- Columns that should be unique must have a unique schema test.

#### Models
- The primary key column must have not_null and unique schema tests.
- All boolean columns must have an accepted_values schema test. The accepted values are true and false.
- Columns that contain category values must have an accepted_values schema test.
- Columns that should never be null must have a not_null schema test.
- Columns that should be unique must have a unique schema test.
- Where possible, use schema tests from the dbt_utils or dbt_expectations packages to perform extra verification.


### Project 1

### Changes to dbt Repo

1. **`fct_events.yml` - Added**
   - **Purpose**: Documents the `fct_events` table, central to the project.
   - **Details**: Includes table descriptions, column definitions, and tests to ensure proper documentation and data governance.

2. **`is_freshness` Check - Added to All Tables**
   - **Purpose**: Tracks ETL times to ensure data freshness.
   - **Details**: Configures freshness thresholds to monitor data recency and alert if data is outdated.

3. **`ads_platform` Table - Added to `source_ads_platform.yml`**
   - **Purpose**: Documents `ads_platform` as a necessary source for ad-related models.
   - **Details**: Ensures clarity in data lineage and usage in downstream models.

4. **Exception for Fanout - Allowed 3 Child Models**
   - **Purpose**: Acknowledged that 3 child nodes do not cause issues.
   - **Details**: Current model complexity allows for this fanout without performance concerns.



### Project 2
