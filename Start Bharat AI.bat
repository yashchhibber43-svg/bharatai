@echo off
setlocal
title Bharat AI
cd /d "%~dp0"
rem Paths are relative to this folder, so any drive letter works.
if exist "python\python.exe" (
  set "PY=python\python.exe"
) else (
  where py >nul 2>nul && (set "PY=py -3") || (set "PY=python")
)
%PY% --version >nul 2>nul
if errorlevel 1 (
  echo Python was not found. Put an embeddable Python in the "python" folder - see README.txt.
  pause
  exit /b 1
)
%PY% "app\server.py"
if errorlevel 1 pause
