Program exercicio1Alg2;
uses CRT;

const
	NUMEROS_ARRAY = 15;
	NAO_ENCONTRADO = -1;

var
	arrayNumeros: array[1..NUMEROS_ARRAY] of integer;
	numeroASerPesquisado, i, resultadoPosicao: integer;

function procurarNumero(valorProcurado: integer): integer;
	var
		j: integer;
		
	begin
		for j := 1 to NUMEROS_ARRAY do
			begin
				if (arrayNumeros[j] = valorProcurado) then
				 	begin
				 		procurarNumero := j;
				 		exit;
				 	end;
				procurarNumero := NAO_ENCONTRADO;
			end;
	end;

Begin
	for i := 1 to NUMEROS_ARRAY do
		begin
			write('Digite o numero ', i, ': ');
			readln(arrayNumeros[i]);
		end;
	
	write('Digite um numero a ser procurado: ');
	readln(numeroASerPesquisado);
	
	resultadoPosicao := procurarNumero(numeroASerPesquisado);
	if resultadoPosicao = NAO_ENCONTRADO then writeln('Numero', numeroASerPesquisado, ' nao foi encontrado')
	else writeln('Numero ', numeroASerPesquisado, ' foi encontrado na posicao ', resultadoPosicao);
End.