Program atividade04;
uses crt;
var
	salario, gratificacao, imposto, novoSalario: real;

Begin
  write('Qual eh seu salario?: ');
  readln(salario);
  
  gratificacao := 0.05 * salario;
  imposto := 0.07 * salario;
  novoSalario := salario  - imposto + gratificacao;
  
	writeln('novo salario eh: ', novoSalario:6:2);
End.