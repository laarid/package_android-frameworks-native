bin_PROGRAMS += \
    %reldir%/test-vsync-events

%canon_reldir%_test_vsync_events_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(UTILS_CFLAGS) \
    $(BINDER_CFLAGS) \
    $(UI_CFLAGS)

%canon_reldir%_test_vsync_events_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -Wno-multichar

%canon_reldir%_test_vsync_events_SOURCES = \
    %reldir%/vsync.cpp

%canon_reldir%_test_vsync_events_LDADD = \
    $(UTILS_LIBS) \
    libs/gui/libandroid-gui.la
