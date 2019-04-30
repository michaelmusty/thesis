

Z := Integers();
Z;
Zx<x> := PolynomialRing(Z);
Zx;
Factorisation(x^3 - 123);
Factorisation(3^3 * x^3 - 123 );
K<a> := NumberField(x^3 - 123);
K;
C := ClassGroup(K);
C;
Ky<y> := PolynomialRing(K);
Factorisation(y^3 - 123);
//
L := [ 1, 1, 2, 3, 4, 5, 4 ];
L;
Set(L);
L := [ "hi", "world", "hi" ];
Set(L);
