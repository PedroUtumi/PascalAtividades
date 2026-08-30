Program atividade09;
uses CRT;

// ALUNO: PEDRO FELIPE ONOFRE UTUMI
// ALGORITMOS E ESTRUTURA DE DADOS I

var 
	codigoCargo: integer;
	salario, novoSalario: real;

//Baseado nos principios do Clean Code, as variáveis devem ter nomes bem explícitos	
const
  ESTAGIARIO = 12;
  ANALISTAJUNIOR = 20;
  ANALISTAPLENO = 30;
  ANALISTASENIOR = 40;
  ESPECIALISTA = 50;
	
function descobrirCargo(codCargo: integer): string;
	begin
	    if codCargo = 12 then
	        descobrirCargo := 'estagiario'
	    else if codCargo = 20 then
	        descobrirCargo := 'analista junior'
	    else if codCargo = 30 then
	        descobrirCargo := 'analista pleno'
	    else if codCargo = 40 then
	        descobrirCargo := 'analista senior'
	    else if codCargo = 50 then
	        descobrirCargo := 'especialista'
	    else
	        descobrirCargo := 'codigo invalido';
	end;
	
Begin
	write('Escreva o codigo do seu cargo (12, 20, 30, 40 ,50): ');
	readln(codigoCargo);
	
	write('Escreva seu salario: ');
	readln(salario);

	case codigoCargo of
	// Baseado nos principios do Clean Code, "números crus" não podem aparecer
      ESTAGIARIO:
          novoSalario := salario + (salario * (20/100));
      ANALISTAJUNIOR:
          novoSalario := salario + (salario * (15/100));
      ANALISTAPLENO:
          novoSalario := salario + (salario * (10/100));
      ANALISTASENIOR:
          novoSalario := salario + (salario * (5/100));
      ESPECIALISTA:
          novoSalario := salario;
  else
      begin
          writeln('Codigo invalido');
          novoSalario := salario;
      end;
	end;
		
	writeln('Seu novo salario baseado no cargo ', descobrirCargo(codigoCargo), ' eh de: ', novoSalario:4:2)	
End.