#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SRC_FILE="$PROJECT_DIR/app/src/main/cpp/popular_native_stub.c"
OUT_DIR="$PROJECT_DIR/app/src/main/jniLibs"

NDK_ROOT="${NDK_ROOT:-$HOME/Library/Android/sdk/ndk/28.2.13676358}"
TOOLCHAIN="$NDK_ROOT/toolchains/llvm/prebuilt/darwin-x86_64/bin"

if [[ ! -f "$SRC_FILE" ]]; then
  echo "Missing source file: $SRC_FILE"
  exit 1
fi

if [[ ! -x "$TOOLCHAIN/aarch64-linux-android21-clang" ]]; then
  echo "NDK toolchain not found at: $TOOLCHAIN"
  echo "Set NDK_ROOT to your installed NDK path."
  exit 1
fi

mkdir -p "$OUT_DIR/arm64-v8a" "$OUT_DIR/x86_64"

"$TOOLCHAIN/aarch64-linux-android21-clang" -shared -fPIC "$SRC_FILE" -o "$OUT_DIR/arm64-v8a/libpopular_native.so"
"$TOOLCHAIN/x86_64-linux-android21-clang" -shared -fPIC "$SRC_FILE" -o "$OUT_DIR/x86_64/libpopular_native.so"

echo "Built stub native libraries:"
echo "  $OUT_DIR/arm64-v8a/libpopular_native.so"
echo "  $OUT_DIR/x86_64/libpopular_native.so"
