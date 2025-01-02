with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_Case is
   Dia : Integer := 3;  -- Día de la semana (1 = Lunes, 7 = Domingo)
begin
   case Dia is
      when 1 => Put_Line("Lunes");
      when 2 => Put_Line("Martes");
      when 3 => Put_Line("Miércoles");
      when 4 => Put_Line("Jueves");
      when 5 => Put_Line("Viernes");
      when 6 => Put_Line("Sábado");
      when 7 => Put_Line("Domingo");
      when others => Put_Line("Día no válido");
   end case;
end Ejemplo_Case;
