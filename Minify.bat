@ECHO OFF
title HTML-Minifier

echo Directory = 1
echo File = 2

SET /P TYPE=Option: %=%
SET /P INPUT=Target: %=%

if %TYPE%==1 (node node_modules\html-minifier\cli.js -c config.json --input-dir %INPUT% --output-dir %INPUT%_minified)
if %TYPE%==2 (node node_modules\html-minifier\cli.js -c config.json %INPUT% -o %INPUT%)