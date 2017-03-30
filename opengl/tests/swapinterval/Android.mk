opengl_tests_bin_PROGRAMS += \
    %reldir%/test-opengl-swapinterval

%canon_reldir%_test_opengl_swapinterval_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV1_CM_CFLAGS) \
    $(UI_CFLAGS) \
    -DANDROID_EGL_PLATFORM

%canon_reldir%_test_opengl_swapinterval_SOURCES = \
    %reldir%/swapinterval.cpp

%canon_reldir%_test_opengl_swapinterval_LDADD = \
    $(UTILS_LIBS) \
    $(EGL_LIBS) \
    $(GLESV1_CM_LIBS) \
    $(UI_LIBS) \
    libs/gui/libandroid-gui.la

%canon_reldir%_test_opengl_swapinterval_LDADD += \
    opengl/tests/lib/libglTest.a

%canon_reldir%_test_opengl_swapinterval_CPPFLAGS += \
    -I$(srcdir)/opengl/tests/include
