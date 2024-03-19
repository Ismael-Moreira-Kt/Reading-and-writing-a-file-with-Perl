## Escrever Arquivos
### Declarar  o caminho para o binário do Perl
```perl
	#!/usr/bin/perl
```


### Declarar imports
```perl
	use strict;
	use warnings;
	use Path::Tiny;
	use autodie;
```
- Strict -> Impõe que o programa tenha todas as variáveis sejam declaradas antes do seu uso, que todas as referências simbólicas sejam válidas e evita que sejam declaradas varáveis globais em funções sem extrema necessidade. 
- Warnings -> Trata todas as exceções e erros em tempo de execução.
- Path::Tiny -> É uma biblioteca que ajuda a manipular diretórios.
- Autodie -> É uma biblioteca que mata o processo em caso de erro.


### Declarar Variáveis
```perl
	my $dir = path("src");
	my $file = $dir->child("newText.txt");
	my $file_handle = $file->openw_utf8();
	my @list = (
		"uma lista",
		"do que será escrito",
		"em cada linha"
	);
```
- $dir -> Guarda o caminho do diretório.
- $file -> Guarda o caminho do arquivo.
- $file_handle -> Abre o arquivo em modo de escrita com a codificação em UTF-8.
- @list -> Um array de strings que guarda o que será escrito no arquivo.


### Escrever no Arquivo
```perl 
	foreach my $line (@list) {
		$file_handle->print($line."\n");
	}
```
- foreach my $line (@list) -> Itera uma linha para cada indice do array.
- $file_handle->print( $line."\n") -> Grava a linha no arquivo; 



## Ler arquivos 
### Declarar  o caminho para o binário do Perl
```perl
	#!/usr/bin/perl
```


### Declarar imports
```perl
	use strict;
	use warnings;
	use Path::Tiny;
	use autodie;
```
- Strict -> Impõe que o programa tenha todas as variáveis sejam declaradas antes do seu uso, que todas as referências simbólicas sejam válidas e evita que sejam declaradas varáveis globais em funções sem extrema necessidade. 
- Warnings -> Trata todas as exceções e erros em tempo de execução.
- Path::Tiny -> É uma biblioteca que ajuda a manipular diretórios.
- Autodie -> É uma biblioteca que mata o processo em caso de erro.


### Declarar Variáveis
```perl
	my $dir = path("src");
	my $file = $dir->child("text.txt");
	my $content = $file->slurp_utf8();
	my $file_handle = $file->openr_utf8();
```
- $dir -> Guarda o caminho do diretório.
- $file -> Guarda o caminho do arquivo.
- $content -> Extrai o conteúdo do ficheiro com a codificação em UTF-8.
- $file_handle -> Abre o arquivo em modo de leitura com a codificação em UTF-8.


### Ler o Arquivo
```perl
	while (my $line = $line_handle->getline()) {
		print $line;
	}
```
- Percorre todas as linhas do ficheiro e printa uma a uma.