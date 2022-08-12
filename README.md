# Database-Migrations

Contains all database migrations for Between Freedom and Space service.
Migrations are easily customizable in `changeLog.xml` files.

## How to run:
* Open file [gradle.properties](./gradle.properties).
* Set all properties with your data.
* ```properties
  databaseUrl=<Url to your Postgres database>
  databaseUsername=<User name for liquibase service>
  databasePassword=<Password for user name>
  ```
* Create special schema for liquibase tables: `CREATE SCHEMA IF NOT EXISTS liquibase;`
* Run file `run.sh`
* Enjoy

## Structure:
* Folder [migrations](./migrations) contains all scripts
* Folder [000_drop_all_data](./migrations/000_util_scripts) contains util scripts to manage database.
* Other folders contains migrations scripts.

#### Created and Powered by Ferum-bot.