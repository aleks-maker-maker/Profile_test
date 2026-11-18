BEGIN;

CREATE TABLE lab_topics (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name text NOT NULL UNIQUE
);

INSERT INTO lab_topics (name)
VALUES ('Dockerfile'), ('PostgreSQL'), ('Adminer');

COMMIT;
