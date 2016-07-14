-- Revert calvad_areas_sql:grid_state4k from pg

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;
SET search_path = carbgrid, pg_catalog;

BEGIN;

DROP INDEX carbgrid.state4k_geom_gist;
ALTER TABLE ONLY carbgrid.state4k DROP CONSTRAINT state4k_pkey;
ALTER TABLE carbgrid.state4k ALTER COLUMN gid DROP DEFAULT;
DROP SEQUENCE carbgrid.state4k_gid_seq;
DROP TABLE carbgrid.state4k;

COMMIT;
