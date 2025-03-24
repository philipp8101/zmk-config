{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    systems.url = "github:nix-systems/default";
    flake-utils.url = "github:numtide/flake-utils";
    flake-utils.inputs.systems.follows = "systems";

    zmk-nix = {
      url = "github:lilyinstarlight/zmk-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zmk.url = "github:zmkfirmware/zmk?ref=main";
    zmk.flake = false;
    zephyr.url = "github:zmkfirmware/zephyr?ref=v3.5.0+zmk-fixes";
    zephyr.flake = false;
    nanopb.url = "github:zmkfirmware/nanopb?ref=8c60555d6277a0360c876bd85d491fc4fb0cd74a";
    nanopb.flake = false;
    zmk-studio-messages.url = "github:zmkfirmware/zmk-studio-messages?ref=6cb4c283e76209d59c45fbcb218800cd19e9339d";
    zmk-studio-messages.flake = false;
    acpica.url = "github:zephyrproject-rtos/acpica?ref=0333c2af13179f9b33d495cf7cb9a509f751cbb1";
    acpica.flake = false;
    canopennode.url = "github:zephyrproject-rtos/canopennode?ref=dec12fa3f0d790cafa8414a4c2930ea71ab72ffd";
    canopennode.flake = false;
    cmsis.url = "github:zephyrproject-rtos/cmsis?ref=5a00331455dd74e31e80efa383a489faea0590e3";
    cmsis.flake = false;
    cmsis-dsp.url = "github:zephyrproject-rtos/cmsis-dsp?ref=ff7b5fd1ea5f094665c090c343ec44e74dc0b193";
    cmsis-dsp.flake = false;
    cmsis-nn.url = "github:zephyrproject-rtos/cmsis-nn?ref=0c8669d81381ccf3b1a01d699f3b68b50134a99f";
    cmsis-nn.flake = false;
    fatfs.url = "github:zephyrproject-rtos/fatfs?ref=427159bf95ea49b7680facffaa29ad506b42709b";
    fatfs.flake = false;
    hal_ambiq.url = "github:zephyrproject-rtos/hal_ambiq?ref=0a7c99325aa73a1ef777501da91c2c6608661e56";
    hal_ambiq.flake = false;
    hal_atmel.url = "github:zephyrproject-rtos/hal_atmel?ref=5ab43007eda3f380c125f957f03638d2e8d1144d";
    hal_atmel.flake = false;
    hal_espressif.url = "github:zephyrproject-rtos/hal_espressif?ref=31fc5758f3507f8f0af00b1dea1a0df7af99bfc0";
    hal_espressif.flake = false;
    hal_ethos_u.url = "github:zephyrproject-rtos/hal_ethos_u?ref=90ada2ea5681b2a2722a10d2898eac34c2510791";
    hal_ethos_u.flake = false;
    hal_gigadevice.url = "github:zephyrproject-rtos/hal_gigadevice?ref=2994b7dde8b0b0fa9b9c0ccb13474b6a486cddc3";
    hal_gigadevice.flake = false;
    hal_intel.url = "github:zephyrproject-rtos/hal_intel?ref=b3b43d4e3da7ba483611bbbea7ef8af92c69df31";
    hal_intel.flake = false;
    hal_nordic.url = "github:zephyrproject-rtos/hal_nordic?ref=d054a315eb888ba70e09e5f6decd4097b0276d1f";
    hal_nordic.flake = false;
    hal_nuvoton.url = "github:zephyrproject-rtos/hal_nuvoton?ref=3e0a4c4d3328b2f72b164219add19d5308b53cb5";
    hal_nuvoton.flake = false;
    hal_quicklogic.url = "github:zephyrproject-rtos/hal_quicklogic?ref=b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0";
    hal_quicklogic.flake = false;
    hal_renesas.url = "github:zephyrproject-rtos/hal_renesas?ref=a6cf2af9140e014fbbc48d2b6deb802231dd369f";
    hal_renesas.flake = false;
    hal_rpi_pico.url = "github:zephyrproject-rtos/hal_rpi_pico?ref=fba7162cc7bee06d0149622bbcaac4e41062d368";
    hal_rpi_pico.flake = false;
    hal_stm32.url = "github:zephyrproject-rtos/hal_stm32?ref=89ef0a3383edebf661073073bcdf6e2836fe90ee";
    hal_stm32.flake = false;
    hal_telink.url = "github:zephyrproject-rtos/hal_telink?ref=38573af589173259801ae6c2b34b7d4c9e626746";
    hal_telink.flake = false;
    hal_wurthelektronik.url = "github:zephyrproject-rtos/hal_wurthelektronik?ref=24ca9873c3d608fad1fea0431836bc8f144c132e";
    hal_wurthelektronik.flake = false;
    libmetal.url = "github:zephyrproject-rtos/libmetal?ref=b91611a6f47dd29fb24c46e5621e797557f80ec6";
    libmetal.flake = false;
    liblc3.url = "github:zephyrproject-rtos/liblc3?ref=448f3de31f49a838988a162ef1e23a89ddf2d2ed";
    liblc3.flake = false;
    littlefs.url = "github:zephyrproject-rtos/littlefs?ref=ca583fd297ceb48bced3c2548600dc615d67af24";
    littlefs.flake = false;
    lvgl.url = "github:zephyrproject-rtos/lvgl?ref=8a6a2d1d29d17d1e4bdc94c243c146a39d635fdd";
    lvgl.flake = false;
    mbedtls.url = "github:zephyrproject-rtos/mbedtls?ref=c38dc78d9a8dcbe43b898cc1171ab33ba3e6fc26";
    mbedtls.flake = false;
    mipi-sys-t.url = "github:zephyrproject-rtos/mipi-sys-t?ref=a819419603a2dfcb47f7f39092e1bc112e45d1ef";
    mipi-sys-t.flake = false;
    nrf_hw_models.url = "github:zephyrproject-rtos/nrf_hw_models?ref=f4595802d32d103718bf50b3d390b7a450895843";
    nrf_hw_models.flake = false;
    open-amp.url = "github:zephyrproject-rtos/open-amp?ref=42b7c577714b8f22ce82a901e19c1814af4609a8";
    open-amp.flake = false;
    percepio.url = "github:zephyrproject-rtos/percepio?ref=a3728efccc47dd372f40e6313589ca4c5cc7d5e9";
    percepio.flake = false;
    picolibc.url = "github:zephyrproject-rtos/picolibc?ref=d07c38ff051386f8e09a143ea0a6c1d6d66dd1d8";
    picolibc.flake = false;
    segger.url = "github:zephyrproject-rtos/segger?ref=9d0191285956cef43daf411edc2f1a7788346def";
    segger.flake = false;
    tinycrypt.url = "github:zephyrproject-rtos/tinycrypt?ref=3e9a49d2672ec01435ffbf0d788db6d95ef28de0";
    tinycrypt.flake = false;
    trusted-firmware-a.url = "github:zephyrproject-rtos/trusted-firmware-a?ref=421dc050278287839f5c70019bd6aec617f2bbdb";
    trusted-firmware-a.flake = false;
    uoscore-uedhoc.url = "github:zephyrproject-rtos/uoscore-uedhoc?ref=5fe2cb613bd7e4590bd1b00c2adf181ac0229379";
    uoscore-uedhoc.flake = false;
    zcbor.url = "github:zephyrproject-rtos/zcbor?ref=67fd8bb88d3136738661fa8bb5f9989103f4599e";
    zcbor.flake = false;
  };

  outputs = { self, nixpkgs, flake-utils, zmk-nix, ... }@inputs: flake-utils.lib.eachDefaultSystem (system: let
    pkgs = nixpkgs.legacyPackages.${system};
    buildZmk = pkgs.callPackage ./builder.nix {};
    src = nixpkgs.lib.sourceFilesBySuffices self [ ".h" ".board" ".cmake" ".conf" ".defconfig" ".dts" ".dtsi" ".json" ".keymap" ".overlay" ".shield" ".yml" "_defconfig" ];
  in {
    packages = rec {
      zmk-nix-firmware = zmk-nix.legacyPackages.${system}.buildSplitKeyboard {
        name = "firmware";
        inherit src;
        board = "nice_nano_v2";
        shield = "corne_%PART% nice_view_adapter nice_view";
        zephyrDepsHash = "sha256-pnOOC6NDa1VPhW0zB3+B1egtsYlHJ6hc+2FE4YDYVNE=";
      };
      generateInputs = pkgs.callPackage ./generateinputs.nix {} {inherit src;};
      firmware-left = buildZmk {
        name = "firmware-left";
        inherit src;
        westDeps = westDeps;

        board = "nice_nano_v2";
        shield = "corne_%PART% nice_view_adapter nice_view";
      };
      firmware-right = buildZmk {
        name = "firmware-right";
        inherit src;
        westDeps = westDeps;

        board = "nice_nano_v2";
        shield = "corne_right nice_view_adapter nice_view";
      };
      default = pkgs.symlinkJoin { name = "firmware"; paths = [ firmware-left firmware-right ]; };
      flash = pkgs.callPackage ./flash.nix {
        firmware = zmk-nix-firmware;
      };
      westDeps = pkgs.runCommand "westdeps" {} ''
        mkdir -p $(dirname "$out/zmk")
        cp -r "${inputs.zmk}" "$out/zmk" 
        mkdir -p $(dirname "$out/zephyr")
        cp -r "${inputs.zephyr}" "$out/zephyr" 
        mkdir -p $(dirname "$out/modules/lib/nanopb")
        cp -r "${inputs.nanopb}" "$out/modules/lib/nanopb" 
        mkdir -p $(dirname "$out/modules/msgs/zmk-studio-messages")
        cp -r "${inputs.zmk-studio-messages}" "$out/modules/msgs/zmk-studio-messages" 
        mkdir -p $(dirname "$out/modules/lib/acpica")
        cp -r "${inputs.acpica}" "$out/modules/lib/acpica" 
        mkdir -p $(dirname "$out/modules/lib/canopennode")
        cp -r "${inputs.canopennode}" "$out/modules/lib/canopennode" 
        mkdir -p $(dirname "$out/modules/hal/cmsis")
        cp -r "${inputs.cmsis}" "$out/modules/hal/cmsis" 
        mkdir -p $(dirname "$out/modules/lib/cmsis-dsp")
        cp -r "${inputs.cmsis-dsp}" "$out/modules/lib/cmsis-dsp" 
        mkdir -p $(dirname "$out/modules/lib/cmsis-nn")
        cp -r "${inputs.cmsis-nn}" "$out/modules/lib/cmsis-nn" 
        mkdir -p $(dirname "$out/modules/fs/fatfs")
        cp -r "${inputs.fatfs}" "$out/modules/fs/fatfs" 
        mkdir -p $(dirname "$out/modules/hal/ambiq")
        cp -r "${inputs.hal_ambiq}" "$out/modules/hal/ambiq" 
        mkdir -p $(dirname "$out/modules/hal/atmel")
        cp -r "${inputs.hal_atmel}" "$out/modules/hal/atmel" 
        mkdir -p $(dirname "$out/modules/hal/espressif")
        cp -r "${inputs.hal_espressif}" "$out/modules/hal/espressif" 
        mkdir -p $(dirname "$out/modules/hal/ethos_u")
        cp -r "${inputs.hal_ethos_u}" "$out/modules/hal/ethos_u" 
        mkdir -p $(dirname "$out/modules/hal/gigadevice")
        cp -r "${inputs.hal_gigadevice}" "$out/modules/hal/gigadevice" 
        mkdir -p $(dirname "$out/modules/hal/intel")
        cp -r "${inputs.hal_intel}" "$out/modules/hal/intel" 
        mkdir -p $(dirname "$out/modules/hal/nordic")
        cp -r "${inputs.hal_nordic}" "$out/modules/hal/nordic" 
        mkdir -p $(dirname "$out/modules/hal/nuvoton")
        cp -r "${inputs.hal_nuvoton}" "$out/modules/hal/nuvoton" 
        mkdir -p $(dirname "$out/modules/hal/quicklogic")
        cp -r "${inputs.hal_quicklogic}" "$out/modules/hal/quicklogic" 
        mkdir -p $(dirname "$out/modules/hal/renesas")
        cp -r "${inputs.hal_renesas}" "$out/modules/hal/renesas" 
        mkdir -p $(dirname "$out/modules/hal/rpi_pico")
        cp -r "${inputs.hal_rpi_pico}" "$out/modules/hal/rpi_pico" 
        mkdir -p $(dirname "$out/modules/hal/stm32")
        cp -r "${inputs.hal_stm32}" "$out/modules/hal/stm32" 
        mkdir -p $(dirname "$out/modules/hal/telink")
        cp -r "${inputs.hal_telink}" "$out/modules/hal/telink" 
        mkdir -p $(dirname "$out/modules/hal/wurthelektronik")
        cp -r "${inputs.hal_wurthelektronik}" "$out/modules/hal/wurthelektronik" 
        mkdir -p $(dirname "$out/modules/hal/libmetal")
        cp -r "${inputs.libmetal}" "$out/modules/hal/libmetal" 
        mkdir -p $(dirname "$out/modules/lib/liblc3")
        cp -r "${inputs.liblc3}" "$out/modules/lib/liblc3" 
        mkdir -p $(dirname "$out/modules/fs/littlefs")
        cp -r "${inputs.littlefs}" "$out/modules/fs/littlefs" 
        mkdir -p $(dirname "$out/modules/lib/gui/lvgl")
        cp -r "${inputs.lvgl}" "$out/modules/lib/gui/lvgl" 
        mkdir -p $(dirname "$out/modules/crypto/mbedtls")
        cp -r "${inputs.mbedtls}" "$out/modules/crypto/mbedtls" 
        mkdir -p $(dirname "$out/modules/debug/mipi-sys-t")
        cp -r "${inputs.mipi-sys-t}" "$out/modules/debug/mipi-sys-t" 
        mkdir -p $(dirname "$out/modules/bsim_hw_models/nrf_hw_models")
        cp -r "${inputs.nrf_hw_models}" "$out/modules/bsim_hw_models/nrf_hw_models" 
        mkdir -p $(dirname "$out/modules/lib/open-amp")
        cp -r "${inputs.open-amp}" "$out/modules/lib/open-amp" 
        mkdir -p $(dirname "$out/modules/debug/percepio")
        cp -r "${inputs.percepio}" "$out/modules/debug/percepio" 
        mkdir -p $(dirname "$out/modules/lib/picolibc")
        cp -r "${inputs.picolibc}" "$out/modules/lib/picolibc" 
        mkdir -p $(dirname "$out/modules/debug/segger")
        cp -r "${inputs.segger}" "$out/modules/debug/segger" 
        mkdir -p $(dirname "$out/modules/crypto/tinycrypt")
        cp -r "${inputs.tinycrypt}" "$out/modules/crypto/tinycrypt" 
        mkdir -p $(dirname "$out/modules/tee/tf-a/trusted-firmware-a")
        cp -r "${inputs.trusted-firmware-a}" "$out/modules/tee/tf-a/trusted-firmware-a" 
        mkdir -p $(dirname "$out/modules/lib/uoscore-uedhoc")
        cp -r "${inputs.uoscore-uedhoc}" "$out/modules/lib/uoscore-uedhoc" 
        mkdir -p $(dirname "$out/modules/lib/zcbor")
        cp -r "${inputs.zcbor}" "$out/modules/lib/zcbor" 
      '';
    };
  });
}
