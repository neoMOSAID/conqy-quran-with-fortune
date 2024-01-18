#!/bin/bash
#
fortune_data_directory="${HOME}/.i3/conky/conky_quran/quran_fortune/"
python_script="${HOME}/.i3/conky/conky_quran/reshape_arabic.py"

arabic_text="$(fortune "$fortune_data_directory" )"
source "${HOME}/bin/venv/bin/activate"

reshaped_arabic_text=$(python "$python_script" "$arabic_text" )
printf '%s' "$reshaped_arabic_text"
