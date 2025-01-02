with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_Loop is
   i : Integer := 1;
begin
   loop
      Put_Line("Valor de i: " & Integer'Image(i));
      i := i + 1;
      if i > 5 then
         exit;  -- Sale del bucle cuando i es mayor que 5
      end if;
   end loop;
end Ejemplo_Loop;
