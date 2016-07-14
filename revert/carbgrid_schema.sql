-- Revert calvad_areas_sql:carbgrid_schema from pg

BEGIN;

DROP SCHEMA carbgrid;

COMMIT;
