with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Manejo_Archivos is
   -- Declaración de variables
   Archivo_Entrada : File_Type;
   Archivo_Salida  : File_Type;
   Numero : Integer;
   Real_Num : Float;
   Linea : String (1..100);
   Longitud : Natural;
   
begin
   -- Abrir el archivo de entrada para lectura
   Open (File => Archivo_Entrada, Mode => In_File, Name => "entrada.txt");
   
   -- Leer el archivo línea por línea
   while not End_Of_File(Archivo_Entrada) loop
      -- Leer una línea del archivo de texto
      Get_Line (File => Archivo_Entrada, Item => Linea, Last => Longitud);
      Put_Line ("Leída: " & Linea(1..Longitud));
   end loop;

   -- Cerrar el archivo de entrada
   Close (Archivo_Entrada);
   
   -- Abrir el archivo de salida para escritura
   Open (File => Archivo_Salida, Mode => Out_File, Name => "salida.txt");

   -- Escribir datos en el archivo de salida
   Put_Line (Archivo_Salida, "Este es un ejemplo de escritura en un archivo.");
   Put(Archivo_Salida, "Número: ");
   Put(Item => 42);
   New_Line(Archivo_Salida);
   Put(Archivo_Salida, "Número Real: ");
   Put(Item => 3.14159);
   New_Line(Archivo_Salida);

   -- Cerrar el archivo de salida
   Close (Archivo_Salida);
   
   -- Mensaje final
   Put_Line ("Los datos han sido leídos y escritos en los archivos.");
   
end Manejo_Archivos;
