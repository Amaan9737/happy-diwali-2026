Firmware

This directory contains the firmware and programmable logic source code for Happy Diwali 2026.

The project uses an ESP32-S3 microcontroller and a Renesas ForgeFPGA to generate and control a diya-inspired LED flickering effect.

Directory Structure

firmware/
│
├── README.md
│
├── esp32/
│   ├── README.md
│   └── shrike_flash.ino
│
└── fpga/
    ├── README.md
    └── main.v

1. ESP32-S3 Firmware

Location: ""esp32/"" (esp32/)

Contains the Arduino firmware for the Vicharak Shrike-Fi development board.

Main responsibilities:

- Initialize the Shrike FPGA interface.
- Load the generated FPGA bitstream from LittleFS.
- Program the onboard ForgeFPGA.

Bitstream filename: "diwali_1.bin"

2. FPGA Firmware

Location: ""fpga/"" (fpga/)

Contains the Verilog HDL source code for the LED lighting effect.

Main responsibilities:

- Generate PWM signals.
- Control LED brightness.
- Produce the repeating Diwali-inspired lighting sequence.

Main source file: "main.v"

Hardware Platform

- Vicharak Shrike-Fi
- ESP32-S3FN8
- Renesas ForgeFPGA SLG47910V
- BC337 NPN transistor LED driver

Development Tools

- Arduino IDE
- Verilog HDL
- ForgeFPGA development tools
- Vicharak Shrike library

---

Part of Happy Diwali 2026 🪔.