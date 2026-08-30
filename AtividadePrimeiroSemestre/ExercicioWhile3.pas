Program exercicioWhile3;

var
	contador, contadorAprovados, contadorReprovados, contadorExames: integer;
	situacao: string;
	nota1Avaliacao, nota2Avaliacao, mediaNotas, mediaTurma: real;

const
	QUANTIDADE_ALUNOS = 6;
	REPROVADO = 3;
	APROVADO = 7;
	MEDIA_PERFEITA = 10;
	MEDIA_ZERO = 0;

Begin
	contadorAprovados := 0;
	contadorReprovados := 0;
	contadorExames := 0;
	mediaTurma := 0;
	mediaNotas := 0;
	situacao := '';
	contador := 1;
	
	while contador <= QUANTIDADE_ALUNOS do
		begin
			write('Qual foi a sua primeira nota?: ');
			readln(nota1Avaliacao);
			
			write('Qual foi a sua segunda nota?: ');
			readln(nota2Avaliacao);
			
			if (nota1Avaliacao > MEDIA_PERFEITA) or (nota2Avaliacao > MEDIA_PERFEITA) or (nota1Avaliacao < MEDIA_ZERO) or (nota2Avaliacao < MEDIA_ZERO) then
				begin
					writeln('Você deu médias impossiveis!');
					exit;
				end;
			
			mediaNotas := (nota1Avaliacao + nota2Avaliacao) / 2;
			mediaTurma := mediaTurma + mediaNotas;
			
			if (mediaNotas >= APROVADO) then
				begin
					situacao := 'Aprovado';
					contadorAprovados := contadorAprovados + 1
				end
			else if (mediaNotas < APROVADO) and (mediaNotas >= REPROVADO) then
				begin
					situacao := 'Exame';
					contadorExames := contadorExames + 1
				end
			else
				begin
					situacao := 'Reprovado';
					contadorReprovados := contadorReprovados + 1 
				end;
			writeln('Média geral: ', mediaNotas:2:2, ' | Situação: ', situacao);
			contador := contador + 1
		end;
	mediaTurma := mediaTurma / QUANTIDADE_ALUNOS;
	writeln('Média da turma: ', mediaTurma:2:2, ' | Aprovados: ', contadorAprovados, ' | Reprovados: ', contadorReprovados, ' | Exames: ', contadorExames);
  
End.