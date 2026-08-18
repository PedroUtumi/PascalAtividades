Program Pzim ;
USES CRT;
var
	primeiraNota, segundaNota, mediaNotas, mediaClasse: real;
	contador, contadorAprovados, contadorReprovados, contadorExames: integer;
	status: string;

const
	NOTA_MINIMA = 0;
	NOTA_MINIMA_EXAME = 3;
	NOTA_MINIMA_APROVADO = 7;
	NOTA_MAXIMA = 10;
	QUANTIDADE_ALUNOS = 6;
	
Begin
	status := '';
	mediaClasse := 0;
	mediaNotas := 0;
	contadorAprovados := 0;
	contadorReprovados := 0;
	contadorExames := 0;
	contador := 1;
	
	repeat
		repeat
	    write('Qual a primeira nota do ', contador, 'º aluno?: ');
	    readln(primeiraNota);
	
	    write('Qual a segunda nota do ', contador, 'º aluno?: ');
	    readln(segundaNota);
	
	    if (primeiraNota > NOTA_MAXIMA) or (segundaNota > NOTA_MAXIMA) or (primeiraNota < NOTA_MINIMA) or (segundaNota < NOTA_MINIMA) then writeln('Notas inválidas!');
		until (primeiraNota >= NOTA_MINIMA) and (primeiraNota <= NOTA_MAXIMA) and (segundaNota >= NOTA_MINIMA) and (segundaNota <= NOTA_MAXIMA);
		
		mediaNotas := (primeiraNota + segundaNota)/2;
		mediaClasse := mediaClasse + mediaNotas;
		
		if mediaNotas >= NOTA_MINIMA_APROVADO then
			begin
				contadorAprovados := contadorAprovados + 1;
				status := 'Aprovado';
			end
		else if (mediaNotas < NOTA_MINIMA_APROVADO) and (mediaNotas >= NOTA_MINIMA_EXAME) then
			begin
				contadorExames := contadorExames + 1;
				status := 'Exame';
			end
		else 
			begin
				contadorReprovados := contadorReprovados + 1;
				status := 'Reprovado';
			end;
		writeln(contador, 'º aluno = Média: ', mediaNotas:2:2, ' | Status: ', status);
		contador := contador + 1;
	until contador > QUANTIDADE_ALUNOS; 	
	mediaClasse := mediaClasse / QUANTIDADE_ALUNOS;
	writeln('Média da classe: ', mediaClasse:2:2, ' | Aprovados: ', contadorAprovados, ' | Reprovados: ', contadorReprovados, ' | Exames: ', contadorExames);
End.