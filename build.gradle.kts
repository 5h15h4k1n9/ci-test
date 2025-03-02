plugins {
    kotlin("jvm") version "2.1.0"
}

group = "com.trikset"
version = "28.1.0-snapshot"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation(kotlin("test"))
}

tasks.test {
    useJUnitPlatform()
}
kotlin {
    jvmToolchain(17)
}