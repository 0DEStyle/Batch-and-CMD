@echo off
rem //index is the number counter for filename
set /a Index=1

rem //EnableDelayedExpansion updates the memory of index
setlocal EnableDelayedExpansion

rem // check all files in current folder, erase all data inside the file
rem // then rename the file name into number(index)
rem // for whatever reason, can't run del after rename. 
rem // moved del *.txt to next bat file.

rem // you can add more extension below, format is *.WhateverExtension
for %%a in (*.jpg *.jpeg *.png *.webp *.mp4 *.webm *.webp *.m4v *.gif) do ( 
    type nul>%%a
    rename "*%%a" "!Index!.txt"
    set /a Index+=1
)
