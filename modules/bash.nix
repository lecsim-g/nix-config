{ pkgs, ... }: {
  systemd.services.binbash = {
    wantedBy = [ "multi-user.target" ];
    path = [ pkgs.bash ];
    script = ''
#!/usr/bin/env bash

if [ ! -f "/bin/bash" ]; then
  ln -s /run/current-system/sw/bin/bash /bin/bash
fi
    '';
  };
}