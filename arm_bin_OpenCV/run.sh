#!/bin/bash

adb root
adb remount
adb push ./libs/armeabi-v7a/OpenCVTest /system/bin/

adb shell "LD_LIBRARY_PATH=/vendor/lib/:$LD_LIBRARY_PATH /system/bin/OpenCVTest"
