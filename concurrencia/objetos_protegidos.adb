with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_Objetos_Protegidos is

   -- Declaración de un objeto protegido
   protected type Contador is
      procedure Incrementar;
      function Obtener_Valor return Integer;
   private
      Valor : Integer := 0;
   end Contador;

   protected body Contador is
      procedure Incrementar is
      begin
         Valor := Valor + 1;  -- Incrementar el valor
      end Incrementar;

      function Obtener_Valor return Integer is
      begin
         return Valor;  -- Obtener el valor
      end Obtener_Valor;
   end Contador;

   -- Instanciar el objeto protegido
   C : Contador;

   -- Declaración de tarea
   task type Tarea_Incremento;
   
   task body Tarea_Incremento is
   begin
      for I in 1..5 loop
         C.Incrementar;  -- Incrementar el contador
      end loop;
   end Tarea_Incremento;

   -- Declaración de otra tarea
   task type Tarea_Leer_Valor;
   
   task body Tarea_Leer_Valor is
   begin
      delay 1.0;  -- Esperar para que las tareas incrementen
      Put_Line("Valor del contador: " & Integer'Image(C.Obtener_Valor));
   end Tarea_Leer_Valor;

   -- Instanciar las tareas
   Tarea1 : Tarea_Incremento;
   Tarea2 : Tarea_Incremento;
   Tarea3 : Tarea_Leer_Valor;

begin
   -- Las tareas se ejecutarán concurrentemente
   Put_Line("Iniciando tareas...");
   delay 2.0;
   Put_Line("Tareas finalizadas.");
end Ejemplo_Objetos_Protegidos;
