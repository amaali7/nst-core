{ pkgs, ... }@inputs:
rec{
  devShell = pkgs.mkShell {
    buildInputs = [
    ] ++ packages;
    shellHook = ''
      echo -e "--[ Welcome to Recon part of NST-Core ]--"
    '';
  };
  packages = with pkgs;[
    ### Recon ###
    cloudbrute
    dnsenum
    dnsrecon
    enum4linux
    hping
    masscan
    netcat
    nmap
    ntopng
    sn0int
    sslsplit
    theharvester
    wireshark
    # wireshark-cli
  ];
}
