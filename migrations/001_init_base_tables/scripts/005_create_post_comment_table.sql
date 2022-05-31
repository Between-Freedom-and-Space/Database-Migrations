CREATE TABLE IF NOT EXISTS post_comments (
    id BIGSERIAL PRIMARY KEY,
    post_id BIGINT NOT NULL REFERENCES posts(id),
    text TEXT NOT NULL,
    is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
    author_user_id BIGINT NOT NULL REFERENCES user_profiles(id),
    created_date DATE NOT NULL,
    updated_date DATE NOT NULL
);