-- Deploy BRONZE layer
    execute immediate from @RL_SQL_DEMO.GOLD.RL_SQL_REPO/branches/main/sql-pipelines/BRONZE/create_customers.sql;
    execute immediate from @RL_SQL_DEMO.GOLD.RL_SQL_REPO/branches/main/sql-pipelines/BRONZE/create_orders.sql;
    execute immediate from @RL_SQL_DEMO.GOLD.RL_SQL_REPO/branches/main/sql-pipelines/BRONZE/create_part.sql;
    
    -- Deploy SILVER layer
    execute immediate from @RL_SQL_DEMO.GOLD.RL_SQL_REPO/branches/main/sql-pipelines/SILVER/create_customers_silver.sql;
    execute immediate from @RL_SQL_DEMO.GOLD.RL_SQL_REPO/branches/main/sql-pipelines/SILVER/create_orders_silver.sql;
    execute immediate from @RL_SQL_DEMO.GOLD.RL_SQL_REPO/branches/main/sql-pipelines/SILVER/create_part_silver.sql;



-- execute immediate from @RL_SQL_DEMO.GOLD.RL_SQL_REPO/branches/main/sql-pipelines/GOLD/deploy.sql;RL_SQL_DEMORL_SQL_DEMO.SILVER.PART_SILVER


