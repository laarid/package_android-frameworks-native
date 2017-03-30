opengl_tests_bin_PROGRAMS += \
    %reldir%/test-opengl-gl2_copyTexImage

%canon_reldir%_test_opengl_gl2_copyTexImage_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV2_CFLAGS) \
    $(UI_CFLAGS) \
    $(UTILS_CFLAGS) \
    -DANDROID_EGL_PLATFORM

%canon_reldir%_test_opengl_gl2_copyTexImage_SOURCES = \
    %reldir%/gl2_copyTexImage.cpp

%canon_reldir%_test_opengl_gl2_copyTexImage_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -Wno-unused-variable

%canon_reldir%_test_opengl_gl2_copyTexImage_LDADD = \
    $(EGL_LIBS) \
    $(GLESV2_LIBS) \
    $(UI_LIBS) \
    libs/gui/libandroid-gui.la \
    $(UTILS_LIBS)

%canon_reldir%_test_opengl_gl2_copyTexImage_LDADD += \
    opengl/tests/lib/libglTest.a

%canon_reldir%_test_opengl_gl2_copyTexImage_CPPFLAGS += \
    -I$(srcdir)/opengl/tests/include \
    -DGL_GLEXT_PROTOTYPES
