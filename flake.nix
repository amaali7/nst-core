{
  description = "Nix Security Toolkit flake";

  inputs = {
    # NixPkgs (nixos-22.11)
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";

    # NixPkgs Unstable (nixos-unstable)
    unstable.url = "github:nixos/nixpkgs/nixos-unstable";

  };

  outputs = { self, flake-utils, ... }@inputs:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          overlays = [ ];
          pkgs = import inputs.nixpkgs {
            inherit system overlays; config.allowUnfree = true;
          };
          category = import ./category { inherit inputs pkgs; };
        in
        with pkgs;
        {
          devShells = {
            default = category.shells.reverse;
          };
        }
      );
}
