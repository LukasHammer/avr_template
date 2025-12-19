# avr_template - An CMake avr project template

This project serves as a starting point for building AVR microcontroller firmware using a modern CMake-based workflow. It provides a clean structure and convenient integration with toolchains and flashing utilities.

## Features
- **CMake-based build system** for organized and scalable project structure.
- **Configurable AVR toolchain** with customizable MCU, clock frequency, and optimization settings.
- **Support for multiple build types** (Debug/Release).
- **Automatic generation of HEX/ELF** binary outputs.
- **Optional flashing targets** using tools such as `avrdude`.

## Requirements
To install all dependencies, run the install-dependencies script under the bin directory.


## Project Structure
```
project-root/
├─ .vscode
|  └─ tasks.json                # Defines vscode tasks for certain flash utilities
├─ bin
|  └─ install-dependencies      # Script to install build and avr dependencies
├─ cmake/                       # Helper CMake modules
|  └─ avr-gcc.cmake             # Toolchain file
├─ src/                         # Application source files
├─ include/                     # Header files
├─ .gitignore
├─ CHANGELOG.md
├─ CMakeLists.txt               # Top level CMakeLists.txt
├─ CMakePresets.json            # CMakePresets file for defining build presets
├─ LICENSE
├─ readme.md
└─ sources.cmake                # source.cmake file to set source and include files
```

## Configuration

### Selecting the MCU
Edit your MCU and clock in the CMakePresets.json:
```
"AVR_MCU": "atmega16",
"F_CPU": "12000000UL"
```

### CMake Presets
This project supports convenient presets for common AVR build types:

- `avr-debug` — equivalent to `-DCMAKE_BUILD_TYPE=Debug`
- `avr-release` — equivalent to `-DCMAKE_BUILD_TYPE=Release`

To configure using presets:
```bash
cmake --preset avr-debug
cmake --preset avr-release
```

## Building

### Building with Presets
From the project root:
```bash
cmake --preset avr-debug
cmake --build build/avr-debug
```
Or for release:
```bash
cmake --preset avr-release
cmake --build build/avr-release
```
Generated artifacts (e.g., `.hex`, `.elf`) will appear in the corresponding preset's build directory.

## License
MIT

## Author
Lukas Hammer
