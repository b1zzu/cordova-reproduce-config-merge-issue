#!/usr/bin/env bash

set -e

TYPE=$1

if [ -z "$TYPE" ]; then
    echo "usage: $0 [working|broken]"
    exit 1
fi

set -x

if [ -e "$TYPE-app" ]; then
    echo "error: $TYPE-app already exists, delete it manually before proceed"
    exit 1
fi

cordova create "$TYPE-app"

cp "$TYPE-config.xml" "$TYPE-app/config.xml"
cp google-services.json "$TYPE-app/"

cd "$TYPE-app/"

cordova plugin add @aerogear/cordova-plugin-aerogear-push@dev

cordova platform add android

cordova build android

cat platforms/android/app/src/main/AndroidManifest.xml
