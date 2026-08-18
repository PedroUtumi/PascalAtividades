program atividadeIdade;

var
  anoNascimento, anoAtual: array[1..3] of integer;
  diaNasc, mesNasc, anoNasc, idade: integer;

begin

  write('Qual dia voce nasceu: ');
  readln(diaNasc);
  
  write('Qual mes voce nasceu: ');
  readln(mesNasc);
  
	write('Qual ano voce nasceu: ');
  readln(anoNasc);

  anoNascimento[1] := diaNasc;
  anoNascimento[2] := mesNasc;
  anoNascimento[3] := anoNasc;

  anoAtual[1] := 17; 
  anoAtual[2] := 4;
  anoAtual[3] := 2026;

  idade := anoAtual[3] - anoNascimento[3];

  if anoNascimento[2] > anoAtual[2] then
	  begin
	    idade := idade - 1;
	  end
  else if anoNascimento[2] = anoAtual[2] then
	  begin
	
	    if anoNascimento[1] > anoAtual[1] then
		    begin
		      idade := idade - 1;
		    end;
  end;

  writeln('Sua idade e: ', idade);
end.