Program matrizes;
uses CRT;

const
	FIM_MATRIZ = 3;

var
	matriz: array[1..FIM_MATRIZ, 1..FIM_MATRIZ] of integer;
	i, j, somaValores, somaLinha, somaColuna: integer;

Begin
	somaValores := 0;
	for i := 1 to FIM_MATRIZ do
		begin
			for j := 1 to FIM_MATRIZ do
				begin
					write('Escreva o valor da matriz na posição [', i, ', ', j, ']: ');
					readln(matriz[i,j]);
					somaValores := somaValores + matriz[i,j]
				end;
		end;
		
	writeln('Soma dos valores: ', somaValores);

  for i := 1 to FIM_MATRIZ do
		begin
			for j := 1 to FIM_MATRIZ do
				begin
					write(matriz[i,j]:4);
				end;
			writeln();
		end;

  for i := 1 to FIM_MATRIZ do
		begin
			somaLinha := 0;
			for j := 1 to FIM_MATRIZ do
				begin
					somaLinha := somaLinha + matriz[i,j];
				end;
			writeln('Soma da Linha ', i, ': ', somaLinha)
		end;
	
	for j := 1 to FIM_MATRIZ do
		begin
			somaColuna := 0;
			for i := 1 to FIM_MATRIZ do
				begin
					somaColuna := somaColuna + matriz[i,j];
				end;
			writeln('Soma da coluna ', j, ': ', somaColuna);
		end;

  for i := 1 to FIM_MATRIZ do
		begin
			for j := 1 to FIM_MATRIZ do
				begin
					if (i = j) then writeln('Valor diagonal principal: ', matriz[i,j]);
				end;
		end;
	
  for i := 1 to FIM_MATRIZ do
		begin
			for j := 1 to FIM_MATRIZ do
				begin
					if (i + j = 4) then writeln('Valor diagonal secundaria: ', matriz[i,j]);
				end;
		end;
		
End.