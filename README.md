# SQL Pipeline Demo

A Snowflake SQL pipeline demonstrating Bronze/Silver/Gold medallion architecture using Git integration.

## Architecture

```
BRONZE (Views)     →    SILVER (Tables)      →    GOLD (Analytics)
├── CUSTOMER_BRONZE     ├── CUSTOMER_SILVER       ├── deploy.sql
├── ORDERS_BRONZE       ├── ORDERS_SILVER
└── PART_BRONZE         └── PART_SILVER
```

- **Bronze**: Raw views over `SNOWFLAKE_SAMPLE_DATA.TPCH_SF1`
- **Silver**: Cleaned tables with MERGE upsert logic
- **Gold**: Deploy script to run all Bronze/Silver objects

## Setup

1. Run `setup/setup_db.sql` to create database, schemas, and role
2. Run `setup/setup_git.sql` to configure Git integration

## Deploy

From Snowflake, execute the pipeline via Git repository:

```sql
ALTER GIT REPOSITORY RL_SQL_REPO FETCH;
EXECUTE IMMEDIATE FROM @RL_SQL_REPO/branches/main/sql-pipelines/GOLD/deploy.sql;
```

## Project Structure

```
├── setup/
│   ├── setup_db.sql      # Database & schema setup
│   └── setup_git.sql     # Git integration setup
└── sql-pipelines/
    ├── BRONZE/           # Source views
    ├── SILVER/           # Transformed tables
    └── GOLD/             # Analytics & deploy script
```

