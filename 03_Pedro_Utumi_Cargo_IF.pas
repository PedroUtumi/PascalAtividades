Program atividade12;

var
	codigoCargo: integer;
	cargo: string;
	salario, aumento, novoSalario: real;

const
	ESCRITUARIO = 1;
	SECRETARIO = 2;
	CAIXA = 3;
	GERENTE = 4;
	DIRETOR = 5;
	
Begin
	write('Digite o codigo do cargo(1, 2, 3, 4, 5): ');
	readln(codigoCargo);
	
	write('Digite o salario: ');
	readln(salario);
	
	if codigoCargo = ESCRITUARIO then
		begin
			cargo := 'Escrituario';
			aumento := salario * (50/100);
			novoSalario := salario + aumento;
		end
  else if codigoCargo = SECRETARIO then
		begin
			cargo := 'Secretario';
			aumento := salario * (35/100);
			novoSalario := salario + aumento;
		end
	else if codigoCargo = CAIXA then
		begin
			cargo := 'Caixa';
			aumento := salario * (25/100);
			novoSalario := salario + aumento;
		end
	else if codigoCargo = GERENTE then
		begin
			cargo := 'Gerente';
			aumento := salario * (10/100);
			novoSalario := salario + aumento;
		end
	else if codigoCargo = DIRETOR then
		begin
			cargo := 'Diretor';
			aumento := 0;
			novoSalario := salario + aumento;
		end
	else
		begin
			cargo := 'Sem informacoes';
			salario := 0;
			writeln('Digite um numero valido');
		end;
	writeln();
	writeln('Cargo exercido: ', cargo);
	writeln('Salario recebido: R$', salario:4:2);
	writeln('Aumento recebido: R$', aumento:4:2);
	writeln('Novo salario recebido: R$', novoSalario:4:2);
End.