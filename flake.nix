{
  outputs = { nixpkgs, ... }:
  let
    lib = nixpkgs.lib;
    forAllSystems = lib.genAttrs lib.systems.flakeExposed;
  in
  {
    devShell = forAllSystems (sys:
    let
      pkgs = nixpkgs.legacyPackages.${sys};
    in
    pkgs.mkShell {
      packages = with pkgs; [
        devcontainer
      ];
    });
  };
}
