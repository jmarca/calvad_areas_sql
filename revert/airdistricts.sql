-- Revert calvad_areas_sql:airdistricts from pg
SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

BEGIN;


DROP INDEX public.carb_airdistricts_aligned_03_the_geom_gist;
DROP INDEX public.carb_airdistricts_aligned_03_geom4326_idx;
ALTER TABLE ONLY public.carb_airdistricts_aligned_03 DROP CONSTRAINT carb_airdistricts_aligned_03_pkey;
ALTER TABLE public.carb_airdistricts_aligned_03 ALTER COLUMN gid DROP DEFAULT;
DROP SEQUENCE public.carb_airdistricts_aligned_03_gid_seq;
DROP TABLE public.carb_airdistricts_aligned_03;

COMMIT;
