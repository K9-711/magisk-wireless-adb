# Magisk Wireless ADB

This Magisk module enables **ADB over Wi-Fi (port 5555)** automatically at boot, using a `post-fs-data.sh` script.

## 📦 Features

- Enables ADB over TCP/IP
- Auto-starts `adbd` on port 5555 after boot
- Works on AOSP-based ROMs like SlingboxTV (tested on X88 Pro 5XM)

## 🚀 Installation

1. Clone or download this repo
2. Zip the contents (not the folder):
   - `module.prop`
   - `post-fs-data.sh`
3. Flash the `.zip` in **Magisk Manager**
4. Reboot
5. Connect with:

```bash
adb connect <your-tv-box-ip>:5555
