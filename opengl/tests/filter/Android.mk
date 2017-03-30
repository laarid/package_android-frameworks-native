opengl_tests_bin_PROGRAMS += \
    %reldir%/test-opengl-filter

%canon_reldir%_test_opengl_filter_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV1_CM_CFLAGS) \
    $(UI_CFLAGS) \
    $(UTILS_CFLAGS) \
    -DANDROID_EGL_PLATFORM

%canon_reldir%_test_opengl_filter_SOURCES = \
    %reldir%/filter.cpp

%canon_reldir%_test_opengl_filter_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -Wno-unused-variable

%canon_reldir%_test_opengl_filter_LDADD = \
    $(EGL_LIBS) \
    $(GLESV1_CM_LIBS) \
    opengl/libs/GLES_CM/libandroid-GLESv1_CM.la \
    $(UI_LIBS) \
    libs/gui/libandroid-gui.la \
    $(UTILS_LIBS)

%canon_reldir%_test_opengl_filter_LDADD += \
    opengl/tests/lib/libglTest.a

%canon_reldir%_test_opengl_filter_CPPFLAGS += \
    -I$(srcdir)/opengl/tests/include \
    -DGL_GLEXT_PROTOTYPES
