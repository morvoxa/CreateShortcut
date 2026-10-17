# 🚀 CreateShortcut

**CreateShortcut** is a lightweight, high-performance Linux desktop utility built with C and GTK 3 to instantly create and manage `.desktop` files (XDG Application Launchers), with full support for both Wayland and X11.

---

## ✨ Key Features

*   **🛠️ Create Tab:** Easily create new shortcuts using custom names, commands, or the built-in *File Picker*.
*   **📂 Manage Tab:** Automatically scans `~/.local/share/applications/` and provides safe removal options.
*   **⚙️ System Integration:** Automatically categorized as `Utility` and instantly indexed by modern *app launchers* (`rofi`, `wofi`, `fuzzel`, etc.).

---

## 📸 Screenshots

| Create Shortcut Tab | Manage Shortcuts Tab |
| :---: | :---: |
| ![Tab Create](img/Screenshot%20from%202026-10-17%2015-45-39.png) | ![Tab Manage](img/Screenshot%20from%202026-10-17%2015-45-50.png) |

---

## 📦 Dependencies & Installation

Requires `gcc`, `pkg-config`, and `gtk+-3.0`.

| Linux Distribution | Installation Command |
| :--- | :--- |
| **Ubuntu / Debian / Mint** | `sudo apt install build-essential pkg-config libgtk-3-dev` |
| **Fedora** | `sudo dnf groupinstall "Development Tools" && sudo dnf install gtk3-devel` |
| **Arch Linux** | `sudo pacman -S base-devel gtk3` |

### Build & Install (Rootless / No Sudo)
```bash
make install

Running `make install` automatically handles two steps:
1. Copies the `CreateShortcut` executable binary directly into **`~/.local/bin/`**. Make sure this path is included in your system's `$PATH` environment variable (add `export PATH="$HOME/.local/bin:$PATH"` to your `~/.bashrc` or `~/.zshrc` if command-line execution isn't detected).
2. Copies `CreateShortcut.desktop` to **`~/.local/share/applications/`** so the application instantly appears and can be launched from your favorite app launcher (`rofi`, `wofi`, `fuzzel`, `xfce4-appfinder`, etc.).

> 💡 **Recommended**: Ensure `~/.local/bin` is in your `$PATH` so you can launch the binary seamlessly from anywhere!
