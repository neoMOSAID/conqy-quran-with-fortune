# Conky Quran Display

Display random Quran verses on your desktop using Conky.

![conky-quran-1](https://github.com/neoMOSAID/conqy-quran-with-fortune/assets/45760958/be8383c4-4fdd-4cb4-8b75-3129dff7dcc7)

## Overview

This project enables you to integrate a unique Conky setup that displays random Quran verses on your desktop. It consists of Python and shell scripts, along with Conky configuration, to create a visually pleasing and informative desktop environment.

## Scripts

### 1. Reshaping Arabic Text

The `reshape_arabic.py` Python script reshapes Arabic text using the `arabic_reshaper` and `bidi` libraries. It ensures correct display and fits text neatly within a specified line length.

### 2. Fortune and Shell Script

The shell script orchestrates the process by utilizing the `fortune` command to randomly select a Quranic verse. The project includes prepared fortune files for all Quran chapters (Sourat), making them independent and versatile for use with the `fortune` command.

To use a specific chapter or customize the verses, you can explore and modify the fortune files according to your preferences. The shell script activates a virtual environment and passes the selected text to the Python script for reshaping, resulting in a beautifully formatted Quranic verse on your Conky display.

### 3. Conky Configuration

The Conky configuration script defines fonts, window properties, colors, and visual elements to showcase reshaped Arabic text on the desktop elegantly.

## Usage

To use this setup:

1. Make sure you have the required Python libraries installed.
2. Point the Conky configuration to the shell script for a seamless display of Quran verses on your desktop.

## Quran Text Source

The Quranic text used in this project is sourced from "Quran.txt" with the following copyrights:

Tanzil Quran Text (Uthmani, Version 1.1)
Copyright (C) 2007-2024 Tanzil Project
License: Creative Commons Attribution 3.0


- Permission is granted to copy and distribute verbatim copies of this text, but changing it is not allowed.
- The Quran text can be used in any website or application, provided that its source (Tanzil Project) is clearly indicated, and a link is made to [tanzil.net](http://tanzil.net) to enable users to keep track of changes.
- This copyright notice shall be included in all verbatim copies of the text and reproduced appropriately in all files derived from or containing a substantial portion of this text.

Please check for updates at [Tanzil Project Updates](http://tanzil.net/updates/).

## License

This project is licensed under the [MIT License](LICENSE).


