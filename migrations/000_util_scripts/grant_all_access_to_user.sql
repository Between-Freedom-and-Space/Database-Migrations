GRANT CONNECT ON DATABASE example_database TO example_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA example_schema TO example_user;
GRANT USAGE ON SCHEMA example_schema TO example_user;
GRANT ALL PRIVILEGES ON DATABASE example_database TO example_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA example_schema TO example_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA example_schema TO example_user;
GRANT pg_read_all_data TO example_user;
GRANT pg_write_all_data TO example_user;