plugins {
    kotlin("jvm") version "2.1.0"
}

group = "com.trikset"
version = "9.0-patch"

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