with Empleado; use Empleado;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   E : Empleado.Empleado;
   G : Empleado.Gerente;
begin
   -- Crear un Empleado y un Gerente
   Set_Nombre(E, "Carlos");
   Set_Nombre(G, "Ana");
   G.Departamento := "Ventas";

   -- Saludar a un Empleado
   Saludar(E);

   -- Saludar a un Gerente
   Saludar_Gerente(G);
end Main;
