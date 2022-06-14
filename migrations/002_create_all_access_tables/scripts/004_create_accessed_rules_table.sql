CREATE TABLE IF NOT EXISTS accessed_roles (
    id BIGSERIAL PRIMARY KEY,
    role_id BIGINT NOT NULL REFERENCES user_role(id),
    access_rule_id BIGINT NOT NULL REFERENCES access_settings(id),
    rule_given_by_user_id BIGINT REFERENCES user_profiles(id),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP NOT NULL
);