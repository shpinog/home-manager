{ config, pkgs, ... }: {
home.sessionVariables = {
    MOZ_ENABLE_WAYLAND = 1;
    XDG_CURRENT_DESKTOP = "sway";
    XDG_SESSION_TYPE = "wayland";
    _JAVA_AWT_WM_NONREPARENTING = "1";
    QT_QPA_PLATFORM = "wayland";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
#   vblank_mode = "0";
#    WLR_DRM_DEVICES = "/dev/dri/card1:/dev/dri/card0";
    
    #Nvidia X11
    #nvidia wayland

    
    GBM_BACKENDS_PATH = "/run/opengl-driver/lib/gbm";
    GBM_BACKEND = "nvidia-drm";
    GLX_VENDOR_LIBRARY_NAME = "nvidia";
    OCL_ICD_VENDORS = "/run/opengl-driver/etc/OpenCL/vendors";
    WLR_NO_HARDWARE_CURSORS= "1";
    __GL_SYNC_TO_VBLANK = "0";
    LIBVA_DRIVER_NAME = "vdpau"; 


  };

}
