{ inputs, ... }:
{
  imports = [
    inputs.nixos-passthru-cache.nixosModules.nixos-passthru-cache
  ];

  networking.firewall.enable = false;

  services.nixos-passthru-cache.enable = true;

  # enable Avahi, disable TLS
  services.nixos-passthru-cache.lanMode = true;

  services.nixos-passthru-cache.cacheSize = "1000G";
}
