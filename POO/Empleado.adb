package body Empleado is

   -- Implementación de Set_Nombre para Empleado
   procedure Set_Nombre(E : in out Empleado; Nombre : in String) is
   begin
      E.Nombre := Nombre;
   end Set_Nombre;

   -- Implementación de Get_Nombre para Empleado
   function Get_Nombre(E : Empleado) return String is
   begin
      return E.Nombre;
   end Get_Nombre;

   -- Implementación de Saludar para Empleado
   procedure Saludar(E : Empleado) is
   begin
      Put_Line("Hola, soy " & Get_Nombre(E));
   end Saludar;

   -- Implementación de Saludar para Gerente
   procedure Saludar_Gerente(G : Gerente) is
   begin
      Put_Line("Hola, soy el gerente " & Get_Nombre(G) & " del departamento " & G.Departamento);
   end Saludar_Gerente;

end Empleado;
