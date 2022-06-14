CREATE TABLE IF NOT EXISTS accessed_users (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL REFERENCES user_profiles(id),
    access_rule_id BIGINT NOT NULL REFERENCES access_settings(ID),
    rule_given_by_user_id BIGINT REFERENCES user_profiles(id),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP NOT NULL
);