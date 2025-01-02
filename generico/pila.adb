-- pila.adb: Cuerpo del paquete genérico
package body Pila is

   -- Procedimiento para agregar un elemento a la pila
   procedure Push(Item : in Elemento) is
   begin
      if Pila_Tipo.Top < 100 then
         Pila_Tipo.Top := Pila_Tipo.Top + 1;
         Pila_Tipo.Elementos(Pila_Tipo.Top) := Item;
      else
         Put_Line("Pila llena");
      end if;
   end Push;

   -- Función para quitar el elemento superior de la pila
   function Pop return Elemento is
   begin
      if Pila_Tipo.Top > 0 then
         return Pila_Tipo.Elementos(Pila_Tipo.Top);
      else
         Put_Line("Pila vacía");
         return Elemento'(0);  -- Valor predeterminado para el tipo Elemento
      end if;
   end Pop;

   -- Función para verificar si la pila está vacía
   function Is_Empty return Boolean is
   begin
      return Pila_Tipo.Top = 0;
   end Is_Empty;

end Pila;
