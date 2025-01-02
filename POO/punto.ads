package Punto is

   type Punto is private;
   function "+"(P1, P2 : Punto) return Punto;
   procedure Mostrar(P : Punto);

private

   type Punto is record
      X : Integer;
      Y : Integer;
   end record;

end Punto;
