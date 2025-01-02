with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_If_Else is
   Numero : Integer := 10;
begin
   -- Comprobamos si el número es mayor que 0
   if Numero > 0 then
      Put_Line("El número es positivo.");
   -- Comprobamos si el número es igual a 0
   elsif Numero = 0 then
      Put_Line("El número es cero.");
   -- Si no se cumple ninguna de las condiciones anteriores, es negativo
   else
      Put_Line("El número es negativo.");
   end if;
end Ejemplo_If_Else;
