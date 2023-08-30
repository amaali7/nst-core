{ pkgs, ... }@inputs:
rec{
  devShell = pkgs.mkShell {
    buildInputs = [
    ] ++ packages;
    shellHook = ''
      echo -e "--[ Welcome to General Utils part of NST-Core ]--"
    '';
  };
  packages = with pkgs;[
    ### General utils ###
    bat
    ranger
  ];
}
