CREATE TABLE IF NOT EXISTS post_to_tag (
    id BIGSERIAL PRIMARY KEY,
    post_id BIGINT NOT NULL REFERENCES posts(id),
    tag_id BIGINT NOT NULL REFERENCES post_tags(id),
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP NOT NULL
)