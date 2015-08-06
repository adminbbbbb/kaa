#
# Copyright 2014 CyberVision, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include(CMakeForceCompiler)

#change this to path where you've installed xtensa toolchain
set(ESP_TOOLCHAIN_BASE /opt/Espressif/crosstool-NG/builds/xtensa-lx106-elf/bin)

set (ESP_SDK_BASE /opt/Espressif/esp-rtos-sdk)

CMAKE_FORCE_C_COMPILER(${ESP_TOOLCHAIN_BASE}/xtensa-lx106-elf-gcc GNU)

set(CMAKE_LIBRARY_PATH ${ESP_SDK_BASE}/lib/)

set(ESP8266_INCDIRS 
    ${ESP_SDK_BASE}/extra_include ${ESP_SDK_BASE}/include
    ${ESP_SDK_BASE}/include/lwip ${ESP_SDK_BASE}/include/lwip/ipv4
    ${ESP_SDK_BASE}/include/lwip/ipv6 ${ESP_SDK_BASE}/include/espressif/
    ${ESP_TOOLCHAIN_BASE}/../lib/gcc/xtensa-lx106-elf/4.8.2/include/
    )

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-implicit-function-declaration -Os -Wpointer-arith  -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -ffunction-sections")

