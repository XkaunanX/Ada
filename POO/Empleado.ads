package Empleado is

   -- Definición de la clase base
   type Empleado is abstract tagged private;

   procedure Set_Nombre(E : in out Empleado; Nombre : in String);
   function Get_Nombre(E : Empleado) return String;

   -- Clase derivada
   type Gerente is new Empleado with private;

   procedure Saludar(E : Empleado);
   procedure Saludar_Gerente(G : Gerente);

private

   -- Representación interna de Empleado
   type Empleado is record
      Nombre : String(1..100);
   end record;

   -- Representación interna de Gerente
   type Gerente is new Empleado with record
      Departamento : String(1..100);
   end record;

end Empleado;
