-- pila.ads: Especificación del paquete genérico
package Pila is
   type Pila_Tipo is private;

   -- Procedimiento para agregar un elemento a la pila
   procedure Push(Item : in Elemento);

   -- Función para quitar el elemento superior de la pila
   function Pop return Elemento;

   -- Función para verificar si la pila está vacía
   function Is_Empty return Boolean;

private
   type Pila_Tipo is record
      Elementos : array(1..100) of Elemento;  -- Arreglo para almacenar los elementos
      Top : Integer := 0;  -- Índice del último elemento
   end record;
end Pila;
