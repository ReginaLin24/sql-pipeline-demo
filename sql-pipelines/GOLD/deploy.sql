-- Deploy BRONZE layer
execute immediate from '../BRONZE/create_customers.sql';
execute immediate from '../BRONZE/create_orders.sql';
execute immediate from '../BRONZE/create_part.sql';

-- Deploy SILVER layer
execute immediate from '../SILVER/create_customers_silver.sql';
execute immediate from '../SILVER/create_orders_silver.sql';
execute immediate from '../SILVER/create_part_silver.sql';

-- Deploy GOLD layer
-- (add GOLD objects here when created)

-- To deploy all objects via Git repository:
-- ALTER GIT REPOSITORY RL_SQL_DEMO.DEPLOY.RL_SQL_DEMO_GIT_REPO FETCH;
-- execute immediate from @RL_SQL_DEMO.DEPLOY.RL_SQL_DEMO_GIT_REPO/branches/main/sql-pipelines/GOLD/deploy.sql;

