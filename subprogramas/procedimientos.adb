with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_Procedimiento is
   -- Declaración de una variable
   Numero : Integer := 10;

   -- Procedimiento que imprime el valor de una variable
   procedure Imprimir_Variable(X : Integer) is
   begin
      Put_Line("El valor de X es: " & Integer'Image(X));
   end Imprimir_Variable;

begin
   -- Llamada al procedimiento
   Imprimir_Variable(Numero);
end Ejemplo_Procedimiento;
