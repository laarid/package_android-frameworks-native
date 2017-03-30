opengl_tests_bin_PROGRAMS += \
    %reldir%/test-opengl-gralloc

%canon_reldir%_test_opengl_gralloc_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(UI_CFLAGS)

%canon_reldir%_test_opengl_gralloc_SOURCES = \
    %reldir%/gralloc.cpp

%canon_reldir%_test_opengl_gralloc_LDADD = \
    $(UTILS_LIBS) \
    $(UI_LIBS)
