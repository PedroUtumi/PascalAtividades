Program atividadeAnimalIF;

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
	if tipoAnimal = DOMESTICO then
		begin
			write('Qual o subtipo do animal?(1 - Cachorro | 2 - Gato): ');
      readln(subtipoAnimal);
      if subtipoAnimal = CACHORRO then writeln('Au au!')
      else if subtipoAnimal = GATO then writeln('Miau!')
      else writeln('Não conheço este animal!');
    end
  else if tipoAnimal = SELVAGEM then
  	begin
  		write('Qual o subtipo do animal?(1 - Leão | 2 - Lobo): ');
      readln(subtipoAnimal);
      if subtipoAnimal = LEAO then writeln('Rugido!') 
      else if subtipoAnimal = LOBO then writeln('Auuuuuuuu!')
      else writeln('Não conheço este animal!');
    end
  else writeln('Digite um número válido');
End.