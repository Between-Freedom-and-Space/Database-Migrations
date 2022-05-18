CREATE TABLE IF NOT EXISTS user_profiles (
    id BIGINT PRIMARY KEY,
    mail TEXT DEFAULT NULL,
    phone_number TEXT DEFAULT NULL,
    password_encrypted TEXT NOT NULL,
    nick_name TEXT NOT NULL UNIQUE,
    name_alias TEXT NOT NULL,
    description TEXT DEFAULT NULL,
    location TEXT DEFAULT NULL,
    is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
    is_visible BOOLEAN NOT NULL DEFAULT TRUE,
    created_date DATE NOT NULL,
    updated_date DATE NOT NULL
);