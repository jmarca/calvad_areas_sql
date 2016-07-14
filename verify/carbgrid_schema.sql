-- Verify calvad_areas_sql:carbgrid_schema on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege('carbgrid','usage');

ROLLBACK;
