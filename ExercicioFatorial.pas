Program Pzim ;

var
	fatorial, numero, index: integer;

Begin
	fatorial := 1;
	write('Qual número vc quer ver o fatorial?: ');
	readln(numero);
	for index := numero downto 1 do 
		begin
			fatorial := fatorial * index;
			writeln(fatorial);
		end;
	writeln('Fatorial do número ', numero, ' é ', fatorial);
End.
{
int fatorial = 1;

int main()
{
    int numero;
    cout << "Digite um numero: ";
    cin >> numero;
    for (int i = 1; i <= numero; i++) fatorial *= i;
    cout << "Fatorial do numero " << numero << " eh: " << fatorial << endl;
    return fatorial;
}