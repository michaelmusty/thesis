// Differentials and Weierstrass places
//  
  
k := GF(5);
kx<x> := PolynomialRing(k);
kxy<y> := PolynomialRing(kx);
F<a> := FunctionField(y^2 + x^3 + 1);
//  
Differential(F!x);
Differential(a);
z := (1/a)*Differential(a);
D := Divisor(z);
D;
Residue(z, Support(D)[1]);
BasisOfHolomorphicDifferentials(F);
Divisor($1[1]);
//
// Weierstrass places
//
k := GF(7^2);
kx<x> := PolynomialRing(k);
kxy<y> := PolynomialRing(kx);
F<a> := FunctionField(y^4 + x^7 + x);
#WeierstrassPlaces(F);
#Places(F, 1);
GapNumbers(F);
// takes 22 seconds
{* GapNumbers(P) : P in WeierstrassPlaces(F) *};
