#!/bin/bash
# Skrip binaan KindOS yang diperbetulkan

echo "--- Menyegerakkan repositori ---"
git pull origin main

echo "--- Membersihkan binaan lama ---"
sudo lb clean

echo "--- Menjana konfigurasi baru ---"
lb config

echo "--- Memulakan proses binaan ---"
sudo lb build

echo "--- Selesai! Mengemas kini ke GitHub ---"
git add .
git commit -m "Build: Update system configuration and ISO build"
git push
