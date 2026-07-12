@echo off
:: Esto obliga a la consola a situarse en la carpeta donde está este archivo
cd /d "%~dp0"

echo [VERIFICANDO REQUISITOS DEL SISTEMA...]
echo ----------------------------------------

:: 1. VERIFICAR PYTHON
:: Intentamos obtener la versión de python y ocultamos la salida (>nul 2>&1)
python --version >nul 2>&1
if %errorlevel% NEQ 0 (
    echo [ERROR CRITICO] Python no esta instalado o no se encuentra en el PATH.
    echo.
    echo Por favor, descarga e instala Python desde:
    echo https://www.python.org/downloads/
    echo.
    echo IMPORTANTE: Al instalar, marca la casilla "Add Python to PATH".
    echo.
    echo Presiona cualquier tecla para salir...
    pause >nul
    exit
) else (
    echo [OK] Python detectado correctamente.
)


:: 2. VERIFICAR ADB
:: Buscamos adb.exe en el sistema
where adb >nul 2>&1
if %errorlevel% NEQ 0 (
    echo [ERROR CRITICO] ADB no se detecto en el sistema.
    echo.
    echo Necesitas las 'Platform Tools'. Descargalas aqui:
    echo https://developer.android.com/tools/releases/platform-tools?hl=es-419
    echo.
    echo INSTRUCCIONES:
    echo 1. Descarga el ZIP y descomprimelo.
    echo 2. Copia la ruta de la carpeta y agregala a las Variables de Entorno "(PATH)".
    echo 3. O bien, pega los archivos de ADB en esta misma carpeta.
    echo.
    echo Presiona cualquier tecla para salir...
    pause >nul
    exit
) else (
    echo [OK] ADB detectado correctamente.
)

echo ----------------------------------------
echo Todo listo. Iniciando instalacion...
echo.

:: Crear entorno (usamos python directamente ya que validamos que existe)
if not exist "venv" (
    echo Creando entorno virtual...
    python -m venv venv
) else ( echo El entorno visual ya existe )
echo.
:: Activar el entorno
call venv\Scripts\activate.bat
echo.
:: Instalar dependencias
echo Actualizando dependencias (Pip Installs Packages)...
pip install requests
python.exe -m pip install --upgrade pip
python -m pip cache purge
echo Instalando dependencias (pure-python-adb)...
pip install pure-python-adb
echo.
echo Instalando dependencias (google-play-scraper)...
pip install google-play-scraper
echo Instalando dependencias (rich)...
python -m pip install rich
echo.
:: Prueba de ejecucion
echo Iniciando Programa...
::cls
python main.py
pause