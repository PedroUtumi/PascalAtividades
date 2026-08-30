Program exercicio3Alg2;
uses CRT;

const
	NUMEROS_ARRAY = 10;

var
	arrayNumeros: array[1..NUMEROS_ARRAY] of integer;	
	numeroSubstituto, numeroSubstituir, resultado, contador, i: integer;

function substituirValor(substituir: integer; substituto: integer): integer;
  var
    j: integer;

  begin
    contador := 0;
    for j := 1 to NUMEROS_ARRAY do
      begin
        if arrayNumeros[j] = substituir then
          begin
            arrayNumeros[j] := substituto;
            contador := contador + 1;
          end;
        
      end;
    
    if contador = 0 then writeln('Não achamos o valor para substituir');
    substituirValor := contador;
  end;

Begin
	for i := 1 to NUMEROS_ARRAY do
		begin
			write('Digite o numero ', i, ': ');
			readln(arrayNumeros[i]);
		end;

	write('Digite um numero para ser substituido: ');
	readln(numeroSubstituir);

	write('Digite um numero para entrar no lugar: ');
	readln(numeroSubstituto);

  resultado := substituirValor(numeroSubstituir, numeroSubstituto);

  if resultado > 0 then
    begin
      writeln('Valor a ser substituido: ', numeroSubstituir);
      writeln('Valor substituto: ', numeroSubstituto);
      writeln('Quantas vezes substituiu: ', resultado);    
      for i := 1 to NUMEROS_ARRAY do 
        begin
          if i = NUMEROS_ARRAY then writeln(arrayNumeros[i])
          else write(arrayNumeros[i], ', ');
        end;
    end;

End.