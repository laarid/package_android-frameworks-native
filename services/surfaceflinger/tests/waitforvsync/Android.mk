bin_PROGRAMS += \
    %reldir%/test-waitforvsync

%canon_reldir%_test_waitforvsync_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS)

%canon_reldir%_test_waitforvsync_SOURCES = \
    %reldir%/waitforvsync.cpp
