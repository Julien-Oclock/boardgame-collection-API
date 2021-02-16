BEGIN;

-- Création d'un domain "posint" qui n'autorise que les valeurs positives
CREATE DOMAIN posint AS int CHECK (value > 0);

CREATE TABLE tag (
    id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    label text NOT NULL UNIQUE,
    color text NOT NULL UNIQUE  
);


CREATE table author (
    id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL
);


-- table boardgame
CREATE TABLE boardgame (
    id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL,
    min_age posint NOT NULL,
    min_players posint NOT NULL,
    max_players posint NOT NULL,
    note posint NOT NULL,
    duration interval NOT NULL,
    tag_id int REFERENCES tag(id),
    author_id int REFERENCES author(id)

);

COMMIT;
