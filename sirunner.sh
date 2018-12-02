#!/bin/bash
#
#
#
# This script is for
# SiDEUS Technologies
# SiDEUS Computers
# SiLOX OS (Liquid Oxygen)
# Copyright 2018 - SiDEUS Technologies - Dwayne Tauzin
#
#
#
# You must be su in order to run this script.
#
in-target cp sudoers /target/etc
in-target cp SiDEUS-SiLOX-OS-SPLASH.png /target/boot/grub
in-target cp lsb-release /target/etc
in-target cp grub /target/etc/default
in-target cp sources.list /target/etc/apt
in-target mkdir /target/home/user/.config
in-target mkdir /target/home/user/.config/autostart
in-target cp Start\ SiLOX\ OS\ Setup.desktop /target/home/user/.config/autostart
in-target chown -R user:user /target/home/user/.config
in-target mkdir /target/home/user/System
in-target mkdir /target/home/user/System/Scripts
in-target cp siboot.sh /target/home/user/System/Sctipts
in-target chown -R user:user /target/home/user/System
in-target cp /target/usr/sbin/update-grub
