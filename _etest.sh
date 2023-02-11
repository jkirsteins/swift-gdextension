#!/bin/bash
set -e

XCTEST_REQS=(
  "XCTest.framework"
  "libXCTestSwiftSupport.dylib"
  "XCTestCore.framework"
  "XCUnit.framework"
  "XCUIAutomation.framework"
)


echo "==> Building"
swift build --product embeddedtest
TARGET="GodotTest/"
echo "    copying"
cp "$(find .build -name libembeddedtest.dylib)" GodotTest/

echo "==> Copying dependencies"
echo "    target: $TARGET"
for i in "${XCTEST_REQS[@]}"
do
  if [ ! -e "$TARGET/$i" ]; then
    DEPPATH="$(find /Applications/Xcode-14.1.0.app/Contents/Developer/Platforms/MacOSX.platform -name $i)"
    echo "    copying $i"
    cp -r "$DEPPATH" "$TARGET"
  else
    echo "    skipping $i"
  fi
done

echo "==> Running test"
(cd GodotTest && ./run.sh)
