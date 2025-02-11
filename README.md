# Purpose
 The SmartCompress CLI is a simple wrapper utility for linux `zip` commands.

 When creating a zip archive, it is desirable to NOT compress certain filetypes that do not benefit from compression. This is also desirable because decompression no longer requires calculation for extracting these files.

 The `zip` utility supports this natively, with -n causing the specified filetypes to simply be stored, not compressed.
 However, typing all the extensions for each operation is tedious and difficult to remember. This program solves that by storing a list of extensions to always `-n` in a static text file somewhere the user can modify.

# Installation
 1. Clone this repo into anywhere in your User directory.
 2. Create a colon-delimitated list of file extensions to not compress in `exclusions.txt`.
 3. Edit `~/.bashrc` and add `alias sc="<PATH_TO_THIS_REPO>/smartCompress.sh";`

# Usage
 `sc <SOURCE> <DESTINATION>.zip`

# Future Plans
 Eventually, I want to expand this program to dynamically control what files are stored. Here are some possible ideas:
 1. Individually `zip -9` AND `zip -0` every file in the scope. Pick whichever is smaller and delete the larger.
 2. Create a list of every unique file extension in the scope and find the largest file of each type. Then, create a `zip -9` AND `zip -0` of each filetype. For each extension where `zip -0` is smaller than `zip -9`, add it to an exclusion list. Finally, run the originally executed command with that exclusion list.
 3. Manually run FuturePlan2 on as many computers as I can find a make static adjustments to `exclusions.txt`. 

# History
 - This tool is 100% written by Brendan Rood.
 - This tool was originally created on or before 2024-07-24.
 - This tool was first uploaded to github/Snail51 on 2025-02-11.
