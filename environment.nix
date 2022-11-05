{ config, pkgs, ... }: {
  home.sessionVariables = {
    GTK_THEME = "Yaru:dark";
    MOZ_ENABLE_WAYLAND = 1;
    XDG_CURRENT_DESKTOP = "sway";
    XDG_SESSION_TYPE = "wayland";
    _JAVA_AWT_WM_NONREPARENTING = "1";
    QT_QPA_PLATFORM = "wayland";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
    # AMD_DEBUG="nodma,nongg,nodcc";
    #MESA_LOADER_DRIVER_OVERRIDE="radeonsi";
    #RADV_PERFTEST="aco";

    # RADV_DEBUG="nongg,nocache";
   # RADV_DEBUG = "forcecompress,hang,nomemorycache,";
   # radeonsi_zerovram ="1";
   # MESA_SHADER_CACHE_DISABLE = "true";
   vblank_mode = "0";
   # WLR_DRM_NO_ATOMIC=1;
   WLR_NO_HARDWARE_CURSORS=1;
    # WLR_DRM_NO_MODIFIERS=1;
    WLR_DRM_DEVICES = "/dev/dri/card1"; # radeon + nauveau
    #Nvidia X11
    #nvidia wayland
    # __GL_THREADED_OPTIMIZATION = "1";
    # __GL_SYNC_TO_VBLANK = "0";
    # LIBVA_DRIVER_NAME = "vdpau";


#    GBM_BACKENDS_PATH = "/run/opengl-driver/lib/gbm";
     GBM_BACKEND = "nvidia-drm";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    __VK_LAYER_NV_optimus="NVIDIA_only";

    # OCL_ICD_VENDORS = "/run/opengl-driver/etc/OpenCL/vendors";
    # WLR_NO_HARDWARE_CURSORS = "1";



  };

}
