# ADA

Ada es un lenguaje de programación de alto nivel desarrollado en la década de 1980 por encargo del Departamento de Defensa de los Estados Unidos. Su diseño se centra en la confiabilidad, seguridad y eficiencia, lo que lo hace ideal para aplicaciones críticas y sistemas embebidos, como los utilizados en aeronáutica, defensa y otras industrias de alta precisión. Ada incorpora características que permiten escribir software modular, reutilizable y fácil de mantener, con un enfoque específico en la verificación de la corrección del código.

## En qué contexto nació Ada

Ada fue creado en respuesta a la necesidad de un lenguaje robusto y eficiente para sistemas de defensa, donde la fiabilidad y la seguridad son esenciales. Antes de Ada, el entorno de desarrollo estaba fragmentado con numerosos lenguajes y herramientas que dificultaban la interoperabilidad y la mantenibilidad. Ada se diseñó para unificar y mejorar estos procesos, integrando conceptos avanzados como la concurrencia y el manejo de excepciones de manera explícita y controlada.

## Características Principales

### ¿Es un lenguaje de bajo o alto nivel?

Ada es un lenguaje de **alto nivel**, diseñado para ofrecer un alto grado de abstracción mientras mantiene un control preciso sobre los recursos del sistema. Aunque proporciona características propias de lenguajes de bajo nivel, como el manejo explícito de memoria y la concurrencia, Ada se utiliza principalmente para el desarrollo de software en sistemas de tiempo real y de misión crítica.

```ada
with Ada.Text_IO; 
with Ada.Storage_Elements;

procedure Low_Level_Example is

   -- Definicion de una variable para control de memoria
   type Buffer is array (1 .. 100) of Integer;
   B : Buffer;

   procedure Initialize_Buffer is
   begin
      for I in B'Range loop
         B(I) := I;
      end loop;
   end Initialize_Buffer;

   -- Uso de recursos del sistema
   procedure Control_Resources is
      for I in B'Range loop
         Ada.Text_IO.Put_Line("Elemento " & Integer'Image(B(I)));
      end loop;
   end Control_Resources;

begin
   -- Inicializar y controlar el buffer
   Initialize_Buffer;
   Control_Resources;
end Low_Level_Example;
```

### Uso de punteros

Ada maneja **punteros** de manera estricta a través de tipos específicos como los "access types". A diferencia de otros lenguajes como C, donde los punteros pueden ser utilizados de forma más flexible y peligrosa, Ada previene muchos errores comunes, como el uso de punteros nulos o colgantes. Los punteros son controlados por el compilador, lo que mejora la seguridad y la fiabilidad del programa.

**Beneficios del uso controlado de punteros en Ada:**

- Prevención de punteros nulos y colgantes.
- Control estricto del acceso a la memoria.
- Garantiza la integridad de la memoria y evita corrupciones.

```ada
with Ada.Text_IO; 

procedure Pointer_Example is

   -- Definimos un tipo para los punteros
   type Integer_Access is access Integer;

   -- Declaramos un puntero
   Ptr : Integer_Access;

   -- Definimos una variable para ser referenciada
   Value : Integer := 10;

begin
   -- Asignamos la dirección de Value al puntero
   Ptr := Integer_Access'(Value);

   -- Mostramos el valor referenciado por el puntero
   Ada.Text_IO.Put_Line("Valor a traves del puntero: " & Integer'Image(Ptr.all));

   -- Desreferenciamos el puntero y modificamos el valor
   Ptr.all := 20;

   -- Mostramos el valor actualizado
   Ada.Text_IO.Put_Line("Valor actualizado: " & Integer'Image(Value));

end Pointer_Example;
 ```

### Paradigma y explicación del paradigma

Ada es un lenguaje **multiparadigma** que soporta varios estilos de programación, tales como:

- **Programación estructurada:** El enfoque principal del lenguaje es la programación estructurada, donde el flujo del control se gestiona a través de secuencias de comandos bien definidas, evitando las ramas y saltos excesivos.
- **Programación orientada a objetos:** Ada también soporta clases, herencia y polimorfismo, aunque de una manera menos dinámica que otros lenguajes orientados a objetos como Java o C++.
- **Programación concurrente:** Ada sobresale en la programación concurrente, facilitando la creación de sistemas que requieren la ejecución simultánea de múltiples tareas sin comprometer la seguridad y el control sobre los recursos.

Ejemplo paradigma estructurado:

