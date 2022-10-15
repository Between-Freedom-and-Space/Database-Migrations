CREATE TABLE IF NOT EXISTS user_verification_codes(
    id BIGSERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    verification_code VARCHAR(255) NOT NULL,
    security_variable VARCHAR(512) NOT NULL,
    is_verified BOOLEAN NOT NULL DEFAULT FALSE
);

ALTER TABLE user_verification_codes ADD CONSTRAINT unique__user_verification_codes UNIQUE (email, verification_code, security_variable);