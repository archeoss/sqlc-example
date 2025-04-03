-- Create enum type "status"
CREATE TYPE "public"."status" AS ENUM ('open', 'closed');
-- Modify "authors" table
ALTER TABLE "public"."authors" ADD COLUMN "status" "public"."status" NOT NULL;
