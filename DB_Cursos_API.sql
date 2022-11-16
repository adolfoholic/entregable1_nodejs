CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int8 NOT NULL,
  "country" char(3) NOT NULL,
  "gender" varchar,
  "id_role" int
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar UNIQUE NOT NULL,
  "description" varchar NOT NULL,
  "level" varchar NOT NULL,
  "id_user" uuid,
  "id_category" int
);

CREATE TABLE "courses_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar UNIQUE NOT NULL,
  "url" varchar UNIQUE NOT NULL,
  "id_course" uuid
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" serial PRIMARY KEY,
  "name" varchar UNIQUE NOT NULL
);

CREATE TABLE "courses_users" (
  "id" uuid PRIMARY KEY,
  "id_course" uuid,
  "id_user" uuid
);

ALTER TABLE "users" ADD FOREIGN KEY ("id_role") REFERENCES "roles" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_category") REFERENCES "categories" ("id");

ALTER TABLE "courses_users" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");

ALTER TABLE "courses_users" ADD FOREIGN KEY ("id_course") REFERENCES "courses" ("id");

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("id_course") REFERENCES "courses" ("id");
