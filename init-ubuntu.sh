#!/bin/bash
# Script: init-ubuntu.sh
# Purpose: Basic setup for new Ubuntu-based systems

set -e

echo "[+] Updating and upgrading system..."
sudo apt-get update && sudo apt-get full-upgrade -y

echo "[+] Installing common tools..."
sudo apt-get install -y \
  open-vm-tools \
  git \
  build-essential \
  net-tools \
  ethtool \
  curl \
  wget \
  vim \
  htop \
  unzip \
  gnupg \
  ca-certificates \
  software-properties-common \
  lsb-release \
  neofetch

echo "[+] Cleaning up..."
sudo apt-get autoremove -y && sudo apt-get clean

echo "[✓] Ubuntu system is ready!"
