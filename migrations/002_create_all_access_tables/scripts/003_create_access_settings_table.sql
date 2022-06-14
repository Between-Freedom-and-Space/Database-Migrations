CREATE TABLE IF NOT EXISTS access_settings (
    id BIGSERIAL PRIMARY KEY,
    path_pattern VARCHAR(255) NOT NULL UNIQUE,
    last_modified_by_user_id BIGINT REFERENCES user_profiles(id),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP NOT NULL
);