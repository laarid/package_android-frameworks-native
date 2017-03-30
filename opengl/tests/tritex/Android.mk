opengl_tests_bin_PROGRAMS += \
    %reldir%/test-opengl-tritex

%canon_reldir%_test_opengl_tritex_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV1_CM_CFLAGS) \
    $(UI_CFLAGS) \
    $(UTILS_CFLAGS) \
    -DANDROID_EGL_PLATFORM

%canon_reldir%_test_opengl_tritex_SOURCES = \
    %reldir%/tritex.cpp

%canon_reldir%_test_opengl_tritex_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -Wno-unused-variable

%canon_reldir%_test_opengl_tritex_LDADD = \
    $(EGL_LIBS) \
    $(GLESV1_CM_LIBS) \
    $(UI_LIBS) \
    libs/gui/libandroid-gui.la \
    $(UTILS_LIBS)

%canon_reldir%_test_opengl_tritex_LDADD += \
    opengl/tests/lib/libglTest.a

%canon_reldir%_test_opengl_tritex_CPPFLAGS += \
    -I$(srcdir)/opengl/tests/include
