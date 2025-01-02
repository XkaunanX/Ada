with Ada.Text_IO; use Ada.Text_IO;

procedure Ejemplo_Tareas is

   task type Tarea_Imprimir;  -- Declaración de un tipo de tarea

   task body Tarea_Imprimir is
   begin
      Put_Line("Esta es una tarea concurrente.");
   end Tarea_Imprimir;

   -- Declaración de tareas
   Tarea1 : Tarea_Imprimir;
   Tarea2 : Tarea_Imprimir;

begin
   -- Iniciar tareas concurrentes
   Put_Line("Iniciando tareas...");
   delay 2.0;  -- Pausa para permitir que las tareas se ejecuten
   Put_Line("Tareas finalizadas.");
end Ejemplo_Tareas;
