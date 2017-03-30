opengl_tests_bin_PROGRAMS += \
    %reldir%/test-opengl-gl2_perf

%canon_reldir%_test_opengl_gl2_perf_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(LOG_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV2_CFLAGS) \
    $(UI_CFLAGS) \
    $(UTILS_CFLAGS) \
    -DANDROID_EGL_PLATFORM

%canon_reldir%_test_opengl_gl2_perf_SOURCES = \
    %reldir%/gl2_perf.cpp \
    %reldir%/filltest.cpp

# extra files that are included directly
EXTRA_DIST += \
    %reldir%/fill_common.cpp \
    %reldir%/fragment_shaders.cpp

%canon_reldir%_test_opengl_gl2_perf_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -Wno-unused-variable \
    -Wno-unused-function

%canon_reldir%_test_opengl_gl2_perf_LDADD = \
    $(LOG_LIBS) \
    $(EGL_LIBS) \
    $(GLESV2_LIBS) \
    $(UI_LIBS) \
    libs/gui/libandroid-gui.la \
    $(UTILS_LIBS)

%canon_reldir%_test_opengl_gl2_perf_LDADD += \
    opengl/tests/lib/libglTest.a

%canon_reldir%_test_opengl_gl2_perf_CPPFLAGS += \
    -I$(srcdir)/opengl/tests/include \
    -DGL_GLEXT_PROTOTYPES
