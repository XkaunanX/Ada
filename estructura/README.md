
# archivo `main.adb`

Este archivo proporciona una estructura básica y una explicación del formato de un archivo `main.adb` en el lenguaje de programación Ada. En este ejemplo, el archivo contiene:

1. **Encabezado del archivo**  
2. **Declaración del procedimiento principal**  
3. **Declaración de variables locales**  
4. **Subprogramas internos**  
5. **Cuerpo del procedimiento principal**

## Estructura del archivo `main.adb`

### 1. Encabezado del archivo (`with`)

El encabezado de un archivo `.adb` incluye las directivas `with` para importar paquetes que proporcionan funcionalidades necesarias para el programa. 

```ada
-- Importación de un paquete estándar
with Ada.Text_IO; use Ada.Text_IO;

-- Importación del archivo de especificación de un TAD (Tipo Abstracto de Datos)
with Punto_TAD;                   -- Importación del archivo de especificación del TAD
```

- **`with Ada.Text_IO; use Ada.Text_IO;`**: Permite el uso de las funciones y procedimientos del paquete `Ada.Text_IO` para manejar operaciones de entrada y salida, como imprimir en la consola.
- **`with Punto_TAD;`**: Importa el paquete `Punto_TAD` que contiene definiciones relacionadas con el tipo abstracto de datos `Punto`.

### 2. Declaración del procedimiento principal (`procedure`)

A continuación, se declara el procedimiento principal. El nombre del procedimiento (`Ejemplo`) debe ser coherente y descriptivo para la función que va a realizar el programa.

```ada
procedure Ejemplo is
```

Este procedimiento incluye toda la lógica que se ejecutará cuando se llame al programa.

### 3. Declaración de variables

Dentro del procedimiento, se pueden declarar las variables locales que serán usadas en el programa. En este caso, se declaran variables de tipo `Integer` y `Punto`:

```ada
   -- Declaración de variables
   num1 : Integer := 10;
   num2 : Integer := 20;
   resultado : Integer;
   
   -- Declaración de variables para el TAD Punto
   p1 : Punto_TAD.Punto;   -- Declaramos una variable de tipo Punto
   p2 : Punto_TAD.Punto;   -- Otra variable de tipo Punto
```

- **`num1`, `num2`, `resultado`**: Son variables de tipo `Integer` que se utilizarán en el cálculo de una suma.
- **`p1`, `p2`**: Son variables de tipo `Punto_TAD.Punto`, que representan puntos en un plano 2D, usando un TAD importado previamente.

### 4. Subprogramas internos

Dentro del procedimiento, también es posible declarar y definir subprogramas internos, como en el caso del procedimiento `Sumar`, que realiza una operación de suma.

```ada
   -- Subprograma interno: Sumar
   procedure Sumar(a : Integer; b : Integer) is
   begin
      resultado := a + b;
   end Sumar;
```

El procedimiento `Sumar` toma dos enteros `a` y `b`, y asigna el resultado de su suma a la variable `resultado`.

### 5. Cuerpo del procedimiento

El bloque `begin ... end;` define el cuerpo del procedimiento principal, donde se ejecuta la lógica programática. Dentro de este bloque, se realizan las llamadas a otros subprogramas y funciones.

```ada
begin
   -- Llamada al procedimiento Sumar
   Sumar(num1, num2);

   -- Imprimir el resultado
   Put_Line("El resultado de la suma es: " & Integer'Image(resultado));

   -- Inicialización de puntos y llamada a métodos del TAD
   p1 := Punto_TAD.Crear(3, 4);  -- Crear un punto con coordenadas (3, 4)
   p2 := Punto_TAD.Crear(1, 2);  -- Crear otro punto con coordenadas (1, 2)

   -- Llamada a funciones del TAD Punto
   Put_Line("Distancia entre los puntos: " & Float'Image(Punto_TAD.Calcular_Distancia(p1, p2)));
end Ejemplo;
```

- **`Sumar(num1, num2);`**: Se llama al procedimiento `Sumar` pasando las variables `num1` y `num2`, lo que almacena el resultado de la suma en la variable `resultado`.
- **`Put_Line(...)`**: Se usa para imprimir resultados en la consola.
- **`Punto_TAD.Crear(...)`**: Llama a la función `Crear` del TAD `Punto_TAD` para inicializar puntos con coordenadas específicas.
- **`Punto_TAD.Calcular_Distancia(...)`**: Llama a la función `Calcular_Distancia` del TAD para calcular y mostrar la distancia entre dos puntos.