```ada
with Ada.Text_IO; 

procedure Structured_Programming is
   X : Integer := 10;
begin
   -- Estructura de control condicional
   if X > 5 then
      Ada.Text_IO.Put_Line("X es mayor que 5");
   else
      Ada.Text_IO.Put_Line("X es menor o igual a 5");
   end if;

   -- Estructura de control de repetición
   for I in 1..5 loop
      Ada.Text_IO.Put_Line("Iteracion: " & Integer'Image(I));
   end loop;

end Structured_Programming;
```

Ejemplo paradigma POO:

```ada
with Ada.Text_IO; 
with Ada.Finalization; 

type Animal is tagged record
   Name : String(1..20);
end record;

type Dog is new Animal with record
   Breed : String(1..20);
end record;

procedure Object_Oriented is
   Dog1 : Dog := (Name => "Rex", Breed => "Labrador");

begin
   Ada.Text_IO.Put_Line("Perro: " & Dog1.Name & " de raza " & Dog1.Breed);
end Object_Oriented;
```

Ejemplo concurrencia:

```ada
with Ada.Text_IO;

procedure Concurrent_Programming is
   task type Printer;
   task body Printer is
   begin
      for I in 1..5 loop
         Ada.Text_IO.Put_Line("Tarea concurrente en ejecucion");
      end loop;
   end Printer;

   T : Printer;
begin
   -- Ejecución de tareas concurrentes
   delay 1.0; -- Simula una operación de espera
   Ada.Text_IO.Put_Line("Tarea principal finalizada");
end Concurrent_Programming;
```

### Tipo de tipado

Ada es un lenguaje **de tipado fuerte**. Esto significa que el tipo de una variable es verificado en tiempo de compilación y se evitan operaciones inválidas entre tipos incompatibles. Los tipos pueden ser definidos por el programador, lo que le permite crear tipos de datos complejos y personalizados sin comprometer la seguridad del sistema.

**Características clave del sistema de tipos de Ada:**

- **Tipado estático:** Los tipos de datos son verificados en tiempo de compilación, lo que asegura que los errores de tipo no ocurran en tiempo de ejecución.
- **Tipado fuerte:** No permite realizar conversiones de tipo implícitas o peligrosas.
- **Tipado extensible:** Los programadores pueden definir nuevos tipos y adaptarlos según las necesidades del proyecto.

### Compilado

Ada es un **lenguaje compilado**, lo que significa que el código fuente es transformado en código máquina que puede ejecutarse directamente en un procesador. Esto permite que Ada sea utilizado en aplicaciones que requieren un rendimiento predecible y eficiente, como sistemas embebidos y aplicaciones en tiempo real.

**Ventajas de ser un lenguaje compilado:**

- **Rendimiento:** La traducción directa a código máquina permite una ejecución más rápida y controlada.
- **Optimización:** El compilador puede optimizar el código durante la compilación para hacer un mejor uso de los recursos del sistema.
- **Menor uso de recursos en tiempo de ejecución:** No requiere un intérprete ni un entorno de ejecución complejo.

## Compilador de Ada: GNAT

El compilador principal utilizado para Ada es **GNAT** (GNU NYU Ada Translator), que forma parte del proyecto GCC (GNU Compiler Collection).

### ¿Como compilar un programa en ada?

```bash
gnatmake program.adb
```

### Manejo de memoria

Ada proporciona un manejo de memoria **seguro** y **eficiente**. Utiliza el concepto de "access types" para permitir el acceso dinámico a memoria, pero siempre bajo reglas estrictas para evitar problemas comunes como las fugas de memoria. Además, el lenguaje permite la asignación y liberación explícita de memoria, proporcionando una mayor capacidad de control para el programador.

**Principales características del manejo de memoria en Ada:**

- **Acceso controlado:** El acceso a la memoria es controlado y explícito, evitando errores de punteros y garantizando la integridad de la memoria.
- **No hay recolección automática de basura:** En vez de utilizar un recolector de basura, Ada requiere que los programadores gestionen manualmente la memoria cuando sea necesario, lo que reduce la sobrecarga en el sistema.

### Manejo de errores

Ada ofrece un manejo de **errores explícito** a través del mecanismo de **excepciones**. Las excepciones en Ada permiten gestionar condiciones de error de manera controlada y predecible, evitando que el sistema se bloquee o falle inesperadamente.

**Características clave del manejo de errores:**

- **Excepciones:** Las excepciones son eventos anómalos que ocurren durante la ejecución y que pueden ser manejados mediante bloques `begin ... exception ... end`.
- **Excepciones específicas:** Ada permite definir excepciones específicas para diferentes tipos de errores, lo que permite un manejo más fino de los problemas.

### Concurrencia

Una de las características distintivas de Ada es su enfoque en la **concurrencia segura**. A través de las "tareas" (tasks), Ada facilita la creación de programas concurrentes, lo que es esencial para sistemas en tiempo real y aplicaciones donde varias operaciones deben ejecutarse simultáneamente.

