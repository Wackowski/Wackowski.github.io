@echo off
set /p post_title="Podaj tytuł postu: "
set /p image_path="Podaj ścieżkę do głównego zdjęcia (lub pozostaw puste): "

for /f %%a in ('powershell -Command "Get-Date -format yyyy-MM-dd"') do set current_date=%%a
set "formatted_title=%post_title: =-%"
set post_filename=%current_date%-%formatted_title%.md
set post_path=C:\Users\wacek\htt\Wackowski.github.io\_posts\%post_filename%

echo --- >"%post_path%"
echo layout: post >>"%post_path%"
echo title: "%post_title%" >>"%post_path%"
echo date: %current_date% >>"%post_path%"
echo comments: true >>"%post_path%"

if not "%image_path%"=="" echo image: %image_path% >>"%post_path%"

echo --- >>"%post_path%"

echo Plik postu %post_filename% został utworzony w katalogu _posts.
pause
