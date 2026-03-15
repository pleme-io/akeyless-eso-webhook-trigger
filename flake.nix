{
  description = "Akeyless External Secrets webhook trigger - push-based ExternalSecret updates in Kubernetes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    substrate = {
      url = "github:pleme-io/substrate";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, substrate, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs { inherit system; };
      mkGoTool = (import "${substrate}/lib/go-tool.nix").mkGoTool;
    in {
      packages.default = mkGoTool pkgs {
        pname = "akeyless-eso-webhook-trigger";
        version = "0.0.0-dev";
        src = self;
        vendorHash = "sha256-AonJyF78LMJmZlOwPaOBDoEsWgKf7rUs4t/33a/pf3M=";
        description = "Akeyless External Secrets webhook trigger - push-based ExternalSecret updates in Kubernetes";
        homepage = "https://github.com/pleme-io/akeyless-eso-webhook-trigger";
      };

      devShells.default = pkgs.mkShellNoCC {
        packages = with pkgs; [ go gopls gotools ];
      };
    });
}
