CREATE OR REPLACE PROCEDURE insert_main_admin() AS $func$
DECLARE
    main_admin_user_id BIGINT;
    super_admin_role_id BIGINT;
BEGIN
    SELECT id FROM user_profiles WHERE nick_name = 'Ferum-bot' LIMIT 1 INTO main_admin_user_id;
    SELECT id FROM user_role WHERE role_alias = 'SUPER_ADMIN' LIMIT 1 INTO super_admin_role_id;

    IF main_admin_user_id IS NULL THEN
        RAISE NOTICE 'Ferum-bot is not registered is system';
        RETURN;
    END IF;

    IF super_admin_role_id IS NULL THEN
        RAISE NOTICE 'SUPER_ADMIN role does not exists in database';
        RETURN;
    END IF;

    INSERT INTO user_to_user_roles (role_id, user_id, created_date, updated_date)
    VALUES (super_admin_role_id, main_admin_user_id, now(), now());
END;
$func$ LANGUAGE plpgsql;

CALL insert_main_admin();