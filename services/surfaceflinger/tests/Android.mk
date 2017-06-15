# Build the unit tests,
if HAVE_GTEST
check_PROGRAMS += \
    %reldir%/SurfaceFlinger_test

if HAVE_DEV_BINDER
TESTS += \
    %reldir%/SurfaceFlinger_test
endif

%canon_reldir%_SurfaceFlinger_test_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(BINDER_CFLAGS) \
    $(CUTILS_CFLAGS) \
    $(LOG_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(UI_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GTEST_CPPFLAGS)

%canon_reldir%_SurfaceFlinger_test_SOURCES = \
    %reldir%/Transaction_test.cpp

%canon_reldir%_SurfaceFlinger_test_LDADD = \
    $(EGL_LIBS) \
    $(GLESV2_LIBS) \
    $(BINDER_LIBS) \
    $(CUTILS_LIBS) \
    $(LOG_LIBS) \
    libs/gui/libandroid-gui.la \
    $(UI_LIBS) \
    $(UTILS_LIBS) \
    $(GTEST_LIBS)

%canon_reldir%_SurfaceFlinger_test_DEPENDENCIES = \
    libs/gui/libandroid-gui.la \
    $(GTEST_LIBS)
endif # HAVE_GTEST

# Include subdirectory makefiles
# ============================================================

include $(srcdir)/%reldir%/vsync/Android.mk
include $(srcdir)/%reldir%/waitforvsync/Android.mk
