CREATE SCHEMA IF NOT EXISTS "ame_build";
DROP TABLE IF EXISTS "ame_build"."scheduler_queue";
CREATE TABLE "ame_build"."scheduler_queue"
(
    "id"             bigserial                   NOT NULL PRIMARY KEY,
    "time"           timestamp without time zone NOT NULL,
    "content"        bytea                       NOT NULL,
    "future_subject" varchar                     NOT NULL,
    "consumed"       bool                        NOT NULL DEFAULT FALSE
);
CREATE INDEX "ame_build"."idx_scheduled_event_time" ON "ame_build".scheduler_queue ("time");