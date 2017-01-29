{ config, pkgs, ... }:
{
  imports = [ ./common.nix ];

  nix = {
    package = pkgs.nixIPFS;
    binaryCaches = [
      "/ipns/nix.ipfs.sourcediver.org/binary_cache?gateway=http://ipfs_gw&use_gateway=0"
    ];
  };

  services.ipfs = {
    enable = true;
    emptyRepo = true;
  };
}
