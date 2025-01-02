with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_While is
   i : Integer := 1;
   Limite : Integer := 5;
begin
   -- Bucle while para imprimir los números del 1 al 5
   while i <= Limite loop
      Put_Line("Número: " & Integer'Image(i));  -- Imprime el valor de i
      i := i + 1;  -- Incrementa i
   end loop;
end Ejemplo_While;
