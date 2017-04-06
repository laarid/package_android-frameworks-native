lib_LTLIBRARIES += \
    %reldir%/libandroid-surfaceflinger.la

%canon_reldir%_libandroid_surfaceflinger_la_SOURCES = \
    %reldir%/Barrier.h \
    %reldir%/Client.cpp \
    %reldir%/Client.h \
    %reldir%/Colorizer.h \
    %reldir%/DdmConnection.h \
    %reldir%/DisplayDevice.cpp \
    %reldir%/DisplayDevice.h \
    %reldir%/DispSync.cpp \
    %reldir%/DispSync.h \
    %reldir%/EventControlThread.cpp \
    %reldir%/EventControlThread.h \
    %reldir%/EventThread.cpp \
    %reldir%/EventThread.h \
    %reldir%/FenceTracker.cpp \
    %reldir%/FenceTracker.h \
    %reldir%/FrameTracker.cpp \
    %reldir%/FrameTracker.h \
    %reldir%/GpuService.cpp \
    %reldir%/GpuService.h \
    %reldir%/Layer.cpp \
    %reldir%/Layer.h \
    %reldir%/LayerDim.cpp \
    %reldir%/LayerDim.h \
    %reldir%/MessageQueue.cpp \
    %reldir%/MessageQueue.h \
    %reldir%/MonitoredProducer.cpp \
    %reldir%/MonitoredProducer.h \
    %reldir%/SurfaceFlinger.h \
    %reldir%/SurfaceFlingerConsumer.cpp \
    %reldir%/SurfaceFlingerConsumer.h \
    %reldir%/Transform.cpp \
    %reldir%/Transform.h \
    %reldir%/DisplayHardware/DisplaySurface.h \
    %reldir%/DisplayHardware/FloatRect.h \
    %reldir%/DisplayHardware/FramebufferSurface.cpp \
    %reldir%/DisplayHardware/FramebufferSurface.h \
    %reldir%/DisplayHardware/HWC2.cpp \
    %reldir%/DisplayHardware/HWC2.h \
    %reldir%/DisplayHardware/HWC2On1Adapter.cpp \
    %reldir%/DisplayHardware/HWC2On1Adapter.h \
    %reldir%/DisplayHardware/HWComposer.h \
    %reldir%/DisplayHardware/PowerHAL.cpp \
    %reldir%/DisplayHardware/PowerHAL.h \
    %reldir%/DisplayHardware/VirtualDisplaySurface.cpp \
    %reldir%/DisplayHardware/VirtualDisplaySurface.h \
    %reldir%/Effects/Daltonizer.cpp \
    %reldir%/Effects/Daltonizer.h \
    %reldir%/EventLog/EventLog.cpp \
    %reldir%/EventLog/EventLog.h \
    %reldir%/RenderEngine/Description.cpp \
    %reldir%/RenderEngine/Description.h \
    %reldir%/RenderEngine/GLES10RenderEngine.cpp \
    %reldir%/RenderEngine/GLES10RenderEngine.h \
    %reldir%/RenderEngine/GLES11RenderEngine.cpp \
    %reldir%/RenderEngine/GLES11RenderEngine.h \
    %reldir%/RenderEngine/GLES20RenderEngine.cpp \
    %reldir%/RenderEngine/GLES20RenderEngine.h \
    %reldir%/RenderEngine/GLExtensions.cpp \
    %reldir%/RenderEngine/GLExtensions.h \
    %reldir%/RenderEngine/Mesh.cpp \
    %reldir%/RenderEngine/Mesh.h \
    %reldir%/RenderEngine/Program.cpp \
    %reldir%/RenderEngine/Program.h \
    %reldir%/RenderEngine/ProgramCache.cpp \
    %reldir%/RenderEngine/ProgramCache.h \
    %reldir%/RenderEngine/RenderEngine.cpp \
    %reldir%/RenderEngine/RenderEngine.h \
    %reldir%/RenderEngine/Texture.cpp \
    %reldir%/RenderEngine/Texture.h \
    %reldir%/clz.h

