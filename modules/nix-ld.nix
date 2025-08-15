{ pkgs, ... }: {
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    xorg.libxcb
    libGL
    fontconfig
    xorg.libSM
    xorg.libICE
    xorg.libX11
    xorg.libXext
    xorg.libXcursor
    openldap
    llvmPackages.libcxx

    xorg.libXrandr
    gtk3
    gdk-pixbuf
    glib
    cairo
    pango
    harfbuzz
    atk

    vulkan-tools
    vulkan-utility-libraries
    vulkan-headers
    vulkan-loader
    vulkan-volk
    linuxKernel.packages.linux_6_6_hardened.nvidia_x11_vulkan_beta_open
    android-tools
    dotnetCorePackages.dotnet_10.sdk
    dotnet-sdk_10
    dotnet-runtime
    dotnet-sdk
    bash

    xorg.xrandr
    xorg.libX11
    glibc
    sdl3
    SDL
  ];
}