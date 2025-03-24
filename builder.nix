{ lib
, stdenv
, cmake
, ninja
, gcc-arm-embedded
, git
, python3
}:

{
  board,
  shield,
  name,
  src,
  westDeps,
} @ args: stdenv.mkDerivation {
  nativeBuildInputs = [
    cmake
    git
    ninja
    python3.pythonOnBuildForHost.pkgs.west
    python3.pythonOnBuildForHost.pkgs.pyelftools
  ];

  inherit src name westDeps;

  env = {
    ZEPHYR_TOOLCHAIN_VARIANT = "gnuarmemb";
    GNUARMEMB_TOOLCHAIN_PATH = gcc-arm-embedded;
  };

  configurePhase = args.configurePhase or ''
    runHook preConfigure

    cp --no-preserve=mode -rt . "$westDeps"/*

    mkdir -p .west
    cat >.west/config <<EOF
    [manifest]
    path = config
    file = west.yml
    EOF

    if zephyrRoot="$(dirname "$(dirname "$(find "$(pwd)" -path '*/share/zephyr-package/cmake' -printf '%h' -quit)")")"; then
      addCMakeParams "$zephyrRoot"
    fi

    zephyr_module=$(for i in $(find -L "$(pwd)" -path "*/zephyr/module.yml" -or -path "*/zephyr/CMakeLists.txt") ; do dirname $(dirname $i) ; done | sort | uniq | paste -sd ';')

    echo zephyr module paths ''${zephyr_module}

    cmake -DWEST_PYTHON=${python3}/bin/python3 -Bbuild -GNinja -DBOARD=${board} '-DSHIELD=${shield}' -DZMK_CONFIG=$src/config -Szmk/app -DBUILD_VERSION=0fa4cc26d8b1e5243570ccc0f7f66c4c428d2961 -DZEPHYR_MODULES=''${zephyr_module}

    cd "build"

    runHook postConfigure
  '';

  installPhase = args.installPhase or ''
    runHook preInstall

    mkdir $out
    cp */*.uf2 $out/${name}.uf2

    runHook postInstall
  '';
}
