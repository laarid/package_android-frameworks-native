opengl_tests_bindir = $(libdir)/android/frameworks-native-$(LAARID_API_VERSION)/installed-tests/opengl
opengl_tests_bin_PROGRAMS =

include %reldir%/lib/Android.mk

include %reldir%/angeles/Android.mk
include %reldir%/configdump/Android.mk
include %reldir%/EGLTest/Android.mk
include %reldir%/fillrate/Android.mk
include %reldir%/filter/Android.mk
include %reldir%/finish/Android.mk
include %reldir%/gl2_basic/Android.mk
include %reldir%/gl2_copyTexImage/Android.mk
include %reldir%/gl2_yuvtex/Android.mk
include %reldir%/gl_basic/Android.mk
include %reldir%/gl_perf/Android.mk
include %reldir%/gl_yuvtex/Android.mk
include %reldir%/gralloc/Android.mk
include %reldir%/hwc/Android.mk
include %reldir%/linetex/Android.mk
include %reldir%/swapinterval/Android.mk
include %reldir%/textures/Android.mk
include %reldir%/tritex/Android.mk

#ifneq (,$(TARGET_BUILD_JAVA_SUPPORT_LEVEL))
#include %reldir%/gl2_cameraeye/Android.mk
#include %reldir%/gl2_java/Android.mk
#include %reldir%/gl2_jni/Android.mk
#include %reldir%/gldual/Android.mk
#include %reldir%/gl_jni/Android.mk
#include %reldir%/gl_perfapp/Android.mk
#include %reldir%/lighting1709/Android.mk
#include %reldir%/testLatency/Android.mk
#include %reldir%/testPauseResume/Android.mk
#include %reldir%/testViewport/Android.mk
#endif # JAVA_SUPPORT

#ifeq (platform,$(TARGET_BUILD_JAVA_SUPPORT_LEVEL))
#include %reldir%/testFramerate/Android.mk
#endif # JAVA_SUPPORT platform