**Características de la concurrencia en Ada:**

- **Tareas:** Las tareas son bloques de código que se ejecutan de manera independiente y concurrente.
- **Sin condiciones de carrera:** El sistema de tareas de Ada está diseñado para evitar las condiciones de carrera y otros problemas comunes en la programación concurrente.
- **Sincronización:** Ada proporciona mecanismos para sincronizar las tareas y garantizar que se acceda a los recursos compartidos de manera segura.

### Paquetes

Ada utiliza el concepto de **paquetes** (packages) para organizar el código. Los paquetes permiten agrupar tipos, procedimientos y funciones relacionados, facilitando la modularización del código y mejorando su reutilización y mantenimiento.

**Beneficios de los paquetes en Ada:**

- **Modularización:** Los paquetes permiten dividir el código en unidades lógicas y manejables.
- **Interfaz clara:** La separación entre la especificación y la implementación en los paquetes mejora la comprensión y reutilización del código.

# Archivos .ads y .adb en Ada

Los **archivos .ads** y **.adb** son fundamentales en Ada para la estructura de los paquetes. Ambos archivos deben tener el mismo nombre para garantizar que estén correctamente vinculados y el compilador pueda asociarlos. A continuación se detalla la función de cada uno:

## .ads (Specification)
El archivo **.ads** es la especificación o interfaz pública de un paquete. Su propósito principal es definir:
- **Tipos** que serán utilizados en el paquete.
- **Procedimientos y funciones** disponibles para otros módulos del sistema.
  
En este archivo solo se definen las firmas o declaraciones de los procedimientos y funciones, sin incluir su implementación. Es el contrato que establece qué operaciones pueden ser invocadas desde otros módulos.

## .adb (Body)
El archivo **.adb** es el cuerpo del paquete, donde se implementan las operaciones definidas en la especificación `.ads`. En este archivo se describe cómo se llevan a cabo las tareas especificadas en el archivo `.ads`.

Este archivo contiene el código real que realiza las operaciones definidas en la especificación, como la implementación de funciones y procedimientos.

### Importante:
- **Coincidencia de nombres:** Ambos archivos deben tener el mismo nombre base para ser correctamente emparejados por el compilador. Por ejemplo:
  - Especificación: `Mi_Paquete.ads`
  - Implementación: `Mi_Paquete.adb`
  - 
Ejemplo especificacion .ads:

```ada
-- mi_paquete.ads
package Mi_Paquete is
   -- Declaración de un tipo
   type Contador is private;

   -- Procedimiento para inicializar el contador
   procedure Inicializar(Cont : in out Contador; Valor_Inicial : in Integer);

   -- Procedimiento para incrementar el contador
   procedure Incrementar(Cont : in out Contador);

   -- Función para obtener el valor actual del contador
   function Obtener_Valor(Cont : in Contador) return Integer;

private
   -- Definición interna del tipo
   type Contador is record
      Valor : Integer;
   end record;

end Mi_Paquete;
```
Ejemplo de implementacion .adb:

```ada
-- mi_paquete.adb
package body Mi_Paquete is

   -- Implementación del procedimiento Inicializar
   procedure Inicializar(Cont : in out Contador; Valor_Inicial : in Integer) is
   begin
      Cont.Valor := Valor_Inicial;
   end Inicializar;

   -- Implementación del procedimiento Incrementar
   procedure Incrementar(Cont : in out Contador) is
   begin
      Cont.Valor := Cont.Valor + 1;
   end Incrementar;

   -- Implementación de la función Obtener_Valor
   function Obtener_Valor(Cont : in Contador) return Integer is
   begin
      return Cont.Valor;
   end Obtener_Valor;

end Mi_Paquete;
```

### ¿Por qué es tan seguro Ada?

Ada es reconocido por su énfasis en la **seguridad**. Esto se logra a través de su sistema de tipado fuerte, el manejo controlado de punteros, y su soporte para programación concurrente de manera segura.

**Principales características de seguridad:**

- **Control de acceso a memoria:** Los punteros y accesos a memoria son estrictamente regulados para evitar errores comunes.
- **Excepciones:** El manejo de errores mediante excepciones reduce el riesgo de fallos inesperados.
- **Programación concurrente segura:** El sistema de tareas asegura que las operaciones concurrentes se realicen sin interferencias.

### ¿Por qué es tan bueno en los TADs?

Ada facilita la creación de **Tipos Abstractos de Datos (TADs)** debido a su potente sistema de tipos. Los TADs permiten encapsular la implementación de estructuras de datos complejas, proporcionando una interfaz pública que oculta los detalles internos.