#%canon_reldir%_libandroid_surfaceflinger_la_SOURCES += \
#    %reldir%/EventLog/EventLogTags.logtags

%canon_reldir%_libandroid_surfaceflinger_la_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(UIDMAP_CFLAGS) \
    $(CUTILS_CFLAGS) \
    $(HARDWARE_CFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    $(POWERMANAGER_CFLAGS) \
    $(BINDER_CFLAGS) \
    $(UI_CFLAGS) \
    $(EGL_CFLAGS) \
    -I$(top_srcdir)/%reldir% \
    -DANDROID_EGL_PLATFORM

#LOCAL_C_INCLUDES := \
#	frameworks/native/vulkan/include \
#	external/vulkan-validation-layers/libs/vkjson

%canon_reldir%_libandroid_surfaceflinger_la_CPPFLAGS += \
    -DLOG_TAG=\"SurfaceFlinger\" \
    -DGL_GLEXT_PROTOTYPES -DEGL_EGLEXT_PROTOTYPES

#%canon_reldir%_libandroid_surfaceflinger_la_CPPFLAGS += \
#    -DENABLE_FENCE_TRACKING

if USE_HWC2
%canon_reldir%_libandroid_surfaceflinger_la_CPPFLAGS += \
    -DUSE_HWC2
%canon_reldir%_libandroid_surfaceflinger_la_SOURCES += \
    %reldir%/SurfaceFlinger.cpp \
    %reldir%/DisplayHardware/HWComposer.cpp
else
%canon_reldir%_libandroid_surfaceflinger_la_SOURCES += \
    %reldir%/DisplayHardware/HWComposer_hwc1.cpp \
    %reldir%/DisplayHardware/HWComposer_hwc1.h \
    %reldir%/SurfaceFlinger_hwc1.cpp
endif

if ENABLE_SF_CONTEXT_PRIORITY
%canon_reldir%_libandroid_surfaceflinger_la_CPPFLAGS += \
    -DHAS_CONTEXT_PRIORITY
endif

if DISABLE_SF_TRIPLE_BUFFERING
%canon_reldir%_libandroid_surfaceflinger_la_CPPFLAGS += \
    -DTARGET_DISABLE_TRIPLE_BUFFERING
endif

if ENABLE_FORCE_HWC_COPY_FOR_VIRTUAL_DISPLAYS
%canon_reldir%_libandroid_surfaceflinger_la_CPPFLAGS += \
    -DFORCE_HWC_COPY_FOR_VIRTUAL_DISPLAYS
endif

if USE_NUM_FRAMEBUFFER_SURFACE_BUFFERS
%canon_reldir%_libandroid_surfaceflinger_la_CPPFLAGS += \
    -DNUM_FRAMEBUFFER_SURFACE_BUFFERS=$(NUM_FRAMEBUFFER_SURFACE_BUFFERS)
endif

if WITHOUT_SF_SYNC_FRAMEWORK
%canon_reldir%_libandroid_surfaceflinger_la_CPPFLAGS += \
    -DRUNNING_WITHOUT_SYNC_FRAMEWORK
endif

# See build/target/board/generic/BoardConfig.mk for a description of this setting.
%canon_reldir%_libandroid_surfaceflinger_la_CPPFLAGS += \
    -DVSYNC_EVENT_PHASE_OFFSET_NS=$(VSYNC_EVENT_PHASE_OFFSET_NS)

# See build/target/board/generic/BoardConfig.mk for a description of this setting.
%canon_reldir%_libandroid_surfaceflinger_la_CPPFLAGS += \
    -DSF_VSYNC_EVENT_PHASE_OFFSET_NS=$(SF_VSYNC_EVENT_PHASE_OFFSET_NS)

%canon_reldir%_libandroid_surfaceflinger_la_CPPFLAGS += \
    -DPRESENT_TIME_OFFSET_FROM_VSYNC_NS=$(PRESENT_TIME_OFFSET_FROM_VSYNC_NS)

%canon_reldir%_libandroid_surfaceflinger_la_CPPFLAGS += \
    -DMAX_VIRTUAL_DISPLAY_DIMENSION=$(MAX_VIRTUAL_DISPLAY_DIMENSION)

%canon_reldir%_libandroid_surfaceflinger_la_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -fvisibility=hidden \
    -std=c++14 \
    -Wno-enum-compare \
    -Wno-multichar \
    -Wno-switch

%canon_reldir%_libandroid_surfaceflinger_la_LIBADD = \
    $(LIBADD_DL) \
    $(PTHREAD_LIBS) -lpthread \
    $(ATOMIC_LIBS) \
    $(RT_LIBS) \
    $(UIDMAP_LIBS) \
    $(CUTILS_LIBS) \
    $(LOG_LIBS) \
    $(HARDWARE_LIBS) \
    $(UTILS_LIBS) \
    $(EGL_LIBS) \
    opengl/libs/EGL/libandroid-EGL.la \
    $(GLESV1_CM_LIBS) \
    opengl/libs/GLES_CM/libandroid-GLESv1_CM.la \
    $(GLESV2_LIBS) \
    $(BINDER_LIBS) \
    $(UI_LIBS) \
    libs/gui/libandroid-gui.la \
    $(POWERMANAGER_LIBS) \
    $(VKJSON_LIBS)
#%canon_reldir%_libandroid_surfaceflinger_la_LIBADD += \
#    libvulkan

%canon_reldir%_libandroid_surfaceflinger_la_LDFLAGS = \
    $(AM_LDFLAGS) \
    $(libtool_opts)

###############################################################
# build surfaceflinger's executable

bin_PROGRAMS += \
    %reldir%/surfaceflinger

#%canon_reldir%_surfaceflinger_LDFLAGS = \
#    $(AM_LDFLAGS) \
#    -Wl,--version-script,art/sigchainlib/version-script.txt \
#    -Wl,--export-dynamic
%canon_reldir%_surfaceflinger_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(HARDWARE_CFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    $(BINDER_CFLAGS) \
    $(UI_CFLAGS) \
    $(EGL_CFLAGS) \
    -DLOG_TAG=\"SurfaceFlinger\" \
    -DANDROID_EGL_PLATFORM
%canon_reldir%_surfaceflinger_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -std=c++14 \
    -Wno-multichar

#LOCAL_INIT_RC := surfaceflinger.rc

if ENABLE_CPUSETS
%canon_reldir%_surfaceflinger_CPPFLAGS += \
    -DENABLE_CPUSETS
endif

%canon_reldir%_surfaceflinger_SOURCES = \
    %reldir%/main_surfaceflinger.cpp

%canon_reldir%_surfaceflinger_LDADD = \
    %reldir%/libandroid-surfaceflinger.la \
    $(CUTILS_LIBS) \
    $(BINDER_LIBS) \
    $(UTILS_LIBS)

#%canon_reldir%_surfaceflinger_LDADD += \
#    $(LOG_LIBS)

#LOCAL_WHOLE_STATIC_LIBRARIES := libsigchain

###############################################################

lib_LTLIBRARIES += \
    %reldir%/libandroid-surfaceflinger-ddmconnection.la

%canon_reldir%_libandroid_surfaceflinger_ddmconnection_la_CPPFLAGS = \
    $(AM_CPPFLAGS) \
    $(CUTILS_CFLAGS) \
    $(BINDER_CFLAGS) \
    $(NATIVEHELPER_CFLAGS) \
    -DLOG_TAG=\"SurfaceFlinger\" \
    -DANDROID_EGL_PLATFORM
%canon_reldir%_libandroid_surfaceflinger_ddmconnection_la_CXXFLAGS = \
    $(AM_CXXFLAGS) \
    -std=c++14

%canon_reldir%_libandroid_surfaceflinger_ddmconnection_la_SOURCES = \
    %reldir%/DdmConnection.cpp

%canon_reldir%_libandroid_surfaceflinger_ddmconnection_la_LIBADD = \
    $(LIBADD_DL) \
    $(LOG_LIBS)

%canon_reldir%_libandroid_surfaceflinger_ddmconnection_la_LDFLAGS = \
    $(AM_LDFLAGS) \
    $(libtool_opts)
