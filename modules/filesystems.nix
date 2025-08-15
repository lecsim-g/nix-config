{
  fileSystems = {
    # SAMSUNG SP2004C 186.31 GiB
    "/mnt/1"  =  {
      device  =  "/dev/disk/by-uuid/684a1e48-714f-4521-933c-35ebb81b6be9" ;
      fsType  =  "ext4" ;
      options  =  [
        "users"
        "nofail"
        "x-gvfs-show"
      ];
    };
    # OnlyDisk 57.99 GiB
    "/mnt/2"  =  {
      device  =  "/dev/disk/by-uuid/E455-032E" ;
      fsType  =  "vfat" ;
      options  =  [
        "users"
        "nofail"
        "x-gvfs-show"
      ];
    };
    # OnlyDisk 57.99 GiB
    "/mnt/3"  =  {
      device  =  "/dev/disk/by-uuid/AB24-1242" ;
      fsType  =  "exfat" ;
      options  =  [
        "users"
        "nofail"
        "x-gvfs-show"
      ];
    };
    # OnlyDisk 57.99 GiB
    "/mnt/4"  =  {
      device  =  "/dev/disk/by-uuid/2205-E719" ;
      fsType  =  "vfat" ;
      options  =  [
        "users"
        "nofail"
        "x-gvfs-show"
      ];
    };
  };
}