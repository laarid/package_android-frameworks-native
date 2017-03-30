# Copyright 2006 The Android Open Source Project

opengl_tests_bin_PROGRAMS += \
    %reldir%/angeles

%canon_reldir%_angeles_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV1_CM_CFLAGS) \
    $(CUTILS_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(HARDWARE_CFLAGS) \
    -DANDROID_EGL_PLATFORM

%canon_reldir%_angeles_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -Wno-unused-variable

%canon_reldir%_angeles_SOURCES = \
    %reldir%/app.h \
    %reldir%/app-linux.cpp \
    %reldir%/cams.h \
    %reldir%/demo.c \
    %reldir%/shapes.h

%canon_reldir%_angeles_LDADD = \
    $(EGL_LIBS) \
    $(GLESV1_CM_LIBS) \
    $(UTILS_LIBS) \
    $(UI_LIBS) \
    libs/gui/libandroid-gui.la

%canon_reldir%_angeles_LDADD += \
    opengl/tests/lib/libglTest.a

%canon_reldir%_angeles_CPPFLAGS += \
    -I$(srcdir)/opengl/tests/include
