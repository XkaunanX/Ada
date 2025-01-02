with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_Heap is
   -- Declaración de un tipo de puntero a un Integer
   type Int_Ptr is access Integer;

   -- Crear un puntero dinámico (en el heap)
   Ptr : Int_Ptr;

begin
   -- Asignar memoria dinámicamente para un Integer
   Ptr := new Integer'(42);  -- Asigna memoria en el heap para un Integer

   -- Imprimir el valor del Integer en el heap
   Put_Line("El valor almacenado en el heap es: " & Integer'Image(Ptr.all));

   -- Liberar la memoria (opcional, Ada lo maneja automáticamente al final del bloque)
   -- No es necesario liberar explícitamente en Ada, ya que el recolector de basura se encarga.
end Ejemplo_Heap;
