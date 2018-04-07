-- Deploy customer:appschema to pg

BEGIN;

CREATE SCHEMA customers;
CREATE DATABASE nodejs;

COMMIT;
