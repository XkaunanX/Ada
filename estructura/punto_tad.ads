-- Archivo de Especificación: punto_tad.ads
package Punto_TAD is

   -- Tipo abstracto de datos para un Punto 2D
   type Punto is private;

   -- Función para crear un punto
   function Crear(X, Y : Integer) return Punto;

   -- Función para calcular la distancia entre dos puntos
   function Calcular_Distancia(P1, P2 : Punto) return Float;

private

   -- Representación privada del TAD Punto
   type Punto is record
      X : Integer;
      Y : Integer;
   end record;

end Punto_TAD;

