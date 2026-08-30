Program exercicio1Alg2;
uses CRT;

const
	NUMEROS_ARRAY = 15;

var
	arrayNumeros: array[1..NUMEROS_ARRAY] of integer;
	limiteInferior, limiteSuperior, i, resultado, contador: integer;

function contarIntervalo(limiteInferior: integer; limiteSuperior: integer): integer;
  var
    j: integer;

  begin
    contador := 0;
    for j := 1 to NUMEROS_ARRAY do
      begin
        if (arrayNumeros[j] >= limiteInferior) and (arrayNumeros[j] <= limiteSuperior) then contador := contador + 1; 
      end;

    if contador = 0 then writeln('Não tem nenhum numero no array pertencente ao intervalo');
    contarIntervalo := contador;
  end;

Begin
	for i := 1 to NUMEROS_ARRAY do
		begin
			write('Digite o numero ', i, ': ');
			readln(arrayNumeros[i]);
		end;

  repeat 
	  write('Digite um numero para ser limite inferior: ');
	  readln(limiteInferior);

	  write('Digite um numero para ser limite superior: ');
	  readln(limiteSuperior);
  until limiteSuperior > limiteInferior;

  resultado := contarIntervalo(limiteInferior, limiteSuperior);

  if resultado > 0 then
    begin
      writeln('Limite inferior: ', limiteInferior);
      writeln('Limite superior: ', limiteSuperior);
      writeln('Quantos numeros existem nesse intervalo: ', resultado);    
    end;

End.