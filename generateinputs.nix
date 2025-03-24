{ lib
, callPackage
, writeTextFile
}: 
{ src }:
let
  fetchZephyrDeps = callPackage ./fetcher.nix {};
  json = fetchZephyrDeps {
    name = "firmware-west-deps";
    hash = "sha256-JhD7ckTyWHe9quD9nEthLgMGD758LHPBryNg0/aKUW4=";
    inherit src;
    westRoot = ./config;
  };
  deps = builtins.fromJSON (builtins.readFile "${json}/deps.json");
  input = builtins.map ({ name, rev, url, ... }: ''
    ${name}.url = "${lib.replaceStrings ["https://github.com/"] ["github:"] url}?ref=${rev}";
    ${name}.flake = false;
  '') deps;
  copy = builtins.map ({ name, path, ...}: ''
    mkdir -p $(dirname "$out/${path}")
    cp -r "''${inputs.${name}}" "$out/${path}" 
  '') deps;
in writeTextFile {
  name = "generatinputs.txt";
  text = lib.strings.concatStrings (lib.concatLists [input ["\n\n\n"] copy]);
}
