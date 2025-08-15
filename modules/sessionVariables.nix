{ pkgs, ... }: {
  environment.sessionVariables = rec {
    TERMINAL = "st";
    EDITOR = "vim";
    BROWSER = "chromium";
    DEFAULT_BROWSER = "${pkgs.chromium}/bin/chromium";
    XDG_CACHE_HOME  = "$HOME/.cache";
    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_DATA_HOME   = "$HOME/.local/share";
    XDG_STATE_HOME  = "$HOME/.local/state";
    DOTNET_ROOT = "${pkgs.dotnet-sdk}/share/dotnet";

    XDG_BIN_HOME    = "$HOME/.local/bin";
    PATH = [
      "${XDG_BIN_HOME}"
    ];
  };
}