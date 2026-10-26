@echo off
cd /d "%~dp0"
if not exist .venv\Scripts\python.exe goto missing
.venv\Scripts\python.exe manage.py runserver 127.0.0.1:8000
pause
exit /b
:missing
echo Run setup_windows.bat first.
pause
