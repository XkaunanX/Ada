-- main.adb: Programa principal que utiliza el paquete Complejo
with Ada.Text_IO; use Ada.Text_IO;
with Complejo;  -- Importamos el paquete Complejo

procedure Main is
   C1, C2, Resultado : Complejo.Complejo_Tipo;

begin
   -- Inicializar números complejos
   C1 := (Real => 3.0, Imaginario => 4.0);
   C2 := (Real => 1.0, Imaginario => 2.0);

   -- Sumar los números complejos
   Resultado := Complejo.Sumar(C1, C2);
   Put_Line("Suma: " & Float'Image(Resultado.Real) & " + " & Float'Image(Resultado.Imaginario) & "i");

   -- Restar los números complejos
   Resultado := Complejo.Restar(C1, C2);
   Put_Line("Resta: " & Float'Image(Resultado.Real) & " + " & Float'Image(Resultado.Imaginario) & "i");

   -- Multiplicar los números complejos
   Resultado := Complejo.Multiplicar(C1, C2);
   Put_Line("Multiplicación: " & Float'Image(Resultado.Real) & " + " & Float'Image(Resultado.Imaginario) & "i");

end Main;
