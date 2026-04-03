#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$PROJECT_DIR"

DEVICE="${1:-emulator-5554}"
PACKAGE="com.CatShockEntertainment.FreePopularLiveWallpaper"

if [[ "$(adb -s "$DEVICE" get-state 2>/dev/null || true)" != "device" ]]; then
  echo "Device '${DEVICE}' is not connected."
  echo "Run: adb devices"
  exit 1
fi

echo "Using device: ${DEVICE}"
echo "ABI: $(adb -s "$DEVICE" shell getprop ro.product.cpu.abi)"
echo "Zygote: $(adb -s "$DEVICE" shell getprop ro.zygote)"

if /usr/libexec/java_home -v 21 >/dev/null 2>&1; then
  export JAVA_HOME
  JAVA_HOME=$(/usr/libexec/java_home -v 21)
fi

./gradlew :app:assembleDebug
adb -s "$DEVICE" install -r "app/build/outputs/apk/debug/app-debug.apk"

adb -s "$DEVICE" logcat -c
adb -s "$DEVICE" shell am force-stop "$PACKAGE"
adb -s "$DEVICE" shell am start -a android.service.wallpaper.LIVE_WALLPAPER_CHOOSER

echo
echo "Live wallpaper picker opened. Reproduce the issue, then watch logs below:"
echo

adb -s "$DEVICE" logcat "AndroidRuntime:E" "WallpaperManagerService:D" "WallpaperService:D" "ActivityManager:I" "*:S"
