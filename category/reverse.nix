{ pkgs, ... }@inputs:
rec{
  devShell = pkgs.mkShell {
    buildInputs = [
    ] ++ packages;
    shellHook = ''
      echo -e "--[ Welcome to Reverse part of NST-Core ]--"
    '';
  };
  packages = with pkgs;[
    ### Reverse ###
    binutils
    elfutils
    jd
    jd-gui
    patchelf
    radare2
    radare2-cutter
    retdec
    snowman
    valgrind
    yara
  ];
}
