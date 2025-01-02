with Ada.Text_IO; use Ada.Text_IO;

procedure Sentencias_Ejemplo is
   X : Integer := 10;
   Y : Integer := 20;
   Resultado : Integer;
begin
   -- Sentencia de asignación
   Resultado := X + Y;  -- Asignación de la suma de X y Y a Resultado

   -- Sentencia condicional IF
   if Resultado > 15 then
      Put_Line("El resultado es mayor que 15.");
   else
      Put_Line("El resultado es menor o igual a 15.");
   end if;

   -- Sentencia CASE (de tipo Integer)
   case Resultado is
      when 10 =>
         Put_Line("El resultado es 10.");
      when 20 =>
         Put_Line("El resultado es 20.");
      when others =>
         Put_Line("El resultado es otro valor.");
   end case;

   -- Sentencia de bucle FOR
   Put_Line("Iteración del bucle FOR:");
   for I in 1..5 loop
      Put_Line("Valor de I: " & Integer'Image(I));
   end loop;

   -- Sentencia de bucle WHILE
   Put_Line("Iteración del bucle WHILE:");
   while X < 20 loop
      Put_Line("Valor de X: " & Integer'Image(X));
      X := X + 1;  -- Aumentar X
   end loop;

   -- Sentencia EXIT (rompe el bucle)
   Put_Line("Iteración con EXIT:");
   for J in 1..10 loop
      if J = 5 then
         Put_Line("Se ha alcanzado el valor 5, saliendo del bucle.");
         exit;  -- Salir del bucle cuando J sea 5
      end if;
      Put_Line("Valor de J: " & Integer'Image(J));
   end loop;

end Sentencias_Ejemplo;
