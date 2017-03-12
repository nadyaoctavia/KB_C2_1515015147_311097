PREDICATES
	nondeterm anak(STRING,STRING)
	nondeterm istri(STRING,STRING)
	nondeterm pria(STRING)
	nondeterm wanita(STRING)
	nondeterm ayah(STRING,STRING)
	nondeterm ibu(STRING,STRING)
	nondeterm cucu(STRING,STRING)
	nondeterm kakek(STRING,STRING)
	nondeterm adik(STRING,STRING)
	nondeterm usia(STRING,INTEGER)

CLAUSES
	anak("Jhon","James"). %jhon anak james
	anak("James","Peter"). % james anak peter
	anak("Sue","Ann"). %sue anak ann
	istri("Mary","Peter"). %mary istri peter
	istri("Ann","James"). % ann istri james
	pria("Jhon"). 
	pria("James").
	pria("Peter").
	wanita("Mary").
	wanita("Sue").
	wanita("Ann").
	usia("Jhon",10).
	usia("Sue",13).
 
ayah(A,B):-anak(B,A).
kakek(A,B):-ayah(A,C), ayah(C,B).
ibu(A,B):-istri(B,C), anak(A,C).
cucu(A,B):-anak(A,C), anak(C,B).
cucu(A,B):-anak(A,C), istri(C,D), anak(D,B).
adik(A,B):-usia(A,C), usia(B,D), C<D.
 

GOAL
cucu(A,B); 	%terdapat 2 solusi, dimana jhon dan sue merupakan cucu peter
ibu(A,B);	%terapat 2 solusi, dimana  james ibunya adalah mary , dan jhon ibunya adalah ann.
adik(A,B);	%berdasar klausa menghasilkan bahwa jhon adalah adik sue, karena ann dan james adalah suami istri.
kakek(A,B);	%berdasar klausa bahwa peter adalah kakek dari jhon
usia(A,10).	%menghasilkan yang berusia 10 adalah jhon
