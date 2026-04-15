Program atividade03;

var
	nota1, peso1, nota2, peso2, nota3, peso3,mediaPonderada: real;

Begin
	writeln('Escreva as notas: ');
	readln(nota1, nota2, nota3);
	writeln('Escreva os respectivos pesos: ');
	readln(peso1, peso2, peso3);
	mediaPonderada := ((nota1 * peso1)  + (nota2 * peso2) + (nota3 * peso3)) / (peso1 + peso2 + peso3);
	writeln('media eh: ', mediaPonderada:4:2);
	readln;
End.