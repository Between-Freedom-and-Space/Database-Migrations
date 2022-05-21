val databaseUrl = properties["databaseUrl"] as String
val databaseUser = properties["databaseUsername"] as String
val databasePassword = properties["databasePassword"] as String

plugins {
    id("org.liquibase.gradle") version "2.0.4"
}

dependencies {
    liquibaseRuntime("org.liquibase:liquibase-core:4.10.0")
    liquibaseRuntime("org.liquibase:liquibase-groovy-dsl:3.0.2")
    liquibaseRuntime("org.liquibase:liquibase-gradle-plugin:2.1.1")
    liquibaseRuntime("org.postgresql:postgresql:42.3.4")
}

repositories {
    mavenCentral()
}

apply(plugin = "org.liquibase.gradle")

liquibase {
    activities.register("main") {
        this.arguments = mapOf(
            "logLevel" to "info",
            "changeLogFile" to "migrations/changeLog.xml",
            "url" to databaseUrl,
            "username" to databaseUser,
            "password" to databasePassword,
            "liquibaseSchemaName" to "liquibase"
        )
    }
}

tasks.register("migrate") {
    dependsOn("update")
}