package body Persona is

   -- Implementación del procedimiento Set_Nombre
   procedure Set_Nombre(P : in out Persona; Nombre : in String) is
   begin
      P.Nombre := Nombre;
   end Set_Nombre;

   -- Implementación de la función Get_Nombre
   function Get_Nombre(P : Persona) return String is
   begin
      return P.Nombre;
   end Get_Nombre;

   -- Implementación del procedimiento Saludar
   procedure Saludar(P : Persona) is
   begin
      Put_Line("Hola, mi nombre es " & Get_Nombre(P));
   end Saludar;

end Persona;
