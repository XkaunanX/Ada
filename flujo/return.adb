with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_Return is
begin
   Put_Line("Este mensaje se imprimirá.");
   return;  -- Sale del procedimiento aquí
   Put_Line("Este mensaje no se imprimirá.");
end Ejemplo_Return;