## Resumen de la estructura

El archivo `main.adb` tiene la siguiente estructura:

1. **Encabezado**: Importación de paquetes necesarios.
2. **Declaración del procedimiento**: Nombre del procedimiento principal.
3. **Declaración de variables**: Variables locales y tipos de datos a utilizar.
4. **Subprogramas internos**: Procedimientos o funciones dentro del procedimiento principal.
5. **Cuerpo del procedimiento**: Lógica de ejecución del programa.

Este formato es común en los archivos `.adb` de Ada, donde se combinan variables, subprogramas internos y llamados a otros módulos, como paquetes y TADs, para construir la lógica de un programa.


# TAD `Punto_TAD` 

Este archivo explica la estructura de los archivos `punto_tad.ads` (especificación) y `punto_tad.adb` (implementación) para un Tipo Abstracto de Datos (TAD) denominado `Punto`, el cual representa un punto en un plano 2D.

## Estructura del archivo `punto_tad.ads` (Especificación)

### 1. Declaración del tipo `Punto`

El archivo `punto_tad.ads` contiene la declaración del tipo abstracto de datos `Punto`, que es privado. Se define como un registro que tiene dos componentes: `X` y `Y`, ambos de tipo `Integer`.

```ada
package Punto_TAD is

   -- Tipo abstracto de datos para un Punto 2D
   type Punto is private;
```

- **`type Punto is private;`**: Esta línea declara un tipo `Punto` que será accesible en la parte pública del paquete, pero su representación interna está oculta (privada).

### 2. Funciones del TAD

El paquete declara dos funciones públicas:
- **`Crear`**: Función que recibe dos parámetros (coordenadas `X` y `Y` de tipo `Integer`) y devuelve un valor del tipo `Punto`.
- **`Calcular_Distancia`**: Función que calcula la distancia entre dos puntos de tipo `Punto` y devuelve un valor de tipo `Float`.

```ada
   -- Función para crear un punto
   function Crear(X, Y : Integer) return Punto;

   -- Función para calcular la distancia entre dos puntos
   function Calcular_Distancia(P1, P2 : Punto) return Float;
```

### 3. Parte privada

En la parte privada del paquete, se especifica la representación interna del tipo `Punto`. Aquí se define un **registro** con dos campos: `X` y `Y`.

```ada
private

   -- Representación privada del TAD Punto
   type Punto is record
      X : Integer;
      Y : Integer;
   end record;
```

## Estructura del archivo `punto_tad.adb` (Implementación)

El archivo `punto_tad.adb` contiene la implementación de las funciones declaradas en el archivo de especificación `punto_tad.ads`.

### 1. Implementación de la función `Crear`

La función `Crear` recibe dos parámetros `X` y `Y` de tipo `Integer` y devuelve un valor de tipo `Punto`. Esta función retorna un punto con las coordenadas especificadas.

```ada
-- Implementación de la función Crear
function Crear(X, Y : Integer) return Punto is
begin
   return (X => X, Y => Y);
end Crear;
```

### 2. Implementación de la función `Calcular_Distancia`

La función `Calcular_Distancia` toma dos puntos `P1` y `P2` de tipo `Punto` como parámetros, calcula la diferencia en las coordenadas `X` y `Y`, y luego utiliza la fórmula de la distancia euclidiana para devolver la distancia entre los dos puntos.

```ada
-- Implementación de la función Calcular_Distancia
function Calcular_Distancia(P1, P2 : Punto) return Float is
   DX : Integer := P2.X - P1.X;
   DY : Integer := P2.Y - P1.Y;
begin
   return Float(Sqrt(Float(DX*DX + DY*DY)));
end Calcular_Distancia;
```

## Resumen de la estructura de los archivos

1. **`punto_tad.ads` (Especificación)**:
   - Declara el tipo `Punto` como privado.
   - Proporciona las funciones `Crear` y `Calcular_Distancia`.
   - La parte privada define la representación interna del tipo `Punto` como un registro con dos campos: `X` y `Y`.

2. **`punto_tad.adb` (Implementación)**:
   - Implementa las funciones declaradas en la especificación.
   - `Crear` devuelve un punto con las coordenadas especificadas.
   - `Calcular_Distancia` calcula la distancia entre dos puntos utilizando la fórmula de la distancia euclidiana.
