{
  description = "NUR packages";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  inputs.please.url = "github:TNG/please-cli";
  inputs.please.inputs.nixpkgs.follows = "nixpkgs";

  outputs = { self, flake-utils, nixpkgs, please }:
    {
      overlay = final: prev: {
        dschrempf = self.packages.${final.system};
      };
    } //
    flake-utils.lib.eachDefaultSystem
      (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          packages = import ./default.nix { inherit pkgs; please-flake = please; inherit system; };
        }
      );
}
