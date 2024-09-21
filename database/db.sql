CREATE TABLE IF NOT EXISTS "users"(
  "id" integer primary key autoincrement not null,
  "name" varchar not null,
  "lastname" varchar not null,
  "email" varchar,
  "phone" varchar,
  "password" varchar not null,
  "remember_token" varchar
);

CREATE TABLE IF NOT EXISTS "vehicles"(
  "id" integer primary key autoincrement not null,
  "model" varchar not null,
  "brand" varchar not null,
  "condition" varchar not null
);

CREATE TABLE IF NOT EXISTS "payments"(
  "id" integer primary key autoincrement not null,
  "amount" numeric not null,
  "method" text not null
);

CREATE TABLE IF NOT EXISTS "travels"(
  "id" integer primary key autoincrement not null,
  "payment_id" integer not null,
  "client_id" integer not null,
  "driver_id" integer not null,
  "amount" numeric not null,
  "start" varchar not null,
  "end" varchar not null
);
