plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}
def dotenv = new Properties()
def envFile = rootProject.file(".env")

if (envFile.exists()) {
    envFile.withInputStream { dotenv.load(it) }
}
android {
    namespace = "com.donuldmduck.tech.music_beat"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.donuldmduck.tech.music_beat"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        buildConfigField "String", "SPOTIFY_CLIENT_ID", "\"${dotenv['SPOTIFY_CLIENT_ID']}\""
        buildConfigField "String", "SPOTIFY_REDIRECT_URI", "\"${dotenv['SPOTIFY_REDIRECT_URI']}\""
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
    dependencies {
        implementation("com.spotify.android:auth:1.2.5")

    }

}

flutter {
    source = "../.."
}
