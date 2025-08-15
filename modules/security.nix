{ pkgs, ... }: {
  security.wrappers = {
    slock = {
      setuid = true;
      owner = "root";
      group = "root";
      source = "${pkgs.slock}/bin/slock";
    };
  };
}