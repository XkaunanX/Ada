with Persona; use Persona;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   P : Persona.Persona;
begin
   -- Creación de una persona y asignación de un nombre
   Set_Nombre(P, "Juan");
   -- Saludar a la persona
   Saludar(P);
end Main;
