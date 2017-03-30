opengl_tests_bin_PROGRAMS += \
    %reldir%/test-opengl-gl_yuvtex

%canon_reldir%_test_opengl_gl_yuvtex_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV1_CM_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(UI_CFLAGS) \
    -DANDROID_EGL_PLATFORM

%canon_reldir%_test_opengl_gl_yuvtex_SOURCES = \
    %reldir%/gl_yuvtex.cpp

%canon_reldir%_test_opengl_gl_yuvtex_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -Wno-unused-variable

%canon_reldir%_test_opengl_gl_yuvtex_LDADD = \
    $(EGL_LIBS) \
    opengl/libs/EGL/libandroid-EGL.la \
    $(GLESV1_CM_LIBS) \
    opengl/libs/GLES_CM/libandroid-GLESv1_CM.la \
    $(UTILS_LIBS) \
    $(UI_LIBS) \
    libs/gui/libandroid-gui.la

%canon_reldir%_test_opengl_gl_yuvtex_LDADD += \
    opengl/tests/lib/libglTest.a

%canon_reldir%_test_opengl_gl_yuvtex_CPPFLAGS += \
    -I$(srcdir)/opengl/tests/include \
    -DGL_GLEXT_PROTOTYPES \
    -DEGL_EGLEXT_PROTOTYPES
