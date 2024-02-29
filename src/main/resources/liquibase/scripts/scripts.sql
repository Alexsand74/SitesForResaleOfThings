-- liquibase formatted sql

-- changeset Valeriy Kryatov:1
CREATE TABLE users
(
    id         INTEGER generated by default as identity PRIMARY KEY,
    username   VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name  VARCHAR NOT NULL,
    email      VARCHAR NOT NULL,
    password   VARCHAR NOT NULL,
    phone      VARCHAR NOT NULL,
    user_role  VARCHAR NOT NULL,
    image_user VARCHAR
);

CREATE TABLE ads
(
    id_pk_ad       INTEGER generated by default as identity PRIMARY KEY,
    author_id      INTEGER REFERENCES users (id),
    image_ad       VARCHAR,
    price_ad       INTEGER NOT NULL,
    title_ad       VARCHAR NOT NULL,
    description_ad VARCHAR NOT NULL
);

CREATE TABLE comments
(
    id_pk_comment INTEGER generated by default as identity PRIMARY KEY,
    author_id     INTEGER REFERENCES users (id),
    text_comment  VARCHAR NOT NULL,
    ad_id_pk      INTEGER REFERENCES ads (id_pk_ad),
    created_at    TIMESTAMP
);