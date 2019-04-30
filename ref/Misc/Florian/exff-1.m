// Creation of function fields
//  
k := GF(5);
kx<x> := PolynomialRing(k);
kxy<y> := PolynomialRing(kx);
//
F<a> := FunctionField(y^2 + x^3 + 1);
F;
F.1;
BaseRing(F);
Fz<z> := PolynomialRing(F);
G<b> := FunctionField(z^2 + a + F!x);
G;
G.1;
BaseRing(G);
//
Gabs<c> := UnderlyingField(G);
Gabs;
Degree(Gabs);
Gabs!G.1;
H := UnderlyingField(G, k);
H;
Degree(H);
RationalExtensionRepresentation(H);

