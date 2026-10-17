# CreateShortcut

Utilitas ringan dan cepat berbasis **C dan GTK 3** untuk membuat serta mengelola file `.desktop` (XDG application launcher) secara instan di Linux. Dirancang khusus untuk performa tinggi, tanpa *overhead* berat, dan berjalan mulus di lingkungan Wayland maupun X11.

---

## Fitur Utama

- **Tab Create**: Membuat shortcut baru dengan mudah melalui input *Name* dan *Command*, dilengkapi tombol *File Picker* (`Open`) untuk memilih *executable* secara langsung.
- **Tab Manage**: Memindai direktori `~/.local/share/applications/` secara otomatis untuk melihat daftar shortcut yang ada sekaligus menyediakan tombol *Delete* untuk menghapusnya (secara aman mengecualikan aplikasi ini sendiri).
- **Integrasi Sistem**: Otomatis mendaftarkan kategori aplikasi (`Utility`) agar langsung terindeks oleh *app launcher* seperti `xfce4-appfinder`, `rofi`, `wofi`, atau `fuzzel`.

---

## Dependensi

Sebelum melakukan *compile*, pastikan sistemmu sudah terinstal:
- `gcc` (GNU Compiler Collection)
- `pkg-config`
- `gtk+-3.0` (Development libraries)

---

## Cara Instalasi & Build

Proyek ini dilengkapi dengan `Makefile` untuk memudahkan kompilasi dan instalasi otomatis ke direktori lokal (`~/.local/`).

1. Clone atau simpan seluruh file proyek ke dalam satu folder.
2. Jalankan perintah berikut untuk meng-compile dan menginstalnya ke sistem:
   ```bash
   make install
