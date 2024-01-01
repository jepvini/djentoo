#!/bin/bash

sleep 10
echo 90 | tee /sys/devices/platform/i8042/serio1/sensitivity
