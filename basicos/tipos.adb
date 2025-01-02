with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;

procedure TiposDeDatos is
   -- Tipos de datos básicos
   Numero_Entero : Integer := 42;        -- Entero
   Numero_Real   : Float := 3.14;        -- Número en punto flotante
   Es_Valido     : Boolean := True;      -- Booleano

   -- Tipos compuestos
   Nombre : String := "Ada";             -- Cadena de longitud fija
   Lista  : array (1 .. 3) of Integer := (1, 2, 3);  -- Arreglo

   -- Tipos de datos definidos por el usuario
   type Dia_Semana is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);  -- Enumerado
   Dia : Dia_Semana := Lunes;            -- Inicialización con valor Lunes

   type Coordenada is record             -- Registro
      X : Float;
      Y : Float;
   end record;
   Punto : Coordenada := (X => 1.0, Y => 2.0); -- Inicialización de un punto

begin
   -- Mostrar valores de tipos básicos
   Put_Line("Tipos básicos:");
   Put_Line("Entero: " & Integer'Image(Numero_Entero));  -- Muestra el valor entero
   Put_Line("Real: " & Float'Image(Numero_Real));        -- Muestra el valor real
   Put_Line("Booleano: " & Boolean'Image(Es_Valido));    -- Muestra el valor booleano

   -- Mostrar valores de un enumerado
   Put_Line("Día de la semana: " & Dia_Semana'Image(Dia)); -- Muestra el valor del enumerado

   -- Mostrar valores de un registro
   Put_Line("Coordenada (X, Y): (" & Float'Image(Punto.X) & ", " & Float'Image(Punto.Y) & ")"); -- Muestra el valor del registro

   -- Mostrar valores de un arreglo
   Put_Line("Lista de enteros:");
   for I in Lista'Range loop
      Put(Integer'Image(Lista(I)));    -- Muestra cada valor del arreglo
      Put(" ");
   end loop;
   New_Line;  -- Nueva línea después de mostrar el arreglo

   -- Mostrar una cadena
   Put_Line("Cadena: " & Nombre);  -- Muestra el valor de la cadena
   
end TiposDeDatos;
