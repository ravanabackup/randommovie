@echo off
setlocal enabledelayedexpansion

set "videoFolder=C:\Users\Admin\Desktop\movie"

REM Change the directory to the video folder
cd /d "%videoFolder%"

REM Create a list of all video files in the folder and its subfolders
for /r %%a in (*.mp4 *.avi *.mkv *.flv *.wmv) do (
    set /a count+=1
    set "file[!count!]=%%a"
)

REM Generate a random number between 1 and the total number of files
set /a randomIndex=%random% %% count + 1

REM Play the randomly selected video file using PotPlayer
start "" "C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe" "!file[%randomIndex%]!"

REM Optionally, you can add a pause to keep the command window open
REM pause
