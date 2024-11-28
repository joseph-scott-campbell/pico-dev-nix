{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.cmake
    pkgs.python3
    pkgs.gcc-arm-embedded
    pkgs.newlib
    pkgs.cowsay
  ];

    shellHook = ''
        # creating environment variables
        export PICO_SDK_PATH=${toString ./pico-sdk}
        export PICO_BOARD=pico2
        
        # link neccessary imports
        ln -sf ${toString ./pico-sdk/external/pico_sdk_import.cmake} ${toString ./project/pico_sdk_import.cmake}

        cowsay "Welcome to your pico development enviroment using nix!"
    '';
}

