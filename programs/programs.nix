{ config, pkgs, ... }: {

  imports = [
    ./sway.nix
    ./nvim.nix

  ];


  gtk = {
    enable = true;
    theme = {
      name = "Yaru-dark";
      package = pkgs.yaru-theme;
    };
    iconTheme = {
      name = "Papirus";
      package = pkgs.papirus-icon-theme;
    };
    font = {
      name = "IBM Plex 12";
    };
    gtk3.extraConfig.gtk-cursor-theme-name = "breeze";
  };


  programs = {

    chromium = {
      enable = true;
      package = pkgs.chromium.override ({
        commandLineArgs = "--enable-features=UseOzonePlatform --ozone-platform=wayland --flag-switches-begin --enable-gpu-rasterization --enable-zero-copy --ignore-gpu-blocklist --enable-features=UseOzonePlatform,NativeNotifications,VaapiVideoDecoder,WebRTCPipeWireCapturer --flag-switches-end";
        #commandLineArgs = "--flag-switches-begin  --use-angle=vulkan --use-cmd-decoder=passthrough --ignore-gpu-blocklist --enable-features=NativeNotifications,VaapiVideoDecoder,WebRTCPipeWireCapturer --flag-switches-end";

      });

    };

  

    foot = {
      enable = true;
      settings = {
        main = {
          term = "xterm-256color";
          font = "Iosevka:size=14";
          dpi-aware = "yes";
        };

        mouse = {
          hide-when-typing = "yes";
        };
      };

    };

    git = {
      enable = true;
      userName = "Shpinog";
      userEmail = "shpinog@gmail.com";
    };

    emacs = {
      enable = true;
      package = pkgs.emacs-nox;


    };

    rofi = {
      enable = true;
      font = "Hack 16";

    };

    starship = {
      enable = true;
    };

    bash = {
      enable = true;
    };

    exa = {
      enable = true;
      enableAliases = true;
    };

    mpv = {
      enable = true;
      config =
        {
          keepaspect = "yes";
          deband = "no";
          force-window = true;
          cache = "yes";
          cache-pause-initial = "yes";
          cache-pause-wait = "10";
          interpolation = "yes";
          video-sync = "display-resample";
          tscale = "oversample";
          hwdec = "nvdec";
          vo = "gpu";
          hwdec-codecs = "all";
          audio-channels = "stereo";
          gpu-context = "x11vk";
        };
    };
  };
}
