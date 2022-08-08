import org.jetbrains.compose.compose
import org.jetbrains.compose.desktop.application.dsl.TargetFormat
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile
//
//val antlrKotlinVersion = "d4e3a446a8"
//
//buildscript {
//    dependencies {
//        // add the plugin to the classpath
//        val antlrKotlinVersion = "d4e3a446a8"
//        classpath("com.strumenta.antlr-kotlin:antlr-kotlin-gradle-plugin:$antlrKotlinVersion")
//    }
//}

plugins {
    kotlin("jvm") version "1.6.10"
    antlr
    id("org.jetbrains.compose")
}

group = "io.github.kyay10"
version = "1.0-SNAPSHOT"
/*

tasks.register<com.strumenta.antlrkotlin.gradleplugin.AntlrKotlinTask>("generateKotlinGrammarSource") {
    // the classpath used to run antlr code generation
    antlrClasspath = configurations.detachedConfiguration(
        project.dependencies.create("com.strumenta.antlr-kotlin:antlr-kotlin-target:$antlrKotlinVersion")
    )
    maxHeapSize = "64m"
    packageName = "io.github.kyay10.excellence"
    arguments = listOf("-no-visitor", "-no-listener")
    source = project.objects
        .sourceDirectorySet("antlr", "antlr")
        .srcDir("src/jvmMain/resources/antlr").apply {
            include("*.g4")
        }
    outputDirectory = File("build/generated-src/antlr/jvmMain")
}
*/

repositories {
    google()
    mavenCentral()
    maven("https://maven.pkg.jetbrains.space/public/p/compose/dev")
    maven("https://jitpack.io")
}
/*
kotlin {
    jvm {
        compilations.all {
            kotlinOptions.jvmTarget = "11"
        }
        withJava()
    }
    sourceSets {
        val jvmMain by getting {
            kotlin.srcDir("build/generated-src/antlr/jvmMain")
        }
        val jvmTest by getting
    }
}*/

dependencies {
    antlr("org.antlr:antlr4:4.10.1") // use ANTLR version 4
    implementation(compose.desktop.currentOs)
    //implementation("com.strumenta.antlr-kotlin:antlr-kotlin-runtime-jvm:$antlrKotlinVersion")
}

/*
tasks.getByName("compileKotlinJvm").dependsOn("generateKotlinGrammarSource")*/

compose.desktop {
    application {
        mainClass = "MainKt"
        nativeDistributions {
            targetFormats(TargetFormat.Dmg, TargetFormat.Msi, TargetFormat.Deb)
            packageName = "excellence"
            packageVersion = "1.0.0"
        }
    }
}
tasks.generateGrammarSource {
    maxHeapSize = "4096m"
}