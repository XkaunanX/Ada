with Ada.Text_IO; use Ada.Text_IO;  -- Importamos el paquete de entrada/salida

procedure Ejemplo_Salida is
begin
   -- Mostrar una línea de texto
   Put_Line("Hola, Ada!");
   
   -- Mostrar un número entero
   Put_Line("El número es: " & Integer'Image(42));
   
   -- Mostrar un número de tipo float
   Put_Line("El valor de Pi es: " & Float'Image(3.14159));
end Ejemplo_Salida;

-- Put_Line("Texto");: Muestra la cadena de texto y agrega un salto de línea al final.
-- Integer'Image(42): Convierte el valor 42 de tipo Integer a una cadena de texto para que se pueda mostrar.
-- Float'Image(3.14159): Convierte el valor 3.14159 de tipo Float a una cadena de texto.