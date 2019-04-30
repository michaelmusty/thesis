// Global function fields
//
  
k := GF(5);
kx<x> := PolynomialRing(k);
kxy<y> := PolynomialRing(kx);
F<a> := FunctionField(y^3 + x^4 + 1);
C, f := ClassGroup(F);
C;
f;
D := f(C.3);
D;
IsPrincipal(6*D);
IsPrincipal(4*D);
s, r := IsPrincipal(12*D);
s;
r;
S := SequenceToSet(Places(F, 1));
U, f := SUnitGroup(S);
f(U.2);
HasseWittInvariant(F);
