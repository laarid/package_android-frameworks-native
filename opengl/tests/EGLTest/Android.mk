# Build the unit tests.
if HAVE_GTEST

check_PROGRAMS += \
    %reldir%/EGL_test
if HAVE_DEV_BINDER
TESTS += \
    %reldir%/EGL_test
endif

%canon_reldir%_EGL_test_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(EGL_CFLAGS) \
    $(CUTILS_CFLAGS) \
    $(BINDER_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(HARDWARE_CFLAGS) \
    -DANDROID_EGL_PLATFORM \
    $(GTEST_CPPFLAGS)

%canon_reldir%_EGL_test_SOURCES = \
    %reldir%/EGL_test.cpp

# This depends on Android specific egl_cache_t
#%canon_reldir%_EGL_test_SOURCES += \
#    %reldir%/egl_cache_test.cpp

%canon_reldir%_EGL_test_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -Wno-sign-compare

%canon_reldir%_EGL_test_LDADD = \
    $(EGL_LIBS) \
    $(CUTILS_LIBS) \
    $(BINDER_LIBS) \
    $(UTILS_LIBS) \
    libs/gui/libandroid-gui.la \
    $(GTEST_LIBS)

%canon_reldir%_EGL_test_DEPENDENCIES = \
    $(GTEST_LIBS)

# gold in binutils 2.22 will warn about the usage of mktemp
%canon_reldir%_EGL_test_LDFLAGS = \
    $(AM_LDFLAGS) \
    -Wl,--no-fatal-warnings

endif # HAVE_GTEST
