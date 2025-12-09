#!/bin/bash

INPUT_DIR="input"
OUTPUT_DIR="output"
mkdir -p "$OUTPUT_DIR"

spinner=("⬆️" "↗️" "➡️" "↘️" "⬇️" "↙️" "⬅️" "↖️")   # animasi spinner

echo ""

for input in "$INPUT_DIR"/*; do
    filename=$(basename -- "$input")
    out="$OUTPUT_DIR/$filename"

    echo -e "♻️  Memproses : $filename"

    # Ambil durasi video (detik)
    duration=$(ffprobe -v error -select_streams v:0 -show_entries format=duration \
        -of default=nokey=1:noprint_wrappers=1 "$input")

    # Jalankan FFmpeg + progress parser
    ffmpeg -y -i "$input" \
        -map 0:v:0 -map 0:a:0? \
        -vf "
            scale=iw*1.015:ih*1.015,
            crop=iw:ih,
            eq=gamma=0.03:contrast=1.02:brightness=0.01:saturation=0.03,
            unsharp=3:3:0.3,
            noise=alls=1:allf=t+u,
            format=yuv420p
        " \
        -c:v libx264 -crf 19 -preset medium \
        -c:a aac -b:a 192k \
        -progress - -nostats "$out" 2>/dev/null |
    while IFS='=' read -r key val; do
        if [[ $key == "out_time_ms" ]]; then
            progress=$(echo "$val / 1000000" | bc)  # detik
            percent=$(printf "%.1f" "$(echo "$progress / $duration * 100" | bc -l)")

            # ETA
            if [[ $(echo "$percent > 0" | bc) -eq 1 ]]; then
                remaining=$(printf "%.0f" "$(echo "($duration - $progress)" | bc)")
                eta=$(printf "%02d:%02d" "$(($remaining/60))" "$(($remaining%60))")
            else
                eta="--:--"
            fi

            # Spinner animasi
            i=$(( (i+1) % 4 ))
            echo -ne "${spinner[$i]}  $eta\r"
        fi
    done

    echo -e "\n✅ $filename telah menjadi unique dan original siap upload💎"
    echo "☕ Jika merasa terbantu, boleh beliin saya kopi via saweria.co/hendynoize"
done

echo "Semua video selesai, hasil di folder 🗂️$OUTPUT_DIR"
