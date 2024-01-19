#!/bin/bash
# this script gets a number from "fortune_file_number" file to specify the exact
# fortune file. otherwise it considers the entire fortune directory
#

number='^[0-9]*$'
fortune_data_directory="${HOME}/.i3/conky/conky_quran/quran_fortune/"
python_script="${HOME}/.i3/conky/conky_quran/reshape_arabic.py"
fortune_file_number="$(dirname "$0")/fortune_file_number"

arg=$(cat $fortune_file_number 2>/dev/null)
if [[ "$arg" =~ $number ]]
then
	fortune_file=$(ls "$fortune_data_directory" | sed -n "/^$arg-/p" | head -1)
else
	fortune_file=""
fi

arabic_text="$(fortune "$fortune_data_directory/$fortune_file" )"
source "${HOME}/bin/venv/bin/activate"

reshaped_arabic_text=$(python "$python_script" "$arabic_text" )
printf '%s' "$reshaped_arabic_text"
