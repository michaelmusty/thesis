// Places and divisors
//
  
k := GF(5);
kx<x> := PolynomialRing(k);
kxy<y> := PolynomialRing(kx);
F<a> := FunctionField(y^2 + x^3 + 1);
//
Zeros(a);
Poles(a);
Divisor(a);
P := Zeros(a)[2];
//
Fz<z> := PolynomialRing(F);
G<b> := FunctionField(z^2 + a + F!x);
Decomposition(G, P);  
DecompositionType(G, P);  
//
Degree(P);
ResidueClassField(P);
Valuation(a, P);
Completion(F, P);
Evaluate(a+2, P);
R, h := ResidueClassField(P);
h(a+2);
(R.1)@@h;
//
123 * P;
CanonicalDivisor(F);
//
// Riemann-Roch space etc.
//
Genus(F);  
Q := Zeros(a+1)[1];
D := 3*P - Q;
Dimension(D);
IndexOfSpeciality(D);
Basis(D);
V, f := RiemannRochSpace(D);
V;
f;
F<a> := FunctionField( y^4 + (2*x^3 + x + 2)*y^2 + x^6 + 
   x^4 + 2*x^3 + 2*x^2 + x + 1 );
Genus(F);
Basis(Identity(DivisorGroup(F)));
MinimalPolynomial($1[1]);
ExactConstantField(F);


