{ pkgs, ... }: {
  services.xserver.enable = true;
  services.xserver.windowManager.dwm.enable = true;

  nixpkgs.overlays = [
    (final: prev: {
       dwm = prev.dwm.overrideAttrs (old: {
         src = ./dwm-flexipatch;
       });
    })
  ];
}