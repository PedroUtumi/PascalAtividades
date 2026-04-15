Program atividade02;

var
	nota1, nota2, nota3, mediaAritmetica: real;

Begin
	readln(nota1, nota2, nota3);
	mediaAritmetica := (nota1 + nota2 + nota3) / 3;
	writeln('media eh: ', mediaAritmetica:4:2);
	readln;
End.