Program exercicio2Alg2;
uses CRT;

const
	NUMEROS_ARRAY = 12;

var
	arrayNumeros: array[1..NUMEROS_ARRAY] of integer;
	
	
function contarOcorrencias(valorProcurado: integer): integer;
	var
		j, contador: integer;
	
	begin
		for j := 1 to NUMEROS_ARRAY do
			begin
				if arrayNumeros[j] = valorProcurado then contador := contador + 1
			end;
	end;

Begin
  
End.