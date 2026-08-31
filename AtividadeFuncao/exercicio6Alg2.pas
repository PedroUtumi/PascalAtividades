Program exercicio6Alg2;
uses CRT;

const
	NUMEROS_ARRAY = 10;
  PESO_PROVA = 0.7;
  PESO_TRABALHO = 0.3;
  APROVADO = 6;

type
  notas = array[1..NUMEROS_ARRAY] of real;

var
	notasProvas, notasTrabalhos, notasFinais: notas;	
	resultado: real;
  i: integer;

function calcularNotaFinal(notaProva: real; notaTrabalho: real): real;
  var
    j: integer;
  
  begin
    for j := 1 to NUMEROS_ARRAY do
      begin
        calcularNotaFinal := (notaProva * PESO_PROVA) + (notaTrabalho * PESO_TRABALHO);
      end;
  end;

Begin
  for i := 1 to NUMEROS_ARRAY do
		begin
      repeat
			  write('Digite a nota de prova do aluno ', i, ': ');
			  readln(notasProvas[i]);
      until (notasProvas[i] >= 0) and (notasProvas[i] <= 10);

      repeat
        write('Digite a nota de trabalho do aluno ', i, ': ');
        readln(notasTrabalhos[i]);
      until (notasTrabalhos[i] >= 0) and (notasTrabalhos[i] <= 10);
      
      notasFinais[i] := calcularNotaFinal(notasProvas[i], notasTrabalhos[i]);  
		end;

  for i := 1 to NUMEROS_ARRAY do
    begin
      if notasFinais[i] >= APROVADO then writeln('Aluno ', i, ' aprovado!')
      else writeln('Aluno ', i, ' reprovado!');
    end;
End.