bin_PROGRAMS += \
	%reldir%/test-sensorservice

%canon_reldir%_test_sensorservice_CPPFLAGS = \
	$(AM_CPPFLAGS) \
	$(HARDWARE_CFLAGS) \
	$(NATIVEHELPER_CFLAGS) \
	$(UTILS_CFLAGS)

%canon_reldir%_test_sensorservice_SOURCES = \
	%reldir%/sensorservicetest.cpp

%canon_reldir%_test_sensorservice_LDADD = \
	$(UTILS_LIBS) \
	libs/gui/libandroid-gui.la
