Program exercicio2Alg2;
uses CRT;

const
	NUMEROS_ARRAY = 12;

var
	arrayNumeros: array[1..NUMEROS_ARRAY] of integer;	
	numeroProcurar, resultado, contador, i: integer;

function contarOcorrencias(valorProcurado: integer): integer;
	var
		j: integer;
	
	begin
		contador := 0;
		for j := 1 to NUMEROS_ARRAY do
			begin
				if arrayNumeros[j] = valorProcurado then contador := contador + 1;
			end;
		
		contarOcorrencias := contador;
	end;

Begin
	for i := 1 to NUMEROS_ARRAY do
		begin
			write('Digite o numero ', i, ': ');
			readln(arrayNumeros[i]);
		end;

	write('Digite um numero para ser procurado: ');
	readln(numeroProcurar);

	resultado := contarOcorrencias(numeroProcurar);
	writeln('Ocorrencias do numero ', numeroProcurar, ': ', resultado);
End.