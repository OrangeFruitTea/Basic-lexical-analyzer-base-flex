@echo off
set "str=%~1"
if exist "%str%.l" (
    echo on
    flex %str%.l
) else (
    echo on
    echo [ERROR]: source file "%str%.l" not found
)
@echo off
set Source=lex.yy.c
if exist %Source% (
    @echo on
    gcc %Source%
) else (
    @echo on
    echo [ERROR]: source file "lex.yy.c" not found
)
