// Some class field constructions
//  
  
k<w> := GF(4);
kx<x> := PolynomialRing(k);
kxy<y> := PolynomialRing(kx);
K<a> := FunctionField(y^4 + (w*x^2)*y^2 + y + w^3*x^3);
Genus(K);
L := Places(K, 1);
L;
M := 2*L[2] + 3*L[3];
time R, mR := RayClassGroup(M);
//
U := sub< R | L[1]@@mR >;
#quo< R | U >;
Genus(M, U);
DegreeOfExactConstantField(M, U);
NumberOfPlacesOfDegreeOne(M, U);
//
U := sub< R | 2*L[1]@@mR >;
#quo< R | U >;
Genus(M, U);
DegreeOfExactConstantField(M, U);
NumberOfPlacesOfDegreeOne(M, U);
//
T := Places(K, 2);  
U := sub< R | [ L[1]@@mR ] cat [ Q@@mR : Q in T ] >;
#quo< R | U >;
A := AbelianExtension(M, U);
A;
Genus(A);
DegreeOfExactConstantField(A);
NumberOfPlacesOfDegreeOne(A);
F := FunctionField(A);
F;
Fabs := UnderlyingField(F);
Fabs;
time Genus(Fabs);
time L := Places(Fabs, 1);
#L;

