-- Revert customer:appschema from pg

BEGIN;

DROP SCHEMA customers;

COMMIT;
