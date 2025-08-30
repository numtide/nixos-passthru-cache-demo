{
  description = "Simple flake with a devshell";

  # Add all your dependencies here
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";

    blueprint.url = "github:numtide/blueprint";
    blueprint.inputs.nixpkgs.follows = "nixpkgs";

    nixos-passthru-cache = {
      url = "github:numtide/nixos-passthru-cache?ref=nixcon2025";
      inputs.blueprint.follows = "blueprint";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # Load the blueprint
  outputs = inputs: inputs.blueprint { inherit inputs; };
}
