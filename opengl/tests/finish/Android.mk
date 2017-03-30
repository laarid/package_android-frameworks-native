opengl_tests_bin_PROGRAMS += \
    %reldir%/test-opengl-finish

%canon_reldir%_test_opengl_finish_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV1_CM_CFLAGS) \
    $(UI_CFLAGS) \
    -DANDROID_EGL_PLATFORM

%canon_reldir%_test_opengl_finish_SOURCES = \
    %reldir%/finish.cpp

%canon_reldir%_test_opengl_finish_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -Wno-unused-variable

%canon_reldir%_test_opengl_finish_LDADD = \
    $(UTILS_LIBS) \
    $(EGL_LIBS) \
    $(GLESV1_CM_LIBS) \
    opengl/libs/GLES_CM/libandroid-GLESv1_CM.la \
    $(UI_LIBS) \
    libs/gui/libandroid-gui.la

%canon_reldir%_test_opengl_finish_LDADD += \
    opengl/tests/lib/libglTest.a

%canon_reldir%_test_opengl_finish_CPPFLAGS += \
    -I$(srcdir)/opengl/tests/include \
    -DGL_GLEXT_PROTOTYPES
