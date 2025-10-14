#!/bin/sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PROJECT_ROOT="$SCRIPT_DIR/.."
echo "Running from: $PROJECT_ROOT"

echo "Building Flutter for web..."
cd "$PROJECT_ROOT/flutter_app"
(flutter build web && echo "Flutter build complete.") || { echo "Flutter build failed!"; exit 1; }

echo "Copying build artifacts to public directory..."
mkdir -p "$PROJECT_ROOT/public/assets"
cp -r "$PROJECT_ROOT/flutter_app/build/web/assets" "$PROJECT_ROOT/public/assets"
cp "$PROJECT_ROOT/flutter_app/build/web/main.dart.js" "$PROJECT_ROOT/public/main.dart.js"
cp "$PROJECT_ROOT/flutter_app/build/web/flutter_bootstrap.js" "$PROJECT_ROOT/public/flutter_bootstrap.js"

echo "Build process completed successfully."