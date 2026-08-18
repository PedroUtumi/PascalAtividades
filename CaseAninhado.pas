Program CaseAninhado;

var
	curso, turma: integer;
	
const
	ENGENHARIA = 1;
	TURMA1 = 1;
	MEDICINA = 2;
	TURMA2 = 2;

Begin
	writeln('digite o código do curso: ');
	writeln('1 - Engenharia');
	writeln('2 - Medicina');
	readln(curso);
	
	case curso of
		ENGENHARIA:
			begin
				write('digite a turma (1 ou 2): ');
				readln(turma);
				case turma of
					TURMA1: writeln('Você está na turma 1 de Engenharia');
					TURMA2: writeln('Você está na turma 2 de Engenharia');
				else
					writeln('turma inválida');
				end;
			end;
		MEDICINA: writeln('Você está cursando Medicina');
	else
		writeln('curso inválido');
	end;
					
  
End.