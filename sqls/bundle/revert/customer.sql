-- Revert customer:customer from pg

BEGIN;

DROP TABLE customer;

COMMIT;
