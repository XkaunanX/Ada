with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_Select is
   task T1;
   task T2;

   task body T1 is
   begin
      Put_Line("Tarea 1 ejecutada");
   end T1;

   task body T2 is
   begin
      Put_Line("Tarea 2 ejecutada");
   end T2;

begin
   select
      when T1'Finished =>
         Put_Line("Tarea 1 terminó.");
   or
      when T2'Finished =>
         Put_Line("Tarea 2 terminó.");
   end select;
end Ejemplo_Select;
