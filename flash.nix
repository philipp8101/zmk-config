{ lib
, writeShellApplication
, util-linux
, udisks
, firmware
}:

writeShellApplication {
  name = "zmk-uf2-flash";

  runtimeInputs = [
    util-linux
    udisks
  ];

  text = ''
    available() {
      lsblk -Sno path,model | grep -F 'nRF UF2' | cut -d' ' -f1
    }

    mounted() {
      findmnt "$device" -no target
    }

    for part in ${firmware}/* ; do
      echo -n "Double tap reset and plug in$([ -n "$part" ] && echo " the '$(basename "$part")' part of") the keyboard via USB"
      while ! device="$(available)"; do
        echo -n .
        sleep 1
      done
      echo

      sleep 1

      udisksctl mount -b "$device"

      if ! mountpoint="$(mounted)"; then
        echo -n "waiting for the mass storage device at $device to be mounted that the firmware file can be copied"
        while ! mountpoint="$(mounted)"; do
          echo -n .
          sleep 1
        done
      fi
      echo

      cp "$part" "$mountpoint"

      echo "Firmware copy complete."

      sleep 1

      udisksctl mount -b "$device" 2> /dev/null || true

      if mounted >/dev/null && available >/dev/null; then
        echo -n "waiting for unmount of mass storage device at $device and disconnect$([ -n "$part" ] && echo " the '$(basename "$part")' part of") the keyboard via USB"
        while mounted >/dev/null && available >/dev/null; do
          echo -n .
          sleep 1
        done
      fi
      echo
    done
  '';

}
