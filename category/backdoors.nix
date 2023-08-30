{ pkgs, ... }@inputs:
rec{
  devShell = pkgs.mkShell {
    buildInputs = [
    ]++packages;
    shellHook = ''
      echo -e "--[ Welcome to Backdoors part of NST-Core ]--"
    '';
  };
  packages = with pkgs;[
    ### Backdoors ###
    httptunnel
    pwnat
  ];
}
