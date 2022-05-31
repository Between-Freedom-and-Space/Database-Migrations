CREATE TABLE IF NOT EXISTS post_settings (
    id BIGSERIAL PRIMARY KEY,
    target_post_id BIGINT NOT NULL REFERENCES posts(id),
    is_visible_for_unauthorized_users BOOLEAN NOT NULL DEFAULT TRUE,
    created_date DATE NOT NULL,
    updated_date DATE NOT NULL
)