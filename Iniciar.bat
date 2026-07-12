@echo off
:: Esto obliga a la consola a situarse en la carpeta donde está este archivo
cd /d "%~dp0"
call venv\Scripts\activate.bat
python main.py
pause