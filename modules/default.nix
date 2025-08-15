{ lib, ... }: let
  scanPaths =
    path:
    builtins.map (f: (path + "/${f}")) (
      builtins.attrNames (
        lib.attrsets.filterAttrs (
          path: _type:
          (_type == "directory")
          || (
            (path != "default.nix")
            && (lib.strings.hasSuffix ".nix" path)
          )
        ) (builtins.readDir path)
      )
    );
in {
  imports = scanPaths ./.;
}

#######################################################
# Взято отсюда https://github.com/ryan4yin/nix-config #
#######################################################