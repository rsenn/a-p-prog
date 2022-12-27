#!/bin/bash
ME=$0
MYDIR=`dirname "$ME"`

ARDUINO_DIR=$(dirname $(realpath $(which arduino)))

$ARDUINO_DIR/arduino-builder \
  -compile \
  -verbose \
  -logger=machine \
  -hardware $ARDUINO_DIR/hardware \
  -hardware $HOME/.arduino15/packages \
  -tools $ARDUINO_DIR/tools-builder \
  -tools $ARDUINO_DIR/hardware/tools/avr \
  -tools $HOME/.arduino15/packages \
  -built-in-libraries $ARDUINO_DIR/libraries \
  -libraries $HOME/Arduino/libraries \
  -fqbn=arduino:avr:uno \
  -vid-pid=2341_0001 \
  -ide-version=10819 \
  -build-path /tmp/arduino_build_152297 \
  -warnings=default \
  -build-cache /tmp/arduino_cache_174585 \
  -prefs=build.warn_data_percentage=75 \
  -prefs=runtime.tools.avrdude.path=$HOME/.arduino15/packages/arduino/tools/avrdude/6.3.0-arduino17 \
  -prefs=runtime.tools.avrdude-6.3.0-arduino17.path=$HOME/.arduino15/packages/arduino/tools/avrdude/6.3.0-arduino17 \
  -prefs=runtime.tools.avr-gcc.path=$HOME/.arduino15/packages/arduino/tools/avr-gcc/7.3.0-atmel3.6.1-arduino7 \
  -prefs=runtime.tools.avr-gcc-7.3.0-atmel3.6.1-arduino7.path=$HOME/.arduino15/packages/arduino/tools/avr-gcc/7.3.0-atmel3.6.1-arduino7 \
  -prefs=runtime.tools.arduinoOTA.path=$HOME/.arduino15/packages/arduino/tools/arduinoOTA/1.3.0 \
  -prefs=runtime.tools.arduinoOTA-1.3.0.path=$HOME/.arduino15/packages/arduino/tools/arduinoOTA/1.3.0 \
  $MYDIR/fw/pp/pp.ino 
echo exitcode: $?
