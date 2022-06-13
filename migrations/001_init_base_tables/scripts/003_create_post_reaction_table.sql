CREATE TABLE IF NOT EXISTS post_reactions (
    id BIGSERIAL PRIMARY KEY,
    reaction_type INT NOT NULL,
    is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
    post_id BIGINT NOT NULL REFERENCES posts(id),
    user_id BIGINT NOT NULL REFERENCES user_profiles(id),
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP NOT NULL
);