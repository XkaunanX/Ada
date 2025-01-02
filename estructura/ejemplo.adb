-- Encabezado del archivo (.adb)
with Ada.Text_IO; use Ada.Text_IO;  -- Importación de un paquete
with Punto_TAD;                   -- Importación del archivo de especificación del TAD

-- Declaración del Procedimiento
procedure Ejemplo is

   -- Declaración de variables
   num1 : Integer := 10;
   num2 : Integer := 20;
   resultado : Integer;
   
   -- Subprograma interno: Sumar
   procedure Sumar(a : Integer; b : Integer) is
   begin
      resultado := a + b;
   end Sumar;

   -- Declaración de variables para el TAD Punto
   p1 : Punto_TAD.Punto;   -- Declaramos una variable de tipo Punto
   p2 : Punto_TAD.Punto;   -- Otra variable de tipo Punto


-- Cuerpo del procedimiento
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
