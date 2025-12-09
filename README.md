
# 🎬 Video Uniquifier Script  
**Membuat video menjadi unik, berbeda & original tanpa merusak kualitas.**  
Script ini membantu kreator konten yang ingin meng-upload video yang sama ke beberapa platform seperti **TikTok**, **YouTube Shorts**, **Instagram Reels**, atau platform lain tanpa terkena deteksi **konten duplikat**.

---

## ✨ Kenapa Script Ini Dibuat?

Beberapa platform membatasi pengunggahan ulang video yang dianggap sama atau pernah dipublikasikan sebelumnya.  
Tujuan script ini adalah:

- 🔹 Membuat video tampak **berbeda** namun tetap **natural & tidak ekstrim**.  
- 🔹 Menerapkan perubahan ringan seperti scaling halus, crop minimal, color grading ringan, gamma, sharpening, noise halus, overlay, dan stabilitas warna.  
- 🔹 Tetap mempertahankan **resolusi dan aspect ratio sesuai video asli**.  
- 🔹 Memberikan proses otomatis untuk banyak file sekaligus.  
- 🔹 Menampilkan progress bar + ETA saat memproses video.

Script ini **bukan** untuk manipulasi konten atau menyalahgunakan sistem, hanya memodifikasi video agar tidak dianggap duplikat oleh platform secaraotomatis.

---

## 📁 Struktur Folder

```

📂 input      ← tempat meletakkan video asli (xxx.mp4, xxx.mp4, dst)
📂 output     ← otomatis terbuat untuk letak hasil video
📋 Uniquifer.sh  ← script utama

````

---

## 🛠️ Instalasi

### 1. **Install FFmpeg**

#### ▸ Ubuntu / Debian  
```bash
sudo apt update
sudo apt install ffmpeg
````

#### ▸ CentOS / RHEL

```bash
sudo yum install epel-release -y
sudo yum install ffmpeg -y
```

#### ▸ Fedora

```bash
sudo dnf install ffmpeg
```

#### ▸ Arch / Manjaro

```bash
sudo pacman -S ffmpeg
```

#### ▸ macOS (Homebrew)

```bash
brew install ffmpeg
```

#### ▸ Windows

* Download via: [https://ffmpeg.org/download.html](https://ffmpeg.org/download.html)
* Tambahkan ke PATH environment variables.

---

## ▶️ Cara Menggunakan

### 1. Pastikan script memiliki permission:

```bash
chmod +x Uniquifer.sh
```

### 2. Buat folder bernama "input" dan masukkan semua video ke folder tersebut:

```
input/
   ├── xxx.mp4
   ├── xxx.mp4
   └── dst...
```

### 3. Jalankan script:

```bash
./Uniquifer.sh
```

### 4. Hasil otomatis berada di folder "output":

```
output/
   ├── xxx.mp4
   ├── xxx.mp4
```

---

## 🔧 Fitur Script

* 🚀 Auto proses seluruh file di folder input
* ♻ Output file dengan nama sama
* 🎨 Efek lembut & natural:

  * mild zoom-in
  * crop minimal
  * stabilitas warna
  * light sharpening
  * sedikit modifikasi gamma
  * mild noise texture
* 📊 Progress bar + persentase + ETA
* 🌈 Deteksi audio opsional
* 🔇 Tanpa log spam — terminal bersih
* ⚡ Cepat dan aman

---

## 📜 Lisensi

Script ini dirilis dengan lisensi **MIT**.

```
MIT License

Copyright (c) 2025 Hendy

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

## 💛 Dukung Pengembangan

Jika script ini bermanfaat untuk workflow Anda, Anda bisa memberikan apresiasi melalui:

[![Donate Saweria](https://img.shields.io/badge/Donate-Saweria-orange?style=for-the-badge\&logo=github-sponsors)](https://saweria.co/hendynoize)

Link langsung: **[https://saweria.co/hendynoize](https://saweria.co/hendynoize)**

Donasi Anda membantu saya untuk terus mengembangkan script & tool gratis seperti ini.

---

## 🤝 Kontribusi

Pull Request terbuka untuk:

* Penambahan preset grading
* Integrasi GUI
* Multi-thread optimization
* dukungan batch folder bertingkat
* preset AI-friendly video transforms

Silakan submit PR jika ingin membantu ❤️

---

## 📬 Kontak

Untuk request custom script atau konsultasi teknis:
**Telegram:** [hendygital](https://t.me/hendygital)
**GitHub Issues:** langsung buka issue di repo Anda.

---

