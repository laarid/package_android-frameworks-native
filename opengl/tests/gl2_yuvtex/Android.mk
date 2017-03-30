opengl_tests_bin_PROGRAMS += \
    %reldir%/test-opengl-gl2_yuvtex

%canon_reldir%_test_opengl_gl2_yuvtex_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV2_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(UI_CFLAGS) \
    -DANDROID_EGL_PLATFORM

%canon_reldir%_test_opengl_gl2_yuvtex_SOURCES = \
    %reldir%/gl2_yuvtex.cpp

%canon_reldir%_test_opengl_gl2_yuvtex_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -Wno-unused-variable

%canon_reldir%_test_opengl_gl2_yuvtex_LDADD = \
    $(EGL_LIBS) \
    opengl/libs/EGL/libandroid-EGL.la \
    $(GLESV2_LIBS) \
    opengl/libs/GLES2/libandroid-GLESv2.la \
    $(UTILS_LIBS) \
    $(UI_LIBS) \
    libs/gui/libandroid-gui.la \
    $(UTILS_LIBS)

%canon_reldir%_test_opengl_gl2_yuvtex_LDADD += \
    opengl/tests/lib/libglTest.a

%canon_reldir%_test_opengl_gl2_yuvtex_CPPFLAGS += \
    -I$(srcdir)/opengl/tests/include \
    -DGL_GLEXT_PROTOTYPES \
    -DEGL_EGLEXT_PROTOTYPES
