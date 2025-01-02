with Ada.Text_IO;              -- Biblioteca para entrada/salida de texto
with Ada.Integer_Text_IO;      -- Biblioteca para manejo de enteros
with Ada.Float_Text_IO;        -- Biblioteca para manejo de números reales

procedure Entrada_Salida_Ejemplo is

   -- Variables para los ejemplos
   Texto : String(1..20);      -- Cadena de texto
   Longitud : Natural;         -- Longitud de la cadena ingresada
   Numero_Entero : Integer;    -- Número entero
   Numero_Flotante : Float;    -- Número flotante

begin

   -- Entrada y Salida de Texto
   Put_Line("Por favor, ingrese un texto:");
   Get_Line(Texto, Longitud);  -- Leer una línea de texto
   Put_Line("Texto ingresado: " & Texto(1..Longitud));

   -- Entrada y Salida de Números Enteros
   Put_Line("Por favor, ingrese un número entero:");
   Ada.Integer_Text_IO.Get(Numero_Entero);  -- Leer un número entero
   Ada.Integer_Text_IO.Put("Número entero ingresado: ");
   Ada.Integer_Text_IO.Put(Numero_Entero);  -- Mostrar el número entero
   New_Line;

   -- Entrada y Salida de Números Flotantes
   Put_Line("Por favor, ingrese un número flotante:");
   Ada.Float_Text_IO.Get(Numero_Flotante);  -- Leer un número flotante
   Ada.Float_Text_IO.Put("Número flotante ingresado: ");
   Ada.Float_Text_IO.Put(Numero_Flotante, Fore => 1, Aft => 5, Exp => 0);  -- Mostrar el número flotante
   New_Line;

end Entrada_Salida_Ejemplo;
