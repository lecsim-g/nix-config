{ pkgs, lib, ... }: {
  environment.systemPackages = with pkgs; [
    vim
    chromium
    st
    dmenu networkmanager_dmenu
    networkmanagerapplet
    slock
    slstatus
    mc
    nix-search
    zip unzip
    tui-journal
    alsa-utils
    flameshot
    obs-studio
    mpv
    keepassxc
    git
    hsetroot
    telegram-desktop
    lutris
    qbittorrent
    btop
    blender
    fastfetch
    gpick
    imv
    krita
    lmms
    mindustry
    nemo
    nix-tree
    redshift
    scrcpy
    steam-run-free
    stress
    tree
    unityhub
    virtualboxKvm
    vlc
    vscode
    wget
    winetricks
    wineWowPackages.stableFull
    elinks
    android-file-transfer
    qemu
    android-tools
    gnumake
    obsidian
    godot
    openshot-qt
  ];

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
   "steam"
   "steam-unwrapped"
   "unityhub"
   "vscode"
   "obsidian"
   "davinci-resolve"
  ];
}