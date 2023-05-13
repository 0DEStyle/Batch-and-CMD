@echo off
rem //index is counter for file
set /a Index=1

rem //update the memory of index
setlocal EnableDelayedExpansion

rem // check all files in current folder, erase all data inside the file
rem // then rename the file name into number(index)
rem // for whatever reason, can't run del after rename. 
rem // moved del *.txt to next bat file.
for %%a in (*.jpg *.jpeg *.png *.webp *.mp4 *.webm *.webp *.m4v *.gif) do ( 
	echo xD type nul>%%a
    rename "*%%a" "!Index!.txt"
    set /a Index+=1
)
