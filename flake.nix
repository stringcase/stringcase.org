{
  description = "stringcase.org";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    hextra = {
      url = "github:imfing/hextra";
      flake = false;
    };
    flexsearch = {
      url = "https://cdn.jsdelivr.net/npm/flexsearch@0.8.143/dist/flexsearch.bundle.min.js";
      flake = false;
    };
  };
  outputs = { self, nixpkgs, hextra, flexsearch }:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
    {
      packages.${system}.default = pkgs.stdenv.mkDerivation {
        pname = "stringcase.org";
        version = "0.1.0";
        src = ./.;
        nativeBuildInputs = with pkgs; [ hugo ];
        buildPhase = ''
          mkdir -p themes
          ln -s ${hextra} themes/hextra
          mkdir -p assets/js/vendor
          cp ${flexsearch} assets/js/vendor/flexsearch.bundle.min.js
          hugo --minify
        '';
        installPhase = "cp -r public $out";
      };

      devShells.${system}.default = pkgs.mkShell {
        name = "stringcase.org";
        buildInputs = with pkgs; [
          hugo
          just
          microserver
        ];
        shellHook = ''
          mkdir -p themes
          ln -sfn ${hextra} themes/hextra
          mkdir -p assets/js/vendor
          ln -sfn ${flexsearch} assets/js/vendor/flexsearch.bundle.min.js
        '';
      };
  };
}
