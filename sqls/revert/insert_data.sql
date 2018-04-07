-- Revert customer:insert_data from pg

BEGIN;

TRUNCATE TABLE customer;

COMMIT;
