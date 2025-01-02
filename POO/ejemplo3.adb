with Punto; use Punto;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   P1, P2, Resultado : Punto.Punto;
begin
   P1 := (X => 3, Y => 4);
   P2 := (X => 1, Y => 2);
   
   Resultado := P1 + P2;  -- Uso del operador sobrecargado
   Mostrar(Resultado);
end Main;
