Program pesquisaAcademia;
uses CRT;

var
	idade, contador, contadorAlunosMenorIdade: integer;
	peso, altura, mediaPeso, mediaAltura, porcentagemAlunosMaiorQue90Kg: real;
	
const
	MINIMO = 0;
	QUANTIDADE_ALUNOS = 5;
	NOVENTA_KILOS = 90;
	MAIOR_IDADE = 18;

function ConferirValor(mensagem:string): real;
	var
		valor: real;

	begin
		valor := 0;
		while (valor <= 0) do
			begin
				write(mensagem);
				readln(valor);
			end;
		ConferirValor := valor	
	end;

Begin
	contadorAlunosMenorIdade := 0;
	mediaPeso := 0;
	mediaAltura := 0;
	porcentagemAlunosMaiorQue90Kg := 0;
	for contador := 1 to QUANTIDADE_ALUNOS do
		begin
			peso := 0;
			altura := 0;
			idade := 0;
			
			writeln(contador, 'º aluno');
			idade := trunc(ConferirValor('Qual a idade: '));
			altura := ConferirValor('Qual a altura: ');
			peso := ConferirValor('Qual o peso: ');
							
			if idade < MAIOR_IDADE then contadorAlunosMenorIdade := contadorAlunosMenorIdade + 1;
			mediaPeso := mediaPeso + peso;
			mediaAltura := mediaAltura + altura;
			if peso > NOVENTA_KILOS then porcentagemAlunosMaiorQue90Kg := porcentagemAlunosMaiorQue90Kg + 1;
		end;   
	mediaPeso := mediaPeso / QUANTIDADE_ALUNOS;
	mediaAltura := mediaAltura / QUANTIDADE_ALUNOS;
	porcentagemAlunosMaiorQue90Kg := (porcentagemAlunosMaiorQue90Kg / QUANTIDADE_ALUNOS) * 100 ;
	writeln('Media das alturas: ', mediaAltura:2:2);
	writeln('Media dos pesos: ', mediaPeso:2:2);
	writeln('Quantidade de alunos menores de idade: ', contadorAlunosMenorIdade);
	writeln('Porcentagem de alunos com mais de 90kg: ', porcentagemAlunosMaiorQue90Kg:2:2, '%');
End.