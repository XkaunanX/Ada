with Ada.Numerics;  use Ada.Numerics;
with Ada.Numerics.Elementary_Functions;  use Ada.Numerics.Elementary_Functions;

package body Punto_TAD is

   -- Implementación de la función Crear
   function Crear(X, Y : Integer) return Punto is
   begin
      return (X => X, Y => Y);
   end Crear;

   -- Implementación de la función Calcular_Distancia
   function Calcular_Distancia(P1, P2 : Punto) return Float is
      DX : Integer := P2.X - P1.X;
      DY : Integer := P2.Y - P1.Y;
   begin
      return Float(Sqrt(Float(DX*DX + DY*DY)));  -- Calcular la raíz cuadrada
   end Calcular_Distancia;

end Punto_TAD;  -- Fin de la implementación del paquete Punto_TAD