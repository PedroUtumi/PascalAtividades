Program MediaAlturas;

var
	alturas: array[1..100] of real;
	alturaMedia: real;
	numeroPessoas, maioresMedia, contador: integer;

Begin
	alturaMedia := 0;
	maioresMedia := 0;
	
	write('Quantas pessoas tem?: ');
	readln(numeroPessoas);
	
	if (numeroPessoas < 0) or (numeroPessoas > 100) then
		begin
			writeln('Quantidade inválida...');
			exit;
		end;        

	for contador := 1 to numeroPessoas do
		begin
			write('Qual a altura dessa pessoa(em metros)?: ');
			readln(alturas[contador]);
			alturaMedia := alturaMedia + alturas[contador];
		end;
	alturaMedia := alturaMedia / numeroPessoas;
	
	for contador := 1 to numeroPessoas do
    if alturas[contador] > alturaMedia then maioresMedia := maioresMedia + 1;
  
  writeln('Media das alturas: ', alturaMedia:2:2, ' | Pessoas acima da média: ', maioresMedia);
End.