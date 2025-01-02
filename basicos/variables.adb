with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_Variables is
   -- Declaración de variables
   entero : Integer := 10;
   decimal : Float := 3.14;
   texto : String (1 .. 5) := ( 'H', 'o', 'l', 'a', ' ' );
   booleano : Boolean := True;
begin
   -- Imprimir el valor de las variables
   Put_Line("El valor de entero es: " & Integer'Image(entero));
   Put_Line("El valor de decimal es: " & Float'Image(decimal));
   Put_Line("El valor de texto es: " & texto);
   if booleano then
      Put_Line("El valor de booleano es: True");
   else
      Put_Line("El valor de booleano es: False");
   end if;
end Ejemplo_Variables;
