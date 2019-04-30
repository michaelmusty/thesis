
Z := Integers();
Zxy<x, y> := PolynomialRing(Z, 2);
Zxy;
M := Matrix(2, [ x, y, x+y, x-y ] );
M;
Determinant(M);
Factorisation($1);
M^-1;
//
sum := 0; i := 0;
time while i le 10^6 do
   sum := sum + i;
   i := i + 1;
end while;
time sum eq &+ [1..10^6];
//
// now categories and parents
//  
Zw<w> := PolynomialRing(Integers());
ExtendedCategory(Zw);
Type(Zw);
Parent(w);
ISA(RngUPolElt[RngInt], RngUPolElt);
