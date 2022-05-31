CREATE TABLE IF NOT EXISTS posts (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    text TEXT NOT NULL,
    is_visible BOOLEAN NOT NULL DEFAULT TRUE,
    is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
    is_edited BOOLEAN NOT NULL DEFAULT FALSE,
    author_user_id BIGINT NOT NULL REFERENCES user_profiles(id),
    created_date DATE NOT NULL,
    updated_date DATE NOT NULL
);