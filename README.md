## Setup

To develop using [Nix](https://nixos.org/nix/), run `nix-shell`. This enters a shell where cabal and the appropriate version of GHC (specified in ./cabal.project) are provided.

To develop without Nix, use [ghcup](https://gitlab.haskell.org/haskell/ghcup) to install the appropriate version of GHC (see ./cabal.project) and cabal. See ghcup's [usage examples](https://gitlab.haskell.org/haskell/ghcup#usage).

## Build

```
make build
```

## Run

```
make run
```

## Test

```
make test
```
