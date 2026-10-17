# 🚀 CreateShortcut

**CreateShortcut** adalah utilitas desktop Linux ringan berbasis C dan GTK 3 untuk membuat dan mengelola file `.desktop` (XDG Application Launcher) secara instan, serta mendukung Wayland dan X11.

---

## ✨ Fitur Utama

*   **🛠️ Tab Create:** Membuat *shortcut* baru via nama, perintah, atau *File Picker*.
*   **📂 Tab Manage:** Memindai `~/.local/share/applications/` dan menyediakan opsi hapus yang aman.
*   **⚙️ Integrasi Sistem:** Otomatis berkategori `Utility` dan terindeks di *app launcher* (`rofi`, `wofi`, dll).

---

## 📦 Dependensi & Instalasi

Membutuhkan `gcc`, `pkg-config`, dan `gtk+-3.0`.

| Distro Linux | Perintah Instalasi |
| :--- | :--- |
| **Ubuntu / Debian / Mint** | `sudo apt install build-essential pkg-config libgtk-3-dev` |
| **Fedora** | `sudo dnf groupinstall "Development Tools" && sudo dnf install gtk3-devel` |
| **Arch Linux** | `sudo pacman -S base-devel gtk3` |

### Build & Install (Tanpa Sudo)
```bash
make install
```
> ⚠️ **Catatan `$PATH`**: Pastikan `~/.local/bin` terdaftar di `$PATH` Anda (tambahkan `export PATH="$HOME/.local/bin:$PATH"` ke `~/.bashrc` atau `~/.zshrc` jika aplikasi tidak terdeteksi).

---
