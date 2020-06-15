# FreeType 2 Android

Builds FreeType 2 into a static lib (.a) for Android.

This is a fork of this repo https://github.com/cdave1/freetype2-android with updated Android and Freetype versions.

The code in this repo is FreeType 2.10.2. There might be some source files that aren't compiled. If you get missing symbols try adding files to `Android/jni/Android.mk`.

# Install

First, install NDK with Android Studio. Tested versions are:
- Android 10.0 (android-29)
- SDK Build-Tools version 30
- NDK version 21

To build, `cd` to the `Android/jni/` directory and type `ndk-build`.

The file `Android/jni/Application.mk` contains the target and platform settings used by `ndk-build`.  The current settings are:
```
    APP_ABI := arm64-v8a
    APP_PLATFORM := android-29
```
To use the library in another ndk library, you will need to include the `Android/jni/module.mk` file in the `Android.mk` of the library you want to use FreeType with.

# License

This code is distributed under the terms of the [FreeType License](https://git.savannah.gnu.org/cgit/freetype/freetype2.git/tree/docs/FTL.TXT).  The FreeType License is also included in this distribution. If you are going to use this project, please make sure you follow the instructions in the FreeType License.
