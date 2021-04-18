CREATE TABLE "publisher" (
  "id" SERIAL PRIMARY KEY,
  "publisher_name" text NOT NULL,
  "bg_id" int NOT NULL,
  "bg_designer_id" int,
  "bg_artist_id" int
);

CREATE TABLE "board_game" (
  "id" SERIAL PRIMARY KEY,
  "publisher_id" int NOT NULL,
  "name" varchar NOT NULL,
  "year_published" text,
  "min_players" int,
  "max_players" int,
  "min_playtime" int,
  "max_playtime" int,
  "min_age" int,
  "description" text,
  "description_preview" text,
  "thumb_url" text,
  "image_url" text,
  "url" text,
  "price" float,
  "msrp" float,
  "discount" float,
  "primary_publisher" text,
  "mechanics" text,
  "catagories" text,
  "designers" text,
  "developers" text,
  "artists" text,
  "reddit_all_time_count" int,
  "reddit_week_count" int,
  "reddit_day_count" int
);

CREATE TABLE "bg_artist" (
  "id" SERIAL PRIMARY KEY,
  "artist_name" text NOT NULL,
  "bg_id" int NOT NULL
);

CREATE TABLE "bg_designer" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "designer_name" varchar,
  "publisher_id" int
);

CREATE TABLE "reg_user" (
  "id" SERIAL PRIMARY KEY,
  "first_name" text NOT NULL,
  "last_name" text NOT NULL,
  "email" varchar,
  "profile_img" varchar,
  "bg_user_games_id" int,
  "bg_user_plays_id" int,
  "notifications_id" int
);

CREATE TABLE "bg_user_games" (
  "id" SERIAL PRIMARY KEY,
  "bg_user_id" varchar NOT NULL,
  "bg_owned_id" int,
  "wanted" varchar
);

CREATE TABLE "bg_user_plays" (
  "id" SERIAL PRIMARY KEY,
  "bguser_id" varchar NOT NULL,
  "bg_id" int,
  "bg_times_played" int,
  "bg_total_time_played" int
);

CREATE TABLE "notifications" (
  "id" SERIAL PRIMARY KEY,
  "name" text NOT NULL,
  "read_status" boolean
);

ALTER TABLE "publisher" ADD FOREIGN KEY ("bg_designer_id") REFERENCES "bg_designer" ("id");

ALTER TABLE "publisher" ADD FOREIGN KEY ("bg_artist_id") REFERENCES "bg_artist" ("id");

ALTER TABLE "board_game" ADD FOREIGN KEY ("id") REFERENCES "publisher" ("bg_id");

ALTER TABLE "bg_artist" ADD FOREIGN KEY ("bg_id") REFERENCES "board_game" ("id");

ALTER TABLE "bg_designer" ADD FOREIGN KEY ("publisher_id") REFERENCES "publisher" ("bg_designer_id");

ALTER TABLE "reg_user" ADD FOREIGN KEY ("bg_user_games_id") REFERENCES "bg_user_games" ("id");

ALTER TABLE "reg_user" ADD FOREIGN KEY ("bg_user_plays_id") REFERENCES "bg_user_plays" ("id");

ALTER TABLE "bg_user_games" ADD FOREIGN KEY ("bg_owned_id") REFERENCES "board_game" ("id");

ALTER TABLE "reg_user" ADD FOREIGN KEY ("notifications_id") REFERENCES "notifications" ("id");

ALTER TABLE "bg_user_plays" ADD FOREIGN KEY ("bg_id") REFERENCES "board_game" ("id");
