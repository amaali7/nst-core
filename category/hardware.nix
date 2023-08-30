{ pkgs, ... }@inputs:
rec{
  devShell = pkgs.mkShell {
    buildInputs = [
    ] ++ packages;
    shellHook = ''
      echo -e "--[ Welcome to Hardware part of NST-Core ]--"
    '';
  };
  packages = with pkgs; [
    ### Hardware ###
    apktool
  ];
}
