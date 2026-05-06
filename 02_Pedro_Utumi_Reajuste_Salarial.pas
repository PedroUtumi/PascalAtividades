Program atividade09;
uses CRT;

// ALUNO: PEDRO FELIPE ONOFRE UTUMI
// ALGORITMOS E ESTRUTURA DE DADOS I

var 
	codigoCargo: integer;
	salario, novoSalario, aumento: real;
	nomeCargo: string;

{Baseado nos principios do Clean Code, as variáveis devem ter nomes 
bem explícitos}
const
  ESTAGIARIO = 12;
  ANALISTAJUNIOR = 20;
  ANALISTAPLENO = 30;
  ANALISTASENIOR = 40;
  ESPECIALISTA = 50;
	
function calcularNovoSalario(codCargo: integer; salario: real): real;
begin
    case codCargo of
        ESTAGIARIO:
        begin
            nomeCargo := 'estagiario';
            calcularNovoSalario := salario + (salario * (20/100));
        end;          
        ANALISTAJUNIOR:
        begin
            nomeCargo := 'analista junior';
            calcularNovoSalario := salario + (salario * (15/100));
        end;
        ANALISTAPLENO:
        begin
            nomeCargo := 'analista pleno';
            calcularNovoSalario := salario + (salario * (10/100));
        end;
        ANALISTASENIOR:
        begin
            nomeCargo := 'analista senior';
            calcularNovoSalario := salario + (salario * (5/100));
        end;
        ESPECIALISTA:
        begin
            nomeCargo := 'especialista';
            calcularNovoSalario := salario;
        end;
    else
        begin
            nomeCargo := 'codigo invalido';
            calcularNovoSalario := salario;
        end;
    end;
end;
	
Begin
	write('Escreva o codigo do seu cargo (12, 20, 30, 40 ,50): ');
	readln(codigoCargo);
	
	write('Escreva seu salario: ');
	readln(salario);
	
	novoSalario := calcularNovoSalario(codigoCargo, salario);
	aumento := novoSalario - salario
		
	writeln('Seu novo salario baseado no cargo ', nomeCargo, ' eh de: ', novoSalario:4:2, ' | Aumento foi de: ', aumento4:2)	
End.