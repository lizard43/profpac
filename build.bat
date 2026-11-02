@echo off
setlocal
cd /d "%~dp0"

rem Windows entry point for the same reproducible build and quiet logging
rem as build.sh. Requires Git for Windows (Git Bash) and Python 3.
rem zmac.exe is the Windows edition of the bundled zmac v1.3.

set "GIT_BASH=%ProgramFiles%\Git\bin\bash.exe"
if not exist "%GIT_BASH%" set "GIT_BASH=%ProgramFiles(x86)%\Git\bin\bash.exe"
if not exist "%GIT_BASH%" (
    where bash >nul 2>nul
    if errorlevel 1 (
        echo ERROR: Git Bash was not found. Install Git for Windows. 1>&2
        exit /b 1
    )
    set "GIT_BASH=bash"
)
if not exist "tools\zmac.exe" (
    echo ERROR: tools\zmac.exe not found. 1>&2
    exit /b 1
)

set "ZMAC=tools/zmac.exe"
"%GIT_BASH%" ./build.sh %*
set "BUILD_RC=%ERRORLEVEL%"
exit /b %BUILD_RC%
