
V := VectorSpace(GF(5), 3);
V.1; V.2; V.3;
V1, f1 := sub< V | V.1, V.3 >;
V2, f2 := sub< V | V.2, V.3 >;
V1;
f1;
V1 meet V2;
V eq V1 + V2;
//
W, f := quo< V | V1 >;
W;
f;
f(V.1); f(V.2); f(V.3);
W.1 @@ f;
//
//
f := hom< V -> V | [ V.1 + V.3, V.1, V.2 ] >;
//
//
Zx<x> := PolynomialRing(Integers());
Type(1);
Zx ! 1;
Type($1);
0 * x eq 0;
v := Eltseq( x^2 + 3*x + 5 );
v;
Zx ! v;
Zxy<y> := PolynomialRing(Zx);
Zxy ! x;


