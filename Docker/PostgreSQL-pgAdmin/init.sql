BEGIN;

CREATE TABLE public.lab_tasks (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title text NOT NULL UNIQUE,
    status text NOT NULL CHECK (status IN ('done', 'pending'))
);

INSERT INTO public.lab_tasks (title, status) VALUES
    ('Build PostgreSQL image', 'done'),
    ('Connect with pgAdmin', 'done'),
    ('Run SQL query', 'done'),
    ('Prepare screenshots', 'pending');

COMMIT;
