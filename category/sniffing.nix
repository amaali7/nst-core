{ pkgs, ... }@inputs:
rec{
  devShell = pkgs.mkShell {
    buildInputs = [
    ] ++ packages;
    shellHook = ''
      echo -e "--[ Welcome to Sinffing part of NST-Core ]--"
    '';
  };
  packages = with pkgs; [
    bettercap
    dsniff
    mitmproxy
    rshijack
    sipp
    sniffglue
  ];
}
