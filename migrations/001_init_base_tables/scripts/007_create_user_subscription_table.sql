CREATE TABLE IF NOT EXISTS user_subscriptions (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL REFERENCES user_profiles(id),
    user_subscribe_on_id BIGINT NOT NULL REFERENCES user_profiles(id),
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP NOT NULL
);