**Ventajas de usar TADs en Ada:**

- **Encapsulación:** La implementación interna de los tipos está oculta, proporcionando una interfaz clara y segura.
- **Reusabilidad:** Los TADs pueden ser reutilizados en múltiples partes del programa sin riesgo de modificar su comportamiento interno.
- **Seguridad:** Al ocultar los detalles de la implementación, los TADs protegen los datos de manipulaciones externas indebidas.

### Estructura de los archivos Ada, cabecera y cuerpo

Ada divide los archivos de código en dos partes:

- **Especificación (cabecera):** Define los tipos, procedimientos y funciones que estarán disponibles para otros módulos.
- **Cuerpo (implementación):** Contiene el código real que implementa las funcionalidades descritas en la especificación.

Estructura de la especificacion del paquete .ads:

```ada
-- mi_paquete.ads
-- Especificación del paquete Mi_Paquete
-- Este archivo contiene la declaración de tipos, procedimientos y funciones
-- que serán accesibles desde otros módulos del programa.

package Mi_Paquete is

   -- Sección de Importaciones
   -- Aquí se pueden incluir otros paquetes si se necesitan, por ejemplo:
   -- with Ada.Text_IO; -- Para trabajar con entrada y salida

   -- Sección de Tipos
   -- En esta sección se definen los tipos de datos que estarán disponibles
   type Contador is private;

   -- Sección de Procedimientos
   -- Aquí se declaran los procedimientos que estarán disponibles para los usuarios del paquete.
   procedure Inicializar(Cont : in out Contador; Valor_Inicial : in Integer);
   procedure Incrementar(Cont : in out Contador);

   -- Sección de Funciones
   -- Aquí se declaran las funciones que estarán disponibles para los usuarios del paquete.
   function Obtener_Valor(Cont : in Contador) return Integer;

private
   -- Sección Privada
   -- En esta parte se define cómo se implementarán los tipos, y solo será accesible
   -- dentro del paquete y no por los usuarios del paquete.
   type Contador is record
      Valor : Integer;
   end record;

end Mi_Paquete;
```

Estructura de la implementacion del paquete .ads:

```ada
-- mi_paquete.adb
-- Cuerpo del paquete Mi_Paquete
-- Este archivo contiene la implementación de los procedimientos y funciones
-- que fueron declarados en la especificación.

package body Mi_Paquete is

   -- Sección de Variables Locales
   -- Aquí se pueden declarar variables temporales, pero generalmente las
   -- variables locales se declaran directamente dentro de los procedimientos y funciones.

   -- Implementación del procedimiento Inicializar
   procedure Inicializar(Cont : in out Contador; Valor_Inicial : in Integer) is
   begin
      Cont.Valor := Valor_Inicial;
   end Inicializar;

   -- Implementación del procedimiento Incrementar
   procedure Incrementar(Cont : in out Contador) is
   begin
      Cont.Valor := Cont.Valor + 1;
   end Incrementar;

   -- Implementación de la función Obtener_Valor
   function Obtener_Valor(Cont : in Contador) return Integer is
   begin
      return Cont.Valor;
   end Obtener_Valor;

end Mi_Paquete;
```

Estructura del archivo principal .adb: 

```ada
-- principal.adb
-- Este es el archivo principal que usa el paquete Mi_Paquete
-- Para utilizar el paquete, se debe "conocer" el paquete e invocar sus procedimientos y funciones.

with Mi_Paquete;    -- Importamos el paquete Mi_Paquete
use Mi_Paquete;     -- Hacemos uso de las funciones y procedimientos del paquete

procedure Principal is
   Mi_Contador : Contador;    -- Variable que usará el tipo Contador definido en el paquete
   Valor_Actual : Integer;    -- Variable para almacenar el valor del contador
begin
   -- Inicializamos el contador con el valor 10
   Inicializar(Mi_Contador, 10);

   -- Incrementamos el contador
   Incrementar(Mi_Contador);

   -- Obtenemos el valor actual del contador
   Valor_Actual := Obtener_Valor(Mi_Contador);

   -- Imprimimos el valor actual
   Ada.Text_IO.Put_Line("El valor del contador es: " & Integer'Image(Valor_Actual));
end Principal;
```

### Cómo funcionó el IO en Ada

El manejo de **entrada y salida (IO)** en Ada se realiza de forma segura a través de paquetes especializados. Ada proporciona paquetes como `Ada.Text_IO` y `Ada.Integer_Text_IO` para gestionar la entrada y salida de datos en forma de texto y enteros.

**Beneficios del IO en Ada:**

- **Entrada segura:** La entrada de datos se maneja de forma tipo segura, evitando errores comunes en la conversión de tipos
