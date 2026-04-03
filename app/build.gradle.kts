plugins {
    id("com.android.application")
}

android {
    namespace = "com.CatShockEntertainment.FreePopularLiveWallpaper"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.CatShockEntertainment.FreePopularLiveWallpaper"
        minSdk = 21
        targetSdk = 35
        versionCode = 136
        versionName = "1.3.6-modern"
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
        debug {
            isMinifyEnabled = false
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    sourceSets {
        getByName("main") {
            java.srcDirs("src/main/java")
            res.srcDirs("src/main/res")
            assets.srcDirs("src/main/assets")
            jniLibs.srcDirs("src/main/jniLibs")
            manifest.srcFile("src/main/AndroidManifest.xml")
        }
    }

    packaging {
        jniLibs {
            useLegacyPackaging = false
        }
    }
}

dependencies {
    implementation("androidx.core:core:1.13.1")
}
