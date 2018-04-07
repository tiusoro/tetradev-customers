-- Verify customer:customer on pg

BEGIN;

SELECT id, name, address, email, phone FROM customer WHERE FALSE;

ROLLBACK;
