{ config, pkgs, ... }:
{
  imports = [ ./common.nix ];

  networking.firewall.allowedTCPPorts = [ 80 4001 ];
  services.ipfs = {
    enable = true;
    emptyRepo = true;
  };

  services.nginx = {
    enable = true;
    virtualHosts = {
      "_" = {
        default = true;
        locations."/" = {
          extraConfig = ''
            proxy_pass http://127.0.0.1:8080;
          '';
        };
      };
    };
  };
}
