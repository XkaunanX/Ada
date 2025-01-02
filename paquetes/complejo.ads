-- complejo.ads: Especificación del paquete para trabajar con números complejos
package Complejo is
   type Complejo_Tipo is record
      Real : Float;
      Imaginario : Float;
   end record;

   -- Procedimiento para sumar dos números complejos
   function Sumar(C1, C2 : Complejo_Tipo) return Complejo_Tipo;

   -- Procedimiento para restar dos números complejos
   function Restar(C1, C2 : Complejo_Tipo) return Complejo_Tipo;

   -- Procedimiento para multiplicar dos números complejos
   function Multiplicar(C1, C2 : Complejo_Tipo) return Complejo_Tipo;

end Complejo;
