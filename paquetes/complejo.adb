-- complejo.adb: Cuerpo del paquete para trabajar con números complejos
package body Complejo is

   -- Función para sumar dos números complejos
   function Sumar(C1, C2 : Complejo_Tipo) return Complejo_Tipo is
   begin
      return (Real => C1.Real + C2.Real, Imaginario => C1.Imaginario + C2.Imaginario);
   end Sumar;

   -- Función para restar dos números complejos
   function Restar(C1, C2 : Complejo_Tipo) return Complejo_Tipo is
   begin
      return (Real => C1.Real - C2.Real, Imaginario => C1.Imaginario - C2.Imaginario);
   end Restar;

   -- Función para multiplicar dos números complejos
   function Multiplicar(C1, C2 : Complejo_Tipo) return Complejo_Tipo is
   begin
      return (Real => C1.Real * C2.Real - C1.Imaginario * C2.Imaginario,
              Imaginario => C1.Real * C2.Imaginario + C1.Imaginario * C2.Real);
   end Multiplicar;

end Complejo;
