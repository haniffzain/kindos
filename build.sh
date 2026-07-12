#!/bin/bash
# Skrip untuk membina KindOS dengan konfigurasi yang sentiasa dikemaskini

echo "--- Menyegerakkan repositori ---"
git pull origin main

echo "--- Menjana semula konfigurasi ---"
lb config

echo "--- Memulakan proses binaan KindOS ---"
sudo lb clean
sudo lb build

echo "--- Binaan selesai! Mengemas kini ke GitHub ---"
git add .
git commit -m "Build: Update system configuration and ISO build"
git push
