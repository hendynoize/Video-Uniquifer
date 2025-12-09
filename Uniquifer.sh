#!/bin/bash

INPUT_DIR="input"
OUTPUT_DIR="output"
mkdir -p "$OUTPUT_DIR"

spinner=("🔄" "🔃" "🌀" "🔁")
i=0

echo ""

for input in "$INPUT_DIR"/*; do
    filename=$(basename -- "$input")
    out="$OUTPUT_DIR/$filename"

    echo -e "🚀 Memproses : $filename"

    # Dapatkan durasi video dalam detik (float)
    duration=$(ffprobe -v error -select_streams v:0 -show_entries format=duration \
        -of default=nokey=1:noprint_wrappers=1 "$input")

    # Pastikan durasi tidak kosong
    if [[ -z "$duration" ]]; then
        echo "❌ Error membaca durasi video!"
        continue
    fi

    ffmpeg -y -i "$input" \
        -map 0:v:0 -map 0:a:0? \
        -vf "
            scale=iw*1.015:ih*1.015,
            crop=iw:ih,
            eq=contrast=1.02:brightness=0.01:saturation=1.03,
            unsharp=3:3:0.3,
            noise=alls=1:allf=t+u,
            format=yuv420p
        " \
        -c:v libx264 -crf 19 -preset medium \
        -c:a aac -b:a 192k \
        -progress - -nostats "$out" 2>/dev/null |

    while IFS='=' read -r key val; do
        if [[ $key == "out_time_ms" ]]; then

            # Hitung progress detik
            progress=$(echo "$val / 1000000" | bc -l)

            # Hitung persentase (float)
            percent=$(echo "scale=1; $progress / $duration * 100" | bc -l)

            # Konversi ke integer untuk progress bar
            percent_int=$(printf "%.0f" "$percent")

            # Hitung ETA
            if [[ $(echo "$percent > 0" | bc) -eq 1 ]]; then
                remaining=$(printf "%.0f" "$(echo "$duration - $progress" | bc)")
                eta=$(printf "%02d:%02d" "$((remaining/60))" "$((remaining%60))")
            else
                eta="--:--"
            fi

            # Spinner
            i=$(( (i+1) % 4 ))

            # Progress bar
            bar_len=20
            filled=$(( percent_int * bar_len / 100 ))
            empty=$(( bar_len - filled ))

            bar=$(printf "%0.s🟩" $(seq 1 $filled))
            bar+=$(printf "%0.s⬜" $(seq 1 $empty))

            echo -ne " ${spinner[$i]} ${percent}% | $bar | ⏳ $eta\r"
        fi
    done

    echo -e "\n✅ $filename selesai\n"
done

echo "🎉 Semua video selesai, hasil di: $OUTPUT_DIR"
