# 🎬 Video Uniquifier Script

**Make your videos unique, different & original — without harming quality.**
This script helps content creators who want to upload the same video to multiple platforms such as **TikTok**, **YouTube Shorts**, **Instagram Reels**, etc., without triggering **duplicate content detection**.

---

## ✨ Why This Script Was Created

Many platforms restrict re-uploads of videos that appear identical or have been published before.
This script aims to:

* 🔹 Make videos look **slightly different** while staying **natural & non-destructive**
* 🔹 Apply light modifications such as:

  * mild scaling
  * minimal crop
  * subtle color grading
  * gamma & brightness tuning
  * mild sharpening
  * soft noise texture
  * micro-stabilized color shift
* 🔹 Preserve original **resolution and aspect ratio**
* 🔹 Provide automated batch processing
* 🔹 Show clean progress log + ETA during processing

This script is **not** for manipulating content or abusing platform systems — it simply helps avoid automatic duplicate detection.

---

## 📁 Folder Structure

```
📂 input        ← place your source videos here (xxx.mp4, etc)
📂 output       ← automatically generated for results
📜 Uniquifier.sh ← the main script
```

---

## 🛠️ Installation

### 1. **Install FFmpeg**

#### ▸ Ubuntu / Debian

```bash
sudo apt update
sudo apt install ffmpeg
```

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

* Download from: [https://ffmpeg.org/download.html](https://ffmpeg.org/download.html)
* Add FFmpeg to your PATH environment variables.

---

## ▶️ How to Use

### 1. Give the script permission:

```bash
chmod +x Uniquifier.sh
```

### 2. Create an **input** folder and place your videos:

```
input/
   ├── video1.mp4
   ├── video2.mp4
   └── ...
```

### 3. Run the script:

```bash
./Uniquifier.sh
```

### 4. Processed videos will be inside:

```
output/
   ├── video1.mp4
   ├── video2.mp4
```

---

## 🔧 Script Features

* 🚀 Automatically processes all files in *input* folder
* ♻ Outputs files using the same filename
* 🎨 Applies subtle natural modifications:

  * soft zoom-in
  * tiny crop
  * stabilized luminance & color
  * light sharpening
  * small gamma shift
  * soft noise layer
* 🕒 Clean ETA display (no messy logs)
* 🌈 Audio detection (optional)
* 🔇 No debug spam — clean terminal
* ⚡ Fast & safe

---

## 📜 License (MIT)

```
MIT License

Copyright (c) 2025 Hendy

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

(… unchanged MIT text …)
```

---

## 💛 Support the Project

If this script improves your workflow, you can support future development here:

[![Donate Saweria](https://img.shields.io/badge/Donate-Saweria-orange?style=for-the-badge\&logo=github-sponsors)](https://saweria.co/hendynoize)

Direct link: **[https://saweria.co/hendynoize](https://saweria.co/hendynoize)**

Every donation helps me keep building free tools like this.

---

## 🤝 Contributing

Pull requests are welcome for:

* Additional grading presets
* GUI interface integration
* Multi-thread optimization
* Nested folder batch support
* AI-friendly video transform presets

Feel free to submit a PR ❤️

---

## 📬 Contact

For custom scripting or technical consultation:

**Telegram:** [https://t.me/hendygital](https://t.me/hendygital)
**GitHub Issues:** Open an issue in your repository.
