Program atividadeCalculadoraPascal;

var
	num1, num2, soma, multiplicacao, subtracao: integer;
	divisao: real;
	operacao: char;

Begin
	write('Digite numero 1: ');
	readln(num1);
	write('Digite numero 2: ');
	readln(num2);
  	write('Digite operacao: ');
	readln(operacao);
	
	case operacao of
		'+': begin
					soma := num1 + num2;
					writeln('soma eh: ', soma);
				 end;
		'-': begin
					subtracao := num1 - num2;
					writeln('subtracao eh: ', subtracao);
				 end;
		'*': begin
					multiplicacao := num1 * num2;
					writeln('multiplicacao eh: ', multiplicacao);
				 end;
		'/': begin
					if num2 = 0 then
						begin
							writeln('Não existe divisao por 0');
						end
					else
						begin
							divisao := num1 / num2;
							writeln('divisao eh: ', divisao:4:2);
						end;
					end;
	else
    	writeln('Opcao invalida');
  end;
End.
