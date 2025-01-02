-- main.adb: Programa principal
with Ada.Text_IO; use Ada.Text_IO;
with Pila;         -- Usamos el paquete Pila

procedure Main is
   type Elemento is new Integer;   -- Usamos Integer como el tipo para la pila
   package Pila_Integer is new Pila(Elemento);  -- Crear una pila de enteros

begin
   -- Usamos la pila de enteros
   Pila_Integer.Push(10);
   Put_Line("Elemento en el tope de la pila: " & Integer'Image(Pila_Integer.Pop));
   
   Pila_Integer.Push(20);
   Put_Line("Elemento en el tope de la pila: " & Integer'Image(Pila_Integer.Pop));
end Main;
