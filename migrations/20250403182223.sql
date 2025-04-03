-- Create "authors" table
CREATE TABLE "public"."authors" (
  "id" bigserial NOT NULL,
  "name" text NOT NULL,
  "bio" text NULL,
  PRIMARY KEY ("id")
);
-- Create "authors2" table
CREATE TABLE "public"."authors2" (
  "id" bigserial NOT NULL,
  "name" text NOT NULL,
  "bio" text NULL,
  PRIMARY KEY ("id")
);
