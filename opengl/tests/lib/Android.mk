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

noinst_LIBRARIES += \
    %reldir%/libglTest.a

%canon_reldir%_libglTest_a_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(HARDWARE_CFLAGS) \
    -DANDROID_EGL_PLATFORM

%canon_reldir%_libglTest_a_SOURCES = \
    opengl/tests/include/EGLUtils.h \
    opengl/tests/include/glTestLib.h \
    opengl/tests/include/WindowSurface.h \
    %reldir%/glTestLib.cpp \
    %reldir%/WindowSurface.cpp

%canon_reldir%_libglTest_a_CPPFLAGS += \
    $(TESTUTIL_CFLAGS) \
    -I$(srcdir)/opengl/tests/include
