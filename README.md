# Android Adware Scanner
Una herramienta avanzada y completamente portable para diagnosticar, monitorear y limpiar dispositivos Android de Adware y Bloatware a través de ADB. No requiere instalación de software adicional; simplemente descarga, extrae y ejecuta.

![Captura de AScanner v3.0.0](https://github.com/damianTC/Adware-scanner/raw/main/res/1.png)

**Novedades y Cambios Principales:**
* **Interfaz Gráfica (GUI):** Transición total de consola de texto a una interfaz gráfica moderna (Dark Mode) con ventanas modales 100% nativas y autocentrado.
* **Gestor de Bloatware Manual:** Nueva herramienta para buscar múltiples paquetes a la vez, diferenciando automáticamente entre apps del sistema (permitiendo desinstalación segura/deshabilitación) y apps de usuario (eliminación total).
* **Gestor de Listas Integrado (Bases de Datos):** Nuevo centro de control (⚙️) en el encabezado para visualizar, editar y guardar directamente `threats.txt`, `exclusions.txt` y `ota_packages.json` (organizado dinámicamente por marcas).
* **Integración Nativa con Play Store:** Nuevo botón inteligente en las tarjetas de resultados que abre la ficha oficial de la aplicación directamente en la tienda del teléfono (compatible con entornos modernos de múltiples perfiles en Android 8+).
* **Auditor de Permisos y Launcher (Home Hijackers):** Nueva herramienta que detecta si una app de terceros secuestró la pantalla de inicio (Launcher) y audita permisos críticos abusados por el adware (*Mostrar sobre otras apps*, *Accesibilidad* y *Administrador de dispositivo*).
* **Monitor de Adware por Sesión (No Intrusivo):** Nuevo flujo de vigilancia continua que registra en segundo plano todas las aplicaciones que pasan al frente con un contador en vivo, mostrando el resumen completo al detener el monitor sin interrumpir el uso del teléfono.
* **Gestor Unificado por Tarjetas:** Rediseño de las ventanas de *Escaneo Rápido*, *Modo Monitor*, *Auditoría* y *Bloatware* con listas desplazables que consultan el nombre comercial de cada app y permiten acciones individuales o masivas.
* **Módulo de Apoyo al Proyecto:** Integración de un menú dedicado (☕ Donar) con accesos directos seguros para apoyar el desarrollo a través de PayPal y Binance Pay.
* **Píldora de Estado Interactiva:** El indicador de conexión superior ahora funciona como un botón dinámico que despliega la ficha técnica completa del dispositivo en cualquier momento.
* **Desconexión Segura y Limpieza ADB:** Nuevo sistema para desconectar equipos en caliente deteniendo procesos activos de forma segura y cerrando `adb.exe` al salir para no dejar procesos fantasma en Windows.
* **Scrcpy Optimizado:** Seguro nativo vía ADB que mantiene la pantalla encendida durante la transmisión y restaura el tiempo de espera original del teléfono al desconectar o cerrar el programa.
* **Conexión Wi-Fi Asistida:** Asistente visual con galería de imágenes paso a paso para la vinculación inalámbrica y soporte mDNS automático.
* **Estabilidad y Rendimiento:** Motor de ejecución que oculta subprocesos de CMD en segundo plano, menú contextual (clic derecho) en la terminal integrada y bloqueo cruzado de botones para evitar colisión de tareas.

**Instrucciones de Uso:**
1. Descarga el archivo `.zip` adjunto en este release.
2. Extrae todo el contenido en una sola carpeta.
3. Asegúrate de que la carpeta `bin` (que incluye ADB, Scrcpy y el tutorial) y tus archivos de texto se encuentren junto a `AScanner.exe`.
4. Ejecuta `AScanner.exe` para comenzar.Android 11+.

## Requisitos Previos

1. Una PC con Windows.
2. Un dispositivo Android con las **Opciones de Desarrollador** y la **Depuración USB** (o Depuración inalámbrica) activadas.

## Instalación

1. Descarga el archivo comprimido (.zip) de la última versión desde la sección de Releases.
2. Extrae el contenido en cualquier lugar de tu computadora (por ejemplo, en el Escritorio).
3. Asegúrate de que la estructura de carpetas se vea exactamente así:

```text
Adware-scanner_v2.0.0/
├── bin/                    (Directorio de motores externos: adb, scrcpy, dlls)
├── AScanner.exe            (Ejecutable principal)
├── exclusions.txt          (Lista de paquetes a ignorar)
├── LICENSE                 (Licencia del proyecto)
├── ota_packages.json       (Base de datos de actualizaciones OTA)
├── README.md               (Archivo de documentación)
└── threats.txt             (Lista de amenazas conocidas)
