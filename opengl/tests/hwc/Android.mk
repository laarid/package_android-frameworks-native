# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

if HAVE_GTEST

noinst_LIBRARIES += \
    %reldir%/libhwcTest.a

%canon_reldir%_libhwcTest_a_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(EGL_CFLAGS) \
    $(HARDWARE_CFLAGS) \
    $(UI_CFLAGS) \
    -DGL_GLEXT_PROTOTYPES \
    -DEGL_EGLEXT_PROTOTYPES \
    -DANDROID_EGL_PLATFORM

%canon_reldir%_libhwcTest_a_SOURCES = \
    %reldir%/hwcTestLib.cpp \
    %reldir%/hwcTestLib.h

%canon_reldir%_libhwcTest_a_CPPFLAGS += \
    $(TESTUTIL_CFLAGS) \
    -I$(srcdir)/opengl/tests/include

check_PROGRAMS += \
    %reldir%/hwcStress
if HAVE_DEV_BINDER
TESTS += \
    %reldir%/hwcStress
endif

%canon_reldir%_hwcStress_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV2_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(LOG_CFLAGS) \
    $(UI_CFLAGS) \
    $(HARDWARE_CFLAGS) \
    -DGL_GLEXT_PROTOTYPES \
    -DEGL_EGLEXT_PROTOTYPES \
    -DANDROID_EGL_PLATFORM \
    $(GTEST_CPPFLAGS)

%canon_reldir%_hwcStress_SOURCES = \
    %reldir%/hwcStress.cpp

%canon_reldir%_hwcStress_LDADD = \
    $(CUTILS_LIBS) \
    $(EGL_LIBS) \
    $(GLESV2_LIBS) \
    $(UTILS_LIBS) \
    $(LOG_LIBS) \
    $(UI_LIBS) \
    $(HARDWARE_LIBS)

%canon_reldir%_hwcStress_LDADD += \
    $(TESTUTIL_LIBS) \
    opengl/tests/lib/libglTest.a \
    %reldir%/libhwcTest.a \
    $(GTEST_LIBS)

%canon_reldir%_hwcStress_DEPENDENCIES = \
    $(GTEST_LIBS)

%canon_reldir%_hwcStress_CPPFLAGS += \
    $(TESTUTIL_CFLAGS) \
    -I$(srcdir)/opengl/tests/include

check_PROGRAMS += \
    %reldir%/hwcRects
if HAVE_DEV_BINDER
TESTS += \
    %reldir%/hwcRects
endif

%canon_reldir%_hwcRects_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV2_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(LOG_CFLAGS) \
    $(UI_CFLAGS) \
    $(HARDWARE_CFLAGS) \
    -DGL_GLEXT_PROTOTYPES \
    -DEGL_EGLEXT_PROTOTYPES \
    -DANDROID_EGL_PLATFORM \
    $(GTEST_CPPFLAGS)

%canon_reldir%_hwcRects_SOURCES = \
    %reldir%/hwcRects.cpp

%canon_reldir%_hwcRects_LDADD = \
    $(CUTILS_LIBS) \
    $(EGL_LIBS) \
    $(GLESV2_LIBS) \
    $(UTILS_LIBS) \
    $(LOG_LIBS) \
    $(UI_LIBS) \
    $(HARDWARE_LIBS)

%canon_reldir%_hwcRects_LDADD += \
    $(TESTUTIL_LIBS) \
    opengl/tests/lib/libglTest.a \
    %reldir%/libhwcTest.a \
    $(GTEST_LIBS)

%canon_reldir%_hwcRects_DEPENDENCIES = \
    $(GTEST_LIBS)

%canon_reldir%_hwcRects_CPPFLAGS += \
    $(TESTUTIL_CFLAGS) \
    -I$(srcdir)/opengl/tests/include

check_PROGRAMS += \
    %reldir%/hwcColorEquiv
if HAVE_DEV_BINDER
TESTS += \
    %reldir%/hwcColorEquiv
endif

%canon_reldir%_hwcColorEquiv_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV2_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(LOG_CFLAGS) \
    $(UI_CFLAGS) \
    $(HARDWARE_CFLAGS) \
    -DGL_GLEXT_PROTOTYPES \
    -DEGL_EGLEXT_PROTOTYPES \
    $(GTEST_CPPFLAGS)

%canon_reldir%_hwcColorEquiv_SOURCES = \
    %reldir%/hwcColorEquiv.cpp

%canon_reldir%_hwcColorEquiv_LDADD = \
    $(CUTILS_LIBS) \
    $(EGL_LIBS) \
    $(GLESV2_LIBS) \
    $(UTILS_LIBS) \
    $(LOG_LIBS) \
    $(UI_LIBS) \
    $(HARDWARE_LIBS)

%canon_reldir%_hwcColorEquiv_LDADD += \
    $(TESTUTIL_LIBS) \
    opengl/tests/lib/libglTest.a \
    %reldir%/libhwcTest.a \
    $(GTEST_LIBS)

%canon_reldir%_hwcColorEquiv_DEPENDENCIES = \
    $(GTEST_LIBS)

%canon_reldir%_hwcColorEquiv_CPPFLAGS += \
    $(TESTUTIL_CFLAGS) \
    -I$(srcdir)/opengl/tests/include

check_PROGRAMS += \
    %reldir%/hwcCommit
if HAVE_DEV_BINDER
TESTS += \
    %reldir%/hwcCommit
endif

%canon_reldir%_hwcCommit_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(EGL_CFLAGS) \
    $(GLESV2_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(LOG_CFLAGS) \
    $(UI_CFLAGS) \
    $(HARDWARE_CFLAGS) \
    -DGL_GLEXT_PROTOTYPES \
    -DEGL_EGLEXT_PROTOTYPES \
    -DANDROID_EGL_PLATFORM \
    $(GTEST_CPPFLAGS)

%canon_reldir%_hwcCommit_SOURCES = \
    %reldir%/hwcCommit.cpp

%canon_reldir%_hwcCommit_LDADD = \
    $(CUTILS_LIBS) \
    $(EGL_LIBS) \
    $(GLESV2_LIBS) \
    $(UTILS_LIBS) \
    $(LOG_LIBS) \
    $(UI_LIBS) \
    $(HARDWARE_LIBS)

%canon_reldir%_hwcCommit_LDADD += \
    $(TESTUTIL_LIBS) \
    opengl/tests/lib/libglTest.a \
    %reldir%/libhwcTest.a \
    $(GTEST_LIBS)

%canon_reldir%_hwcCommit_DEPENDENCIES = \
    $(GTEST_LIBS)

%canon_reldir%_hwcCommit_CPPFLAGS += \
    $(TESTUTIL_CFLAGS) \
    -I$(srcdir)/opengl/tests/include

endif # HAVE_GTEST
