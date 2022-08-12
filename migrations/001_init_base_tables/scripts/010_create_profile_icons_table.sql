CREATE TABLE IF NOT EXISTS profile_icons (
    id BIGSERIAL PRIMARY KEY,
    icon_base64 TEXT NOT NULL,
    profile_id BIGINT NOT NULL REFERENCES user_profiles(id),
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP NOT NULL
);

ALTER TABLE user_profiles ADD COLUMN profile_icon_id BIGINT REFERENCES profile_icons(id);