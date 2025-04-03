CREATE TYPE status AS ENUM (
  'open',
  'closed'
);
CREATE TABLE authors (
  id   BIGSERIAL PRIMARY KEY,
  name text      NOT NULL,
  bio  text,
  status status NOT NULL
);
