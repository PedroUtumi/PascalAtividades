program atividadeIdade;

var
  anoNascimento, anoAtual: array[1..3] of integer;
  diaNasc, mesNasc, anoNasc, idade, meses: integer;

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

  if (anoAtual[2] < anoNascimento[2]) or ((anoAtual[2] = anoNascimento[2]) and (anoAtual[1] < anoNascimento[1])) then
  begin
    idade := idade - 1;
    meses := (12 - anoNascimento[2]) + anoAtual[2];

    if (anoAtual[1] < anoNascimento[1]) then
      meses := meses - 1;
  end
  else
  begin
    meses := anoAtual[2] - anoNascimento[2];
    if (anoAtual[1] < anoNascimento[1]) then
    begin
      if meses = 0 then
      begin
        idade := idade - 1;
        meses := 11;
      end
      else
        meses := meses - 1;
    end;
  end;

  writeln('Sua idade e: ', idade, ' anos e ', meses, ' meses.');
end.