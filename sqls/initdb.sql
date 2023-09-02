-- Revoking All access
REVOKE ALL PRIVILEGES ON DATABASE onlineexam FROM suman;
REVOKE ALL PRIVILEGES ON SCHEMA onlineexam FROM suman;
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM suman;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public FROM suman;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public FROM suman;

-- Dropping role,user,database,schema

DROP OWNED BY suman;
DROP USER IF EXISTS suman;
drop role IF EXISTS onlineadmin;
drop user IF EXISTS suman;
drop database IF EXISTS onlineexam;
drop schema IF EXISTS examschema;

-- create role & user
create role onlineadmin;
create user suman in role onlineadmin;
alter user suman password 'suman@123'

-- create DB & Schema
create database onlineexam;
create schema examschema;

-- 1. Grant CONNECT to the database:
-- GRANT CONNECT ON DATABASE database_name TO username;

GRANT CONNECT ON DATABASE onlineexam TO suman;

-- 2. Grant USAGE on schema:
-- GRANT USAGE ON SCHEMA schema_name TO username;
GRANT USAGE ON SCHEMA examschema TO suman;

-- 3. Grant on all tables for DML statements: SELECT, INSERT, UPDATE, DELETE:
-- GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA schema_name TO username;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA examschema TO suman;
-- 4. Grant all privileges on all tables in the schema:
-- GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA schema_name TO username;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA examschema TO suman;

-- 5. Grant all privileges on all sequences in the schema:
-- GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA schema_name TO username;

GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA examschema TO suman;

-- 6. Grant all privileges on the database:
-- GRANT ALL PRIVILEGES ON DATABASE database_name TO username;

GRANT ALL PRIVILEGES ON DATABASE onlineexam TO suman;

-- 7. Grant permission to create database:
-- ALTER USER username CREATEDB;
ALTER USER suman CREATEDB;


