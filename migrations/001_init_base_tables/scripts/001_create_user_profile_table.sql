CREATE TABLE IF NOT EXISTS user_profiles (
    id BIGSERIAL PRIMARY KEY,
    mail TEXT DEFAULT NULL,
    phone_number TEXT DEFAULT NULL,
    password_encrypted TEXT NOT NULL,
    nick_name TEXT NOT NULL UNIQUE,
    name_alias TEXT NOT NULL,
    description TEXT DEFAULT NULL,
    location TEXT DEFAULT NULL,
    is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
    is_visible BOOLEAN NOT NULL DEFAULT TRUE,
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP NOT NULL
);