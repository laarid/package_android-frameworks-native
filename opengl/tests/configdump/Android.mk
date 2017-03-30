opengl_tests_bin_PROGRAMS += \
    %reldir%/test-opengl-configdump

%canon_reldir%_test_opengl_configdump_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV1_CM_CFLAGS) \
    -DANDROID_EGL_PLATFORM

%canon_reldir%_test_opengl_configdump_SOURCES = \
    %reldir%/configdump.cpp

%canon_reldir%_test_opengl_configdump_LDADD = \
    $(EGL_LIBS) \
    $(GLESV1_CM_LIBS)
