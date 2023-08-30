{ pkgs, ... }@inputs:
let
  general = import ./general.nix { inherit inputs pkgs; };
  backdoors = import ./backdoors.nix { inherit inputs pkgs; };
  exploitation = import ./exploitation.nix { inherit inputs pkgs; };
  forensics = import ./forensics.nix { inherit inputs pkgs; };
  hardware = import ./hardware.nix { inherit inputs pkgs; };
  passwords = import ./passwords.nix { inherit inputs pkgs; };
  recon = import ./recon.nix { inherit inputs pkgs; };
  reverse = import ./reverse.nix { inherit inputs pkgs; };
  sniffing = import ./sniffing.nix { inherit inputs pkgs; };
  vuln_analisys = import ./vuln_analisys.nix { inherit inputs pkgs; };
  web = import ./web.nix { inherit inputs pkgs; };

in
{
  defaultShell = pkgs.mkShell {
    buildInputs = [
      general.devShell.buildInputs
      backdoors.devShell.buildInputs
      exploitation.devShell.buildInputs
      forensics.devShell.buildInputs
      hardware.devShell.buildInputs
      passwords.devShell.buildInputs
      recon.devShell.buildInputs
      reverse.devShell.buildInputs
      sniffing.devShell.buildInputs
      vuln_analisys.devShell.buildInputs
      web.devShell.buildInputs
    ];
    shellHook = ''
      echo -e "Welcome to NST-Core"
    '';
  };

  shells = {
    general = general.devShell;
    backdoors = backdoors.devShell;
    exploitation = exploitation.devShell;
    forensics = forensics.devShell;
    hardware = hardware.devShell;
    passwords = passwords.devShell;
    recon = recon.devShell;
    reverse = reverse.devShell;
    sniffing = sniffing.devShell;
    vuln_analisys = vuln_analisys.devShell;
    web = web.devShell;
  };

  packages = [
    general.packages
    backdoors.packages
    exploitation.packages
    forensics.packages
    hardware.packages
    passwords.packages
    recon.packages
    reverse.packages
    sniffing.packages
    vuln_analisys.packages
    web.packages
  ];
}
