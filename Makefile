# Makefile for esphome
#
# source venv/bin/activate
#
# in vars.mak usually some or all of the following variables are defined
#    FQBN
#    IOT_NAME
#    OTA_PORT
#    OTA_PASS
#    SERIAL_DEV
-include vars.mak

# ----- setup wor ESP32 NodeMCU -----
#FQBN        ?= esp32:esp32:esp32


all: compile run
.PHONY: run

compile:
	@esphome compile esp32-livingroom.yaml

run:
	@esphome run esp32-livingroom.yaml
