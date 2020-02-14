// This file is released under the 3-clause BSD license. See COPYING-BSD.

function buildmacros()
  macros_path = get_absolute_file_path("buildmacros.sce");
  tbx_build_macros(TOOLBOX_NAME, macros_path);
  blocks = [
           "ARDUINO_ANALOG_READ" "ARDUINO_ANALOG_WRITE" "ARDUINO_DCMOTOR" ...
           "ARDUINO_DIGITAL_READ" "ARDUINO_DIGITAL_WRITE" "ARDUINO_ENCODER" ...
           "ARDUINO_SERVO_READ" "ARDUINO_SERVO_WRITE" "ARDUINO_SETUP" ...
           "ARDUINO_STEPPER"  "ARDUINO_INTERRUPT"...
           "TIME_SAMPLE" "ARDUINO_MPU6050_READ" "ARDUINO_SETUP" ...
           "ANALOG_READ_SB" "ANALOG_WRITE_SB" "DCMOTOR_SB" ...
           "DIGITAL_READ_SB" "DIGITAL_WRITE_SB" "ENCODER_SB" ...
           "SERVO_READ_SB" "SERVO_WRITE_SB" "STEPPER_SB"  "INTERRUPT_SB" ...
           "MPU6050_READ_SB" ...
           "ARDUINO_SCOPE"
           ];
  toolbox_dir = macros_path + "..\"
  tbx_build_blocks(toolbox_dir, blocks);

endfunction

buildmacros();
clear buildmacros; // remove buildmacros on stack

