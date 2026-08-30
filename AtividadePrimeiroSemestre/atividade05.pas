Program atividade05;
uses crt;
var
	base, altura, area: real;

Begin
	write('Digite base: ');
	readln(base);  

  write('Digite altura: ');
	readln(altura);
	
	area := base * altura;
	writeln('Area do retangulo eh: ', area:4:2);
End.