with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_Operadores is
   a : Integer := 10;
   b : Integer := 5;
   c : Float := 3.14;
   d : Float := 2.71;
   texto1 : String := "Hola ";
   texto2 : String := "Mundo!";
   es_verdadero : Boolean := True;
   es_falso : Boolean := False;
begin
   -- Operadores aritméticos
   Put_Line("Suma: " & Integer'Image(a + b));
   Put_Line("Resta: " & Integer'Image(a - b));
   Put_Line("Multiplicación: " & Integer'Image(a * b));
   Put_Line("División (entera): " & Integer'Image(a / b));
   Put_Line("Módulo: " & Integer'Image(a mod b));
   
   -- Operadores relacionales
   Put_Line("a > b: " & Boolean'Image(a > b));
   Put_Line("a < b: " & Boolean'Image(a < b));
   Put_Line("a = b: " & Boolean'Image(a = b));
   Put_Line("a /= b: " & Boolean'Image(a /= b));

   -- Operadores lógicos
   Put_Line("es_verdadero AND es_falso: " & Boolean'Image(es_verdadero and es_falso));
   Put_Line("es_verdadero OR es_falso: " & Boolean'Image(es_verdadero or es_falso));
   Put_Line("NOT es_verdadero: " & Boolean'Image(not es_verdadero));

   -- Operadores de concatenación (para cadenas)
   Put_Line("Concatenación de texto: " & texto1 & texto2);

   -- Operadores de comparación de punto flotante
   Put_Line("c > d: " & Boolean'Image(c > d));
   Put_Line("c = d: " & Boolean'Image(c = d));
   Put_Line("c /= d: " & Boolean'Image(c /= d));
end Ejemplo_Operadores;
