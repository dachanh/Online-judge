CREATE TABLE "User" (
  "ID" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "first_name" VARCHAR(100) NOT NULL,
  "last_name" VARCHAR(100) NOT NULL,
  "email" VARCHAR(50) UNIQUE NOT NULL,
  "username"  VARCHAR(50) UNIQUE NOT NULL,
  "birthday" timestamptz NOT NULL,
  "height" FLOAT8 NOT NULL,
  "status"  VARCHAR(50) DEFAULT "activate",
  "gender" bool DEFAULT true,
  "password" VARCHAR(255) NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now())
);
