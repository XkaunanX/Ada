package Persona is

   -- Definición del tipo de dato abstracto Persona
   type Persona is private;

   -- Procedimientos y funciones asociados
   procedure Set_Nombre(P : in out Persona; Nombre : in String);
   function Get_Nombre(P : Persona) return String;
   procedure Saludar(P : Persona);

private

   -- Representación interna de Persona
   type Persona is record
      Nombre : String(1..100);
   end record;

end Persona;
