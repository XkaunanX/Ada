with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_For is
   Limite : Integer := 5;
begin
   -- Bucle for para imprimir los números del 1 al 5
   for i in 1 .. Limite loop
      Put_Line("Número: " & Integer'Image(i));  -- Imprime el valor de i
   end loop;
end Ejemplo_For;
