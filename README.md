# Android Adware Scanner
Una herramienta avanzada y completamente portable para diagnosticar, monitorear y limpiar dispositivos Android de Adware y Bloatware a través de ADB. No requiere instalación de software adicional; simplemente descarga, extrae y ejecuta.

## Características Principales

* **Portable y Ligero:** Ejecutable independiente (.exe) que no requiere tener Python instalado en tu sistema.
* **Modo Monitor en Tiempo Real:** Detecta aplicaciones que se ejecutan en primer plano. Ideal para cazar adware que muestra publicidad de forma repentina.
* **Escáner por Lista (threats.txt):** Busca y elimina múltiples amenazas conocidas de forma automática.
* **Integración con Scrcpy:** Visualiza la pantalla del dispositivo mientras trabajas. Incluye un supervisor inteligente que reconecta la ventana automáticamente si hay cortes de conexión.
* **Bloqueo de Actualizaciones (OTA):** Desactiva las aplicaciones responsables de las actualizaciones del sistema operativo, adaptándose a la marca del dispositivo.
* **Copias de Seguridad (Backup):** Extrae y guarda el archivo base.apk de cualquier aplicación antes de eliminarla por seguridad.
* **Conexión Inalámbrica:** Soporte completo para depuración por Wi-Fi, incluyendo el nuevo sistema de emparejamiento por código de Android 11+.

## Requisitos Previos

1. Una PC con Windows.
2. Un dispositivo Android con las **Opciones de Desarrollador** y la **Depuración USB** (o Depuración inalámbrica) activadas.

## Instalación

1. Descarga el archivo comprimido (.zip) de la última versión desde la sección de Releases.
2. Extrae el contenido en cualquier lugar de tu computadora (por ejemplo, en el Escritorio).
3. Asegúrate de que la estructura de carpetas se vea exactamente así:

```text
Adware-scanner_v2.0.0/
├── backups/                (Carpeta generada para copias de seguridad)
├── bin/                    (Directorio de motores externos: adb, scrcpy, dlls)
├── AScanner.exe            (Ejecutable principal)
├── exclusions.txt          (Lista de paquetes a ignorar)
├── LICENSE                 (Licencia del proyecto)
├── ota_packages.json       (Base de datos de actualizaciones OTA)
├── README.md               (Archivo de documentación)
└── threats.txt             (Lista de amenazas conocidas)
