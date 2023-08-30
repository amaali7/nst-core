{ pkgs, ... }@inputs:
rec{
  devShell = pkgs.mkShell {
    buildInputs = [
    ] ++ packages;
    shellHook = ''
      echo -e "--[ Welcome to Passwords part of NST-Core ]--"
    '';
  };
  packages = with pkgs;[
    ### Passwords ###
    brutespray
    chntpw
    crowbar
    crunch
    hashcat
    hcxtools
    john
    # python36Packages.patator
    phrasendrescher
    thc-hydra
  ];
}
