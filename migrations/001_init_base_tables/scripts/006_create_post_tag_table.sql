CREATE TABLE IF NOT EXISTS post_tags (
    id BIGINT PRIMARY KEY,
    author_user_id BIGINT REFERENCES user_profiles(id),
    tag_alias VARCHAR(255) NOT NULL UNIQUE,
    tag_description TEXT,
    is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
    created_date DATE NOT NULL,
    updated_date DATE NOT NULL
)