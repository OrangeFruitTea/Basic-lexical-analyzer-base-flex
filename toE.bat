@echo off
set str=%1
echo %str% | findstr /r "[a-zA-Z0-9]+\.l"
@echo on
if %errorlevel% == 0 (
    flex %str%
) else (
    flex %str%.l
)
gcc lex.yy.c