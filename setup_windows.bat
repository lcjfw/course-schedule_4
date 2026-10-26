@echo off
cd /d "%~dp0"
py -3 -m venv .venv
if errorlevel 1 goto fail
.venv\Scripts\python.exe -m pip install -r requirements.txt
if errorlevel 1 goto fail
.venv\Scripts\python.exe manage.py migrate
if errorlevel 1 goto fail
echo Setup complete. Run start_windows.bat.
pause
exit /b
:fail
echo Setup failed. Check Python installation and network.
pause
