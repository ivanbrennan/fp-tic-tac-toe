{ nixpkgs ? import <nixpkgs> }:

let
  pkgs = nixpkgs { };

in with pkgs;

mkShell {
  buildInputs = [
    cabal-install
    ghc
  ];
}
