LOCAL_PATH:= $(call my-dir)
TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := minidlna.c upnphttp.c upnpdescgen.c upnpsoap.c \
           upnpreplyparse.c minixml.c \
           getifaddr.c daemonize.c upnpglobalvars.c \
           options.c minissdp.c uuid.c upnpevents.c \
           sql.c utils.c metadata.c scanner.c inotify.c \
           tivo_utils.c tivo_beacon.c tivo_commands.c \
           tagutils/textutils.c tagutils/misc.c tagutils/tagutils.c \
           image_utils.c albumart.c log.c


LOCAL_CFLAGS := \
	 -Wall -g -O3 -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 \
	-DINET_ADDRSTRLEN=16
LOCAL_C_INCLUDES += external/upnp-extension/ffmpeg
LOCAL_C_INCLUDES += external/upnp-extension/ffmpeg/libavcodec
LOCAL_C_INCLUDES += external/upnp-extension/ffmpeg/libavutil
LOCAL_C_INCLUDES += external/upnp-extension/ffmpeg/libavformat
LOCAL_C_INCLUDES += external/upnp-extension/libexif
LOCAL_C_INCLUDES += external/upnp-extension/flac
LOCAL_C_INCLUDES += external/upnp-extension/libid3tag
LOCAL_C_INCLUDES += external/upnp-extension/libogg
LOCAL_C_INCLUDES += external/upnp-extension/libvorbis
LOCAL_C_INCLUDES += external/upnp-extension/libogg/include
LOCAL_C_INCLUDES += external/upnp-extension/libvorbis/include
LOCAL_C_INCLUDES += external/upnp-extension/flac/include
LOCAL_C_INCLUDES += external/sqlite/dist
LOCAL_C_INCLUDES += external/ipsec-tools/src/include-glibc/
LOCAL_C_INCLUDES += external/jpeg


LOCAL_STATIC_LIBRARIES := libupnp libdlna libavformat libavcodec libavutil libz libjpeg libid3tag libFLAC libvorbis libogg libexif

LOCAL_SHARED_LIBRARIES := libsqlite 

LOCAL_MODULE:= miniupnp

include $(BUILD_EXECUTABLE)

