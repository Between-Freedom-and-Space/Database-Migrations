CREATE TABLE IF NOT EXISTS post_reactions (
    id BIGSERIAL PRIMARY KEY,
    reaction_type REACTION_TYPE NOT NULL,
    is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
    post_id BIGINT NOT NULL REFERENCES posts(id),
    user_id BIGINT NOT NULL REFERENCES user_profiles(id),
    created_date DATE NOT NULL,
    updated_date DATE NOT NULL
);