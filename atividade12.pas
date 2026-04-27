Program atividade12;
uses CRT;

var
	alvo: char;
	pontuacao, acertos: integer;
	
const
	ALVO_A = 'A';
  ALVO_B = 'B';
  ALVO_C = 'C';

Begin
	write('Qual alvo escolhido?(A, B, C): ');
	readln(alvo);
	alvo := UpCase(alvo);
	
	write('Quantos acertos?(1 a 5): ');
	readln(acertos);
			
  case alvo of 
  	ALVO_A:
  		begin
  			if (acertos = 1) or (acertos = 2) then pontuacao := 10
  			else if (acertos = 3) or (acertos = 4) then pontuacao := 30
  			else if (acertos = 5) then pontuacao := 50
  			else writeln('Mentiu')
  		end;
  	ALVO_B:
  		begin
  			if (acertos = 1) or (acertos = 2) or (acertos = 3) then pontuacao := 20
  			else if (acertos = 4) or (acertos = 5) then pontuacao := 40
  			else writeln('Mentiu')
  		end;
  	ALVO_C:
  		begin
  			if (acertos = 1) then pontuacao := 5
  			else if (acertos = 2) or (acertos = 3) then pontuacao := 15
  			else if (acertos = 4) or (acertos = 5)  then pontuacao := 25
  			else writeln('Mentiu')
  		end;
  end;	
  writeln('Alvo: ', alvo, ' | Acertos: ', acertos, ' | Pontuacao: ', pontuacao);	
  
End.