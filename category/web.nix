{ pkgs, ... }@inputs:
rec{
  devShell = pkgs.mkShell {
    buildInputs = [
    ] ++ packages;
    shellHook = ''
      echo -e "--[ Welcome to web part of NST-Core ]--"
    '';
  };
  packages = with pkgs; [
    burpsuite
    dirb
    gobuster
    urlhunter
    wfuzz
    wpscan
    zap
  ];
}
