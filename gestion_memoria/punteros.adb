with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_Punteros is
   -- Declaración de un tipo de puntero a un Integer
   type Int_Ptr is access Integer;

   -- Declaración de una variable de tipo Integer
   Numero : Integer := 10;

   -- Declaración de un puntero
   Ptr : Int_Ptr;

begin
   -- Asignar la dirección de la variable Numero al puntero
   Ptr := access Numero;

   -- Imprimir el valor al que apunta el puntero
   Put_Line("El valor de Numero a través del puntero es: " & Integer'Image(Ptr.all));
end Ejemplo_Punteros;
