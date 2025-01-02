# Estructura de un Proyecto en Ada  

/Proyecto_Ada  
├── /src         -- Carpeta para los archivos fuente (.ads y .adb)  
│   ├── main.adb -- Archivo principal del programa  
│   ├── paquete.ads -- Especificación de un paquete  
│   ├── paquete.adb -- Implementación del paquete  
│   ├── utilidades.ads -- Especificación de utilidades  
│   ├── utilidades.adb -- Implementación de utilidades  
├── /obj         -- Carpeta para los archivos objeto (.o) y binarios intermedios  
├── /bin         -- Carpeta para los ejecutables finales  
├── proyecto.gpr -- Archivo de proyecto GNAT  
└── README.md    -- Descripción del proyecto  

## Descripción de las Carpetas

- /src: Contiene todos los archivos fuente del proyecto. Aquí defines:

Archivos de especificación (.ads): Interfaz de paquetes, funciones o procedimientos.

Archivos de implementación (.adb): Lógica y comportamiento de las interfaces definidas.

- /obj: Carpeta para archivos objeto generados durante la compilación. Mantiene limpio el directorio principal del proyecto.

- /bin: Carpeta opcional para almacenar el ejecutable final después de la compilación.

- proyecto.gpr: Archivo de configuración del proyecto, utilizado por GNAT para gestionar las rutas y opciones de compilación.

Ejemplo de Archivo proyecto.gpr

```ada
project Proyecto_Ada is
   for Source_Dirs use ("src");          -- Carpeta para los archivos fuente
   for Object_Dir use "obj";             -- Carpeta para los archivos objeto
   for Main use ("main.adb");            -- Archivo principal
   for Exec_Dir use "bin";               -- Carpeta para el ejecutable
end Proyecto_Ada;
```
## Cómo Compilar el Proyecto

Con el Archivo proyecto.gpr

Si estás usando GNAT, puedes compilar todo el proyecto ejecutando:

gprbuild -P proyecto.gpr

Esto generará:

Archivos objeto en la carpeta obj

El ejecutable final en la carpeta bin

## Compilación Manual

Si no usas un archivo de proyecto, puedes compilar manualmente con gnatmake:

gnatmake -o bin/programa src/main.adb -I src -o obj

-I src: Indica dónde buscar los archivos fuente.

-o obj: Especifica dónde guardar los archivos objeto.

## Buenas Prácticas

1. Organización Modular: Mantén el código dividido en paquetes claros.

2. Separación de Interfaz y Lógica: Usa .ads para definir interfaces y .adb para implementaciones.

3. Uso de Carpetas: Separa los artefactos intermedios (.o) y el ejecutable final en carpetas específicas.
