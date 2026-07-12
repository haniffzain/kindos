#!/bin/bash
# Skrip untuk membina KindOS dan kemaskini ke GitHub

echo "--- Memulakan proses binaan KindOS ---"
sudo lb clean
sudo lb build

echo "--- Binaan selesai! Mengemas kini ke GitHub ---"
git add .
git commit -m "Build: Update system configuration and ISO build"
git push
