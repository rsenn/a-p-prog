#!/bin/bash
ME=$0
MYDIR=`dirname "$ME"`

ARDUINO_DIR=$(dirname $(realpath $(which arduino)))

$HOME/.arduino15/packages/arduino/tools/avrdude/6.3.0-arduino17/bin/avrdude \
  -C$HOME/.arduino15/packages/arduino/tools/avrdude/6.3.0-arduino17/etc/avrdude.conf \
  -v \
  -q \
  -patmega328p \
  -carduino \
  -P/dev/ttyACM0 \
  -b115200 \
  -D \
  -Uflash:w:"$1":i

echo exitcode: $?
