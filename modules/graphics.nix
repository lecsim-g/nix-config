{ config, pkgs, lib, ... }: {
  hardware.graphics.enable = true;
  hardware.graphics.enable32Bit = true;
  services.pulseaudio.support32Bit = true;

  environment.systemPackages = with pkgs; [
    vulkan-tools
    vulkan-utility-libraries
    vulkan-headers
    vulkan-loader
    vulkan-volk
    linuxKernel.packages.linux_6_6_hardened.nvidia_x11_vulkan_beta_open
  ];

  services.xserver.videoDrivers = lib.mkDefault [ "nvidia" ];
  boot.blacklistedKernelModules = [ "nouveau" ];
  hardware.nvidia = {

    modesetting.enable = true;

    open = false;

    nvidiaSettings = true;

    powerManagement.enable = false;
    powerManagement.finegrained = false;

    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "nvidia-x11"
    "steam"
    "steam-unwrapped"
    "unityhub"
    "vscode"
    "nvidia-settings"
    "obsidian"
  ];

}