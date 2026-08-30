Program atividade10;
uses CRT;

// ALUNO: PEDRO FELIPE ONOFRE UTUMI
// ALGORITMOS E ESTRUTURA DE DADOS I

var	
	indexDia: integer;
	dia: string;
	
const
	DOMINGO = 1;
	SEGUNDA = 2;
	TERCA = 3;
	QUARTA = 4;
	QUINTA = 5;
	SEXTA = 6;
	SABADO = 7;

Begin
	write('digite um numero: ');
	readln(indexDia);
	
	indexDia := ((indexDia - 1) mod 7) + 1;
		
	case indexDia of
		DOMINGO:
			dia := 'domingo';
		SEGUNDA:
			dia := 'segunda';
		TERCA:
			dia := 'terca';
		QUARTA:
			dia := 'quarta';
		QUINTA:
			dia := 'quinta';
		SEXTA:
			dia := 'sexta';
		SABADO:
			dia := 'sabado';
	else
		begin
      writeln('algo invalido');
    end;	
	end;

	writeln('Dia da semana: ', dia);
		
  
End.