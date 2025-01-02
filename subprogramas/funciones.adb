with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_Funcion is
   -- Declaración de una función que calcula el cuadrado de un número
   function Cuadrado(X : Integer) return Integer is
   begin
      return X * X;
   end Cuadrado;

   -- Declaración de una variable
   Numero : Integer := 5;
   Resultado : Integer;

begin
   -- Llamada a la función
   Resultado := Cuadrado(Numero);

   -- Imprimir el resultado
   Put_Line("El cuadrado de " & Integer'Image(Numero) & " es: " & Integer'Image(Resultado));
end Ejemplo_Funcion;
