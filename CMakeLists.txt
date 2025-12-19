cmake_minimum_required(VERSION 3.20)
project(avr_template C ASM)

include(sources.cmake)

add_executable(app ${SOURCES} ${HEADERS} ${ASSEMBLY_SOURCES})

add_custom_command(TARGET app POST_BUILD
  COMMAND ${CMAKE_OBJCOPY} -O ihex -R .eeprom app app.hex
  COMMENT "Generating HEX"
)



