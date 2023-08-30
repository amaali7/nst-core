{ pkgs, ... }@inputs:
rec{
  devShell = pkgs.mkShell {
    buildInputs = [
    ] ++ packages;
    shellHook = ''
      echo -e "--[ Welcome to Forensics part of NST-Core ]--"
    '';
  };
  packages = with pkgs; [
    ### Forensics ###
    capstone
    ddrescue
    ext4magic
    extundelete
    ghidra-bin
    git
    p0f
    pdf-parser
    python39Packages.binwalk
    python39Packages.distorm3
    sleuthkit
   # volatility
  ];
}
