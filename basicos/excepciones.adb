with Ada.Text_IO;              -- Biblioteca para entrada/salida de texto
with Ada.Integer_Text_IO;      -- Biblioteca para manejo de enteros

procedure Manejo_Excepciones is

   -- Definir una excepción personalizada
   Divide_By_Zero : exception;

   -- Variables para el ejemplo
   Numerador   : Integer;
   Denominador : Integer;
   Resultado   : Integer;

begin
   -- Solicitar al usuario que ingrese un numerador
   Put_Line("Ingrese el numerador:");
   Ada.Integer_Text_IO.Get(Numerador);

   -- Solicitar al usuario que ingrese un denominador
   Put_Line("Ingrese el denominador:");
   Ada.Integer_Text_IO.Get(Denominador);

   -- Intentar realizar la división
   begin
      -- Comprobar si el denominador es cero antes de dividir
      if Denominador = 0 then
         raise Divide_By_Zero; -- Lanzar una excepción personalizada si el denominador es cero
      else
         Resultado := Numerador / Denominador;
         Put_Line("El resultado de la división es: " & Integer'Image(Resultado));
      end if;
   exception
      -- Manejo de la excepción personalizada
      when Divide_By_Zero =>
         Put_Line("Error: No se puede dividir entre cero.");
   end;

   -- Continuar con el programa después de manejar la excepción
   Put_Line("El programa continúa después de manejar la excepción.");

end Manejo_Excepciones;
