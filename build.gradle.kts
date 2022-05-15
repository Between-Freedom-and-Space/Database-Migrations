plugins {
    id("org.liquibase.gradle") version "2.0.4"
}

dependencies {
    liquibaseRuntime("org.liquibase:liquibase-core:4.9.1")
    liquibaseRuntime("org.liquibase:liquibase-groovy-dsl:3.0.2")
    liquibaseRuntime("org.liquibase:liquibase-gradle-plugin:2.1.1")
    liquibaseRuntime("org.postgresql:postgresql:42.3.4")
}

repositories {
    mavenCentral()
}

liquibase {

}