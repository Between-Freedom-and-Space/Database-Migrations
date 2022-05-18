CREATE TABLE IF NOT EXISTS comment_reactions (
    id BIGINT PRIMARY KEY,
    reaction_type reaction_type_enum NOT NULL,
    is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
    comment_id BIGINT NOT NULL REFERENCES post_comments(id),
    user_id BIGINT NOT NULL REFERENCES user_profiles(id),
    created_date DATE NOT NULL,
    updated_date DATE NOT NULL
);