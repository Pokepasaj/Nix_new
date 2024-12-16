{
  description = "nixos-home";

  inputs = {
    nixos-system.url = "path:///home/kosta/.nixos";
    # nixos-system.url = "github:micahnz/nixos-system";
  };

  outputs = { self, nixos-system, ... } @ inputs: {
    nixosConfigurations.nixos = nixos-system.nixosModules.nixosSystem {
      hardware = "default";
    };
  };
}
