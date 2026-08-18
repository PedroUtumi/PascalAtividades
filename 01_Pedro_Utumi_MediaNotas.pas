Program atividadeControleNotas;
uses crt;

var
	quantidadeAlunos, contador, contadorAprovados, contadorReprovados: integer;
	nomeAluno, situacao: string;
	nota1Avaliacao, nota2Avaliacao, mediaNotas, mediaTurma, maiorMedia, menorMedia, mediaAnterior: real;

const
	APROVADO = 6;
	MEDIA_PERFEITA = 10;
	MEDIA_ZERO = 0;

Begin
	write('Quantos alunos existem na sala?: ');
	readln(quantidadeAlunos);
	contador := 1;
	while contador <= quantidadeAlunos do
		begin
			write('Qual o nome do aluno?: ');
			readln(nomeAluno);
			
			write('Qual foi a sua primeira nota?: ');
			readln(nota1Avaliacao);
			
			write('Qual foi a sua segunda nota?: ');
			readln(nota2Avaliacao);
			
			if (nota1Avaliacao > MEDIA_PERFEITA) or (nota2Avaliacao > MEDIA_PERFEITA) or (nota1Avaliacao < MEDIA_ZERO) or (nota2Avaliacao < MEDIA_ZERO) then
				begin
					writeln('Você deu médias impossiveis!');
					exit;
				end;
								
			if quantidadeAlunos = 0 then 
				begin
					writeln('Sem alunos!');
					exit;
				end;
			
			mediaNotas := (nota1Avaliacao + nota2Avaliacao) / 2;
			mediaTurma := mediaTurma + mediaNotas;
			
			if mediaNotas > maiorMedia then 
				begin
					maiorMedia := mediaNotas;
					menorMedia := mediaAnterior
				end
			else 
				menorMedia := mediaNotas;
			
			mediaAnterior := mediaNotas;
			
			if (mediaNotas >= APROVADO) then
				begin
					situacao := 'Aprovado';
					contadorAprovados := contadorAprovados + 1
				end
			else
				begin
					situacao := 'Reprovado';
					contadorReprovados := contadorReprovados + 1
				end;
			
			writeln('Nome do aluno: ', nomeAluno, ' | 1ª Nota: ', nota1Avaliacao:4:2, ' | 2ª Nota: ', nota2Avaliacao:4:2, ' | Média: ', mediaNotas:4:2, ' | Situação: ', situacao); 
		  contador := contador + 1
		end;
		
	mediaTurma := mediaTurma / quantidadeAlunos;
	write('Media da turma: ', mediaTurma:4:2, '| Maior média da turma: ', maiorMedia:4:2, ' | Menor média da turma: ', menorMedia:4:2, ' | Quantidade de aprovados: ', contadorAprovados, ' | Quantidade de reprovados: ', contadorReprovados);  
End.