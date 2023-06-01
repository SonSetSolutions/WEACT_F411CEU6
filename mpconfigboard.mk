MCU_SERIES = f4
CMSIS_MCU = STM32F411xE
AF_FILE = boards/stm32f411_af.csv
LD_FILES = boards/stm32f411.ld boards/common_ifs.ld
TEXT0_ADDR = 0x08000000
TEXT1_ADDR = 0x08020000

# Don't include default frozen modules because MCU is tight on flash space
FROZEN_MANIFEST ?= 

# LTO reduces final binary size, may be slower to build depending on gcc version and hardware
LTO ?= 1