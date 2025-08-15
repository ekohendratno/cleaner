#!/bin/bash
# Installer Auto Cleaner Cache dari GitHub

GITHUB_RAW="https://raw.githubusercontent.com/ekohendratno/cleaner/main"

# Download script utama
sudo curl -o /usr/local/bin/auto-cleaner.sh $GITHUB_RAW/auto-cleaner.sh
sudo chmod +x /usr/local/bin/auto-cleaner.sh

# Download service file
sudo curl -o /etc/systemd/system/auto-cleaner.service $GITHUB_RAW/auto-cleaner.service

# Download timer file
sudo curl -o /etc/systemd/system/auto-cleaner.timer $GITHUB_RAW/auto-cleaner.timer

# Reload systemd
sudo systemctl daemon-reload

# Aktifkan timer
sudo systemctl enable --now auto-cleaner.timer

echo "✅ Auto Cleaner berhasil diinstal dan dijalankan tiap jam."
