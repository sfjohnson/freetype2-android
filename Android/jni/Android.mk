LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

FREETYPE_SRC_PATH := ../../

LOCAL_MODULE := freetype2-static

LOCAL_CFLAGS := -DANDROID_NDK \
		-DFT2_BUILD_LIBRARY=1

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include_all \
		$(FREETYPE_SRC_PATH)include \
		$(FREETYPE_SRC_PATH)src

LOCAL_SRC_FILES := \
	$(FREETYPE_SRC_PATH)src/autofit/autofit.c \
	$(FREETYPE_SRC_PATH)src/base/ftbbox.c \
	$(FREETYPE_SRC_PATH)src/base/ftbitmap.c \
	$(FREETYPE_SRC_PATH)src/base/ftdbgmem.c \
	$(FREETYPE_SRC_PATH)src/base/ftglyph.c \
	$(FREETYPE_SRC_PATH)src/base/ftstroke.c \
	$(FREETYPE_SRC_PATH)src/base/ftsynth.c \
	$(FREETYPE_SRC_PATH)src/base/ftbdf.c \
	$(FREETYPE_SRC_PATH)src/base/ftcid.c \
	$(FREETYPE_SRC_PATH)src/base/ftfstype.c \
	$(FREETYPE_SRC_PATH)src/base/ftgasp.c \
	$(FREETYPE_SRC_PATH)src/base/ftgxval.c \
	$(FREETYPE_SRC_PATH)src/base/ftmm.c \
	$(FREETYPE_SRC_PATH)src/base/ftotval.c \
	$(FREETYPE_SRC_PATH)src/base/ftpatent.c \
	$(FREETYPE_SRC_PATH)src/base/ftpfr.c \
	$(FREETYPE_SRC_PATH)src/base/fttype1.c \
	$(FREETYPE_SRC_PATH)src/base/ftwinfnt.c \
	$(FREETYPE_SRC_PATH)src/base/md5.c \
	$(FREETYPE_SRC_PATH)src/base/ftbase.c \
	$(FREETYPE_SRC_PATH)src/base/ftsystem.c \
	$(FREETYPE_SRC_PATH)src/base/ftinit.c \
	$(FREETYPE_SRC_PATH)src/base/ftdebug.c \
	$(FREETYPE_SRC_PATH)src/cff/cff.c \
	$(FREETYPE_SRC_PATH)src/pshinter/pshinter.c \
	$(FREETYPE_SRC_PATH)src/psnames/psnames.c \
	$(FREETYPE_SRC_PATH)src/raster/raster.c \
	$(FREETYPE_SRC_PATH)src/sfnt/sfnt.c \
	$(FREETYPE_SRC_PATH)src/smooth/smooth.c \
	$(FREETYPE_SRC_PATH)src/truetype/truetype.c \
	$(FREETYPE_SRC_PATH)src/cache/ftcache.c \
	$(FREETYPE_SRC_PATH)src/cid/type1cid.c \
	$(FREETYPE_SRC_PATH)src/type1/type1.c \
	$(FREETYPE_SRC_PATH)src/pfr/pfr.c \
	$(FREETYPE_SRC_PATH)src/type42/type42.c \
	$(FREETYPE_SRC_PATH)src/winfonts/winfnt.c \
	$(FREETYPE_SRC_PATH)src/pcf/pcf.c \
	$(FREETYPE_SRC_PATH)src/psaux/psaux.c \
	$(FREETYPE_SRC_PATH)src/bdf/bdf.c \
	$(FREETYPE_SRC_PATH)src/gzip/ftgzip.c \
	$(FREETYPE_SRC_PATH)src/lzw/ftlzw.c \
	$(FREETYPE_SRC_PATH)src/bzip2/ftbzip2.c \

LOCAL_LDLIBS := -ldl -llog

include $(BUILD_STATIC_LIBRARY)

