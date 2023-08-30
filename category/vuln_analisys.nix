{ pkgs, ... }@inputs:
rec{
  devShell = pkgs.mkShell {
    buildInputs = [
    ]++packages;
    shellHook = ''
      echo -e "--[ Welcome to vulm_analisys part of NST-Core ]--"
    '';
  };
  packages = with pkgs;[
  ### Vuln analisys ###
  grype
  lynis
  sqlmap
  vulnix
  ];
}
