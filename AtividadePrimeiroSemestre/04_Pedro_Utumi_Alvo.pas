Program atividadeAlvo;

var
	acertos, pontuacao: integer;
	alvo: char;

const
	ALVO_A = 'A';
	ALVO_B = 'B';
	ALVO_C = 'C';
	
Begin
	write('Qual alvo foi escolhido?(A, B OU C): ');
	readln(alvo);
	alvo := UpCase(alvo);
	
	if not (alvo in ['A', 'B', 'C']) then
		begin 
			writeln('Alvo desconhecido!');
			exit;
		end;
	{esse if e o case a seguir não precisam de else, 
	pois se entrar nesse if acima, o programa terminará. 
	O else do if acima é o próprio código}
	
	write('Quantos acertos?: ');          
	readln(acertos);
	
	case alvo of
		ALVO_A:
			begin
				if (acertos = 1) or (acertos = 2) then pontuacao := 10
				else if (acertos = 3) or (acertos = 4) then pontuacao := 30
				else if (acertos = 5) then pontuacao := 50
				else if (acertos = 0) then pontuacao := 0
				else 
					begin 
						writeln('Mentiroso!!!');
						exit;
					end;
			end;
		ALVO_B:
			begin
				if (acertos >= 1) and (acertos <= 3) then pontuacao := 20
				else if (acertos = 5) or (acertos = 4) then pontuacao := 40
				else if (acertos = 0) then pontuacao := 0
				else
					begin 
						writeln('Mentiroso!!!');
						exit;
					end;
			end;
		ALVO_C:
			begin
				if (acertos = 1) then pontuacao := 5
				else if (acertos = 2) or (acertos = 3) then pontuacao := 15
				else if (acertos = 4) or (acertos = 5) then pontuacao := 25
				else if (acertos = 0) then pontuacao := 0
				else 
					begin 
						writeln('Mentiroso!!!');
						exit;
					end;
			end;
	end;
	writeln('Alvo Escolhido: ', alvo, ' | Acertos: ', acertos, ' | Pontuação: ', pontuacao);
End.