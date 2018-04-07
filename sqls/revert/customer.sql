-- Revert customer:customer from pg

BEGIN;

DROP TABLE customers.customer;

COMMIT;
