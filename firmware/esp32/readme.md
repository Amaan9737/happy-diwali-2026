ESP32-S3 Firmware

This directory contains the ESP32-S3 firmware for programming the onboard ForgeFPGA on the Vicharak Shrike-Fi development board.

Hardware

- Development Board: Vicharak Shrike-Fi
- Microcontroller: ESP32-S3FN8
- FPGA: Renesas ForgeFPGA SLG47910V

Source File

"shrike_flash_diwali.ino"

The firmware uses the Vicharak Shrike library to initialize the FPGA interface and load the generated FPGA bitstream.

FPGA Bitstream

Property| Value
FPGA source| "main.v"
Bitstream filename| "diwali_1.bin"
Filesystem| LittleFS

Required Library

- Vicharak Shrike Arduino library

Arduino Sketch Structure

shrike_flash/
├── shrike_flash.ino
└── data/
    └── diwali_1.bin

Firmware

#include "ShrikeFlash.h"

ShrikeFlash shrike;

void setup() {
  shrike.begin();
  shrike.flash("/diwali_1.bin");
}

void loop() {
}

Upload Procedure

1. Generate "diwali_1.bin" from the FPGA Verilog project.
2. Place the bitstream in the Arduino sketch's "data" directory.
3. Upload the LittleFS filesystem.
4. Upload the ESP32-S3 firmware.
5. The Shrike library initializes and programs the FPGA.

References

- "Vicharak Shrike Documentation" (https://vicharak-in.github.io/shrike/)
- "Vicharak Shrike GitHub" (https://github.com/vicharak-in/shrike)

---

Part of Happy Diwali 2026 🪔.