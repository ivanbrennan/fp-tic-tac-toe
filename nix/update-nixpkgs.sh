#! /usr/bin/env nix-shell
#! nix-shell -i bash -p jq nix

set -eu

if (( $# != 1 ))
then
    echo "Usage: $0 <nixpkgs-revision>"
    echo "e.g.   $0 8746c77a383f5c76153c7a181f3616d273acfa2a"
    exit 1
fi

rev=$1
url="https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz"

pinned="$(dirname "$0")/pinned.json"
tmpfile=$(mktemp pinned-XXXX)

echo "Pre-fetching nixpkgs"
sha256=$(
    nix-prefetch-url "${url}" --unpack --type sha256 2>/dev/null
)

jq ".nixpkgs |= { url: \"${url}\", sha256: \"$sha256\" }" \
  "${pinned}" > "$tmpfile"

mv "$tmpfile" "${pinned}"
echo "Updated ${pinned}"
