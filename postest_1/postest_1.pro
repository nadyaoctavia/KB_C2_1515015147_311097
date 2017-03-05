PREDICATES

suami(STRING,STRING)
isteri(STRING,STRING)
ibu(STRING,STRING)
ayah(STRING,STRING)
nondeterm menikah(STRING,STRING)


CLAUSES
suami("muktar","kiyah"). % muktar adalah suami dari kiyah
isteri("kiyah","muktar"). % kiyah adalah isteri dari muktar
ibu("kiyah","mutia"). % kiyah adalah ibu dari mutia
ayah("muktar","kholik"). % muktar adalah ayah dari kholik


menikah(X,Y):-suami(X,Y),isteri(Y,X). % suami (X,Y) dan isteri (Y,X)



GOAL
menikah(X,Y).
