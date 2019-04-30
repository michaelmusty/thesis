

// Klein quartic, has maximal number of automorphisms

k := GF(43);
kxyf<x,y> := RationalFunctionField(k, 2 : Global := true);
kxy<x,y> := PolynomialRing(k, 2 : Global := true);
f := y*x^3 + y^3 + x;
F<xx,yy> := FunctionField(f);
L := Automorphisms(F);
n := Numeration(Set(WeierstrassPlaces(F)));
G, h, K := AutomorphismGroup(F, n);
G;
h;
K;
V, n := SpaceOfDifferentialsFirstKind(F);
G, h, K := AutomorphismGroup(F, n);
[ < f(xx), f(yy) > : f in L ];
g := Evaluate(f, [x+y, x-y] );  
g := Evaluate(g, [x+y^2, y] );  
G := FunctionField(g);
Genus(G);
C:= FunctionFieldCategory();
ok, h := IsIsomorphic(C)(F, G);
ok;
h(xx);
h(yy);
Evaluate(f, [ h(xx), h(yy) ] );
ok, hinv := HasInverse(C)(h);
ok;
S := Places(F, 1);
Conorm(h, S[1]);
Cotrace(h, Differential(xx));
kxf<x> := RationalFunctionField(k);
ok, m := HasMorphismFromImages(C)(kxf, F, [ xx + yy ]);
Degree(C)(m);
Degree(xx + yy);
ok, m := HasMorphismFromImages(C)(F, F, [ xx^43, yy^43 ]);
Degree(C)(m);
