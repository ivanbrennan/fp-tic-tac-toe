{ nixpkgs ? import nix/nixpkgs.nix }:

let
  pkgs = nixpkgs { };

in with pkgs;

mkShell {
  buildInputs = [
    cabal-install
    haskell.compiler.ghc865
  ];
}
