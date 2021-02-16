-- Revert boardgame:createDb from pg

BEGIN;

DROP TABLE boardgame;

DROP TABLE author;

DROP TABLE tag;

DROP DOMAIN posint;

COMMIT;
