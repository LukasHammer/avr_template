set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR avr)

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(AVR_MCU "atmega16" CACHE STRING "AVR MCU")
set(F_CPU "12000000UL" CACHE STRING "CPU frequency")

message(STATUS "AVR MCU: ${AVR_MCU}")
message(STATUS "CPU Frequency: ${F_CPU}")

set(AVR_PREFIX /usr/bin/avr-)
set(CMAKE_C_COMPILER ${AVR_PREFIX}gcc)
set(CMAKE_AR         ${AVR_PREFIX}ar)
set(CMAKE_RANLIB     ${AVR_PREFIX}ranlib)
set(CMAKE_OBJCOPY    ${AVR_PREFIX}objcopy)
set(SIZE             ${AVR_PREFIX}size)

set(CMAKE_C_FLAGS_INIT "-mmcu=${AVR_MCU} -DF_CPU=${F_CPU} -Os -ffunction-sections -fdata-sections -Wall -Wextra")
set(CMAKE_EXE_LINKER_FLAGS_INIT "-Wl,--gc-sections")