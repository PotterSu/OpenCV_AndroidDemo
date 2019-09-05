#! /bin/bash
rm -rf obj/*
rm -rf libs/*
ndk-build NDK_PROJECT_PATH=./ NDK_APPLICATION_MK:=Application.mk APP_BUILD_SCRIPT:=Android.mk
