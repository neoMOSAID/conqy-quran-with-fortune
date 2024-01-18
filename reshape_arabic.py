# Install the arabic_reshaper package if you haven't already
# You can install it using: pip install arabic-reshaper
# install bidi using      : pip install python-bidi

import arabic_reshaper
from bidi.algorithm import get_display
import sys

def reshape_and_wrap_arabic_text(text, line_length):
    #arabic_reshaper.delete_harakat=False
    reshaped_text = arabic_reshaper.reshape(text)
    bidi_text = get_display(reshaped_text)

    # Split the text into words
    words = bidi_text.split()

    # Initialize variables
    current_line = ""
    wrapped_lines = []

    # Iterate through words and wrap lines
    for word in words:
        if len(current_line) + len(word) + 1 <= line_length:
            current_line += word + " "
        else:
            wrapped_lines.append(current_line)
            current_line = word + " "

    # Add the last line
    wrapped_lines.append(current_line)

    # Reverse the order of lines to read from bottom up
    wrapped_text = "\n".join(reversed(wrapped_lines))

    return wrapped_text


arabic_text =  sys.argv[1]
wrapped_text = reshape_and_wrap_arabic_text(arabic_text, 100)
print(wrapped_text)
