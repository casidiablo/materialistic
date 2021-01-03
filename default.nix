let  
  pkgs = import <nixpkgs> {};
  stdenv = pkgs.stdenv;

in stdenv.mkDerivation rec {  
  name = "materialistic";
  buildInputs = [
    pkgs.openjdk8
  ];

  shellHook = ''
    export ANDROID_HOME=~/Android/Sdk/
  '';
}
