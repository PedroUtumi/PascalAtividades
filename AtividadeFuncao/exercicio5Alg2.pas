Program exercicio5Alg2;
uses CRT;

const
	NUMEROS_ARRAY = 10;

type
  vetorPrecos = array[1..NUMEROS_ARRAY] of real;	

var
	arrayNumeros, resultado: vetorPrecos;	
	valorTotalAntes, valorTotalDepois, descontoPercentual, preco: real;
  i: integer;

function aplicarDesconto(percentual: real): vetorPrecos;
  var
    j: integer;
    vetorDescontado: vetorPrecos;
  
  begin
    valorTotalDepois := 0;
    for j := 1 to NUMEROS_ARRAY do
      begin
        vetorDescontado[j] := arrayNumeros[j] * (1 - percentual / 100);
        valorTotalDepois := valorTotalDepois + vetorDescontado[j];
      end;
    
    aplicarDesconto := vetorDescontado;
  end;

Begin
  Randomize;
  valorTotalAntes := 0;
	for i := 1 to NUMEROS_ARRAY do
		begin
      preco := Random * 100; // Usando numeros de 1 a 100
			writeln('Preco ', i, ': R$', preco:0:2);
      arrayNumeros[i] := preco;
      valorTotalAntes := valorTotalAntes + arrayNumeros[i];
		end;

  repeat
    write('Digite quantos de desconto voce quer: ');
    readln(descontoPercentual);
  until (descontoPercentual >= 0) and (descontoPercentual <= 100);

  write('Precos antigos: ');
  for i := 1 to NUMEROS_ARRAY do 
    begin
      if i = NUMEROS_ARRAY then writeln(arrayNumeros[i]:0:2)
      else write(arrayNumeros[i]:0:2, ', ');
    end;
  
  writeln('Desconto aplicado: ', descontoPercentual:0:2, '%');

  resultado := aplicarDesconto(descontoPercentual);

  write('Precos novos: ');
  for i := 1 to NUMEROS_ARRAY do 
    begin
      if i = NUMEROS_ARRAY then writeln(resultado[i]:0:2)
      else write(resultado[i]:0:2, ', ');
    end;
  
  writeln('Valor total antes: R$', valorTotalAntes:0:2);
  writeln('Valor total depois: R$', valorTotalDepois:0:2);
End.