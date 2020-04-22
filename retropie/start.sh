#!/bin/bash
sudo chmod -R a+rw /dev/input/*
sudo chmod -R a+rw /dev/snd/*
HOME=/opt/retropie /usr/bin/emulationstation
