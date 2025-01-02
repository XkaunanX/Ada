package body Punto is

   -- Implementación de la sobrecarga del operador "+"
   function "+"(P1, P2 : Punto) return Punto is
   begin
      return (X => P1.X + P2.X, Y => P1.Y + P2.Y);
   end "+";

   -- Implementación de Mostrar
   procedure Mostrar(P : Punto) is
   begin
      Put_Line("Punto (" & Integer'Image(P.X) & ", " & Integer'Image(P.Y) & ")");
   end Mostrar;

end Punto;
