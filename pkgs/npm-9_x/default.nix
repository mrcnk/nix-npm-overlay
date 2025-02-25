# This file was autogenerated. Edit the update.ts file instead.
{pkgs ? import <nixpkgs> { inherit system; }, system ? builtins.currentSystem}:

pkgs.stdenv.mkDerivation rec {
  name = "npm";
  version = "9.8.1";
  src = pkgs.fetchurl {
    url = "https://registry.npmjs.org/npm/-/npm-9.8.1.tgz";
    sha512 = "AfDvThQzsIXhYgk9zhbk5R+lh811lKkLAeQMMhSypf1BM7zUafeIIBzMzespeuVEJ0+LvY36oRQYf7IKLzU3rw==";
  };
  doCheck = true;
  phases = [ "unpackPhase" "installPhase" ];
  installPhase = ''
    mkdir $out
    cp -r * $out
    chmod +x $out/bin/{npm,npx}
  '';
  meta.priority = "100"; # Prevents collision with Node's built-in npm
}
