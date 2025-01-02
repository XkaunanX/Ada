# ADA

Ada es un lenguaje de programación de alto nivel desarrollado en la década de 1980 por encargo del Departamento de Defensa de los Estados Unidos. Su diseño se centra en la confiabilidad, seguridad y eficiencia, lo que lo hace ideal para aplicaciones críticas y sistemas embebidos, como los utilizados en aeronáutica, defensa y otras industrias de alta precisión. Ada incorpora características que permiten escribir software modular, reutilizable y fácil de mantener, con un enfoque específico en la verificación de la corrección del código.

## En qué contexto nació Ada

Ada fue creado en respuesta a la necesidad de un lenguaje robusto y eficiente para sistemas de defensa, donde la fiabilidad y la seguridad son esenciales. Antes de Ada, el entorno de desarrollo estaba fragmentado con numerosos lenguajes y herramientas que dificultaban la interoperabilidad y la mantenibilidad. Ada se diseñó para unificar y mejorar estos procesos, integrando conceptos avanzados como la concurrencia y el manejo de excepciones de manera explícita y controlada.

## Características Principales

### ¿Es un lenguaje de bajo o alto nivel?

Ada es un lenguaje de **alto nivel**, diseñado para ofrecer un alto grado de abstracción mientras mantiene un control preciso sobre los recursos del sistema. Aunque proporciona características propias de lenguajes de bajo nivel, como el manejo explícito de memoria y la concurrencia, Ada se utiliza principalmente para el desarrollo de software en sistemas de tiempo real y de misión crítica.

### Uso de punteros

Ada maneja **punteros** de manera estricta a través de tipos específicos como los "access types". A diferencia de otros lenguajes como C, donde los punteros pueden ser utilizados de forma más flexible y peligrosa, Ada previene muchos errores comunes, como el uso de punteros nulos o colgantes. Los punteros son controlados por el compilador, lo que mejora la seguridad y la fiabilidad del programa.

**Beneficios del uso controlado de punteros en Ada:**

- Prevención de punteros nulos y colgantes.
- Control estricto del acceso a la memoria.
- Garantiza la integridad de la memoria y evita corrupciones.

### Paradigma y explicación del paradigma

Ada es un lenguaje **multiparadigma** que soporta varios estilos de programación, tales como:

- **Programación estructurada:** El enfoque principal del lenguaje es la programación estructurada, donde el flujo del control se gestiona a través de secuencias de comandos bien definidas, evitando las ramas y saltos excesivos.
- **Programación orientada a objetos:** Ada también soporta clases, herencia y polimorfismo, aunque de una manera menos dinámica que otros lenguajes orientados a objetos como Java o C++.
- **Programación concurrente:** Ada sobresale en la programación concurrente, facilitando la creación de sistemas que requieren la ejecución simultánea de múltiples tareas sin comprometer la seguridad y el control sobre los recursos.

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

### Archivos .ads y .adb

Los **archivos .ads** y **.adb** son fundamentales en Ada para la estructura de los paquetes:

- **.ads (specification):** Define la interfaz pública del paquete, es decir, qué tipos y operaciones están disponibles para los demás módulos del sistema.
- **.adb (body):** Contiene la implementación real de los procedimientos y funciones declarados en la especificación.

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

### Cómo funcionó el IO en Ada

El manejo de **entrada y salida (IO)** en Ada se realiza de forma segura a través de paquetes especializados. Ada proporciona paquetes como `Ada.Text_IO` y `Ada.Integer_Text_IO` para gestionar la entrada y salida de datos en forma de texto y enteros.

**Beneficios del IO en Ada:**

- **Entrada segura:** La entrada de datos se maneja de forma tipo segura, evitando errores comunes en la conversión de tipos
