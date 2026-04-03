# PopularLWPRenewed

Modernized Android rebuild of an old live wallpaper app originally shipped around Android 2.3/API 9.

This repository contains:
- A modern Android Studio/Gradle project (`app/`) that builds and runs on current Android versions.
- Decompiled/reference outputs (`apktool_out/`, `jadx_out/`) used during restoration.
- Runtime/debug helper scripts in `scripts/`.

---

## Project status (important)

- **Build target**: compile/target SDK 35, min SDK 21
- **Renderer behavior by ABI**:
  - **arm64-v8a / x86_64**: uses a Java/OpenGL ES shader fallback renderer (`FallbackRenderer`) for modern compatibility
  - **Native library ABIs currently packaged**: `armeabi-v7a`, `x86`, and legacy `mips` (native renderer path)
- The wallpaper is currently functional and settings-driven, with a restored modern fallback path.

### Runtime IDs used in commands

- **applicationId**: `com.CatShockEntertainment.FreePopularLiveWallpaper`
- **Wallpaper service component**: `com.CatShockEntertainment.FreePopularLiveWallpaper/.FreePopularLiveWallpaper`
- **Settings activity component**: `com.CatShockEntertainment.FreePopularLiveWallpaper/com.CatShockEntertainment.PopularLiveWallpaper.PopularLiveWallpaperSettings`

---

## Repository layout

- `app/` – main Android application module
  - `src/main/java/com/CatShockEntertainment/PopularLiveWallpaper/`
    - `PopularRenderer.java` (JNI/native renderer bridge)
    - `FallbackRenderer.java` (modern shader-based fallback)
    - `PopularRendererControls.java` (shared renderer control interface)
  - `src/main/assets/media/` – legacy visual assets (textures/shaders/patterns)
  - `src/main/jniLibs/` – packaged native libraries
  - `src/main/res/xml/settings*.xml` – wallpaper settings definitions
- `scripts/wallpaper_debug_loop.sh` – build/install/open picker/logcat loop
- `scripts/build_stub_native.sh` – builds arm64/x86_64 stub native libs from `app/src/main/cpp/popular_native_stub.c`
- `apktool_out/` – apktool decode output (reference)
- `jadx_out/` – jadx decompilation output (reference)

---

## Prerequisites

- **Android Studio** (latest stable recommended)
- **Android SDK 35**
- **Java 17+** (project compiles with Java 17 settings; Java 21 is recommended for local CLI workflow)
- **ADB** available in PATH

Optional:
- **Android NDK** (only needed if you want to regenerate stub 64-bit native libs)

---

## Setup

1. Clone and open the project in Android Studio:

   ```bash
   git clone https://github.com/Zodomo/PopularLWPRenewed.git
   cd PopularLWPRenewed
   ```

2. Let Android Studio sync Gradle and install missing SDK components.

3. If building from terminal, prefer Java 21 locally:

   ```bash
   export JAVA_HOME=$(/usr/libexec/java_home -v 21)
   ```

---

## Build / export APKs

### Debug APK

From project root:

```bash
./gradlew :app:assembleDebug
```

Generated APK path:

```text
app/build/outputs/apk/debug/app-debug.apk
```

Install to a connected device/emulator:

```bash
adb install -r app/build/outputs/apk/debug/app-debug.apk
```

### Release APK (unsigned)

```bash
./gradlew :app:assembleRelease
```

Generated release output:

```text
app/build/outputs/apk/release/app-release-unsigned.apk
```

If you need a distributable signed release, configure a signing config first.

---

## Test with Android Studio emulator

### 1) Start emulator

In Android Studio:
- Open **Device Manager**
- Start an emulator (modern arm64 image recommended)

### 2) Install and open wallpaper chooser

After installing APK (via Run button or `adb install`), open chooser:

```bash
adb shell am start -a android.service.wallpaper.LIVE_WALLPAPER_CHOOSER
```

Or jump directly to this wallpaper preview:

```bash
adb shell am start -a android.service.wallpaper.CHANGE_LIVE_WALLPAPER \
  --ecn android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT \
  com.CatShockEntertainment.FreePopularLiveWallpaper/.FreePopularLiveWallpaper
```

Set the wallpaper from preview UI.

### 3) Open wallpaper settings screen

```bash
adb shell am start -n \
  com.CatShockEntertainment.FreePopularLiveWallpaper/com.CatShockEntertainment.PopularLiveWallpaper.PopularLiveWallpaperSettings
```

### 4) Live debug/log monitoring

Use the helper script (default device: `emulator-5554`):

```bash
./scripts/wallpaper_debug_loop.sh
```

Or pass a specific device id:

```bash
./scripts/wallpaper_debug_loop.sh emulator-5554
```

Useful manual log filter:

```bash
adb logcat -s PopularLWP:* AndroidRuntime:E WallpaperService:D WallpaperManagerService:D
```

---

## Quality checks

```bash
./gradlew :app:assembleDebug
./gradlew :app:lintDebug
./gradlew :app:testDebugUnitTest
```

---

## Native stub generation (optional)

If you need to regenerate arm64/x86_64 stub libs:

```bash
./scripts/build_stub_native.sh
```

If your NDK is in a custom path:

```bash
NDK_ROOT=/path/to/android/ndk ./scripts/build_stub_native.sh
```

Expected outputs:

```text
app/src/main/jniLibs/arm64-v8a/libpopular_native.so
app/src/main/jniLibs/x86_64/libpopular_native.so
```

Quick verification:

```bash
ls app/src/main/jniLibs/arm64-v8a/libpopular_native.so app/src/main/jniLibs/x86_64/libpopular_native.so
```

---

## Troubleshooting

### `UnsatisfiedLinkError` or blank behavior on modern ABI
- Confirm app installed from latest debug build.
- Confirm fallback path logs are present:

  ```bash
  adb logcat -s PopularLWP:* AndroidRuntime:E
  ```

### Build issues from terminal
- Ensure Java is set (prefer Java 21 for this repo’s CLI workflow).
- Re-sync in Android Studio if Gradle dependencies changed.

### Device not found
```bash
adb devices
```

---

## Notes for contributors

- `apktool_out/` and `jadx_out/` are intentionally kept as restoration references.
- `.idea/`, `local.properties`, `.gradle/`, and build outputs are ignored via `.gitignore`.
- If you change renderer control semantics, keep `PopularRendererControls` mappings in sync with `PopularLiveWallpaper/b.java`.
