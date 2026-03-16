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

  outputs = inputs: (import "${inputs.substrate}/lib/repo-flake.nix" {
    inherit (inputs) nixpkgs flake-utils;
  }) {
    self = inputs.self;
    language = "go";
    builder = "tool";
    pname = "akeyless-eso-webhook-trigger";
    vendorHash = "sha256-AonJyF78LMJmZlOwPaOBDoEsWgKf7rUs4t/33a/pf3M=";
    description = "Akeyless External Secrets webhook trigger - push-based ExternalSecret updates in Kubernetes";
    homepage = "https://github.com/pleme-io/akeyless-eso-webhook-trigger";
  };
}
