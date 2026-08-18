Program atividadeAnimalCase;

var
	tipoAnimal, subtipoAnimal: integer;

const
	DOMESTICO = 1;
	SELVAGEM = 2;
	CACHORRO = 1;
	GATO = 2;
	LEAO = 1;
	LOBO = 2;

Begin
  write('Qual o tipo do animal?(1 - Domestico | 2 - Selvagem): ');
  readln(tipoAnimal);
  case tipoAnimal of
    DOMESTICO:
    begin
      write('Qual o subtipo do animal?(1 - Cachorro | 2 - Gato): ');
      readln(subtipoAnimal);
      case subtipoAnimal of
        CACHORRO: writeln('Au au!');
        GATO: writeln('Miau!');
        else writeln('Não conheço este animal!');
      end;
    end;
    SELVAGEM:
    begin
      write('Qual o subtipo do animal?(1 - Leão | 2 - Lobo): ');
      readln(subtipoAnimal);
      case subtipoAnimal of
        LEAO: writeln('Rugido!');
        LOBO: writeln('Auuuuuuu!');
        else writeln('Não conheço este animal!');
      end;
    end;
    else writeln('Digite um número válido');
  end;
End.