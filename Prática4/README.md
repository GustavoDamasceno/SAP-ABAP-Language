# Prática 4

### Instruções
Crie uma implementação da cifra atbash, um antigo sistema de criptografia criado no Oriente Médio.

A cifra Atbash é uma cifra de substituição simples que se baseia na transposição de todas as letras do alfabeto de modo que o alfabeto resultante fique invertido. A primeira letra é substituída pela última letra, a segunda pela penúltima e assim por diante.

Uma cifra Atbash para o alfabeto latino seria a seguinte:
~~~
Plain:  abcdefghijklmnopqrstuvwxyz
Cipher: zyxwvutsrqponmlkjihgfedcba
~~~

É uma cifra muito fraca porque tem apenas uma chave possível, e é uma cifra de substituição mono-alfabética simples. No entanto, isso pode não ter sido um problema no tempo da cifra.

O texto cifrado é escrito em grupos de comprimento fixo, o tamanho tradicional do grupo é de 5 letras e a pontuação é excluída. Isso é para tornar mais difícil adivinhar as coisas com base nos limites das palavras.

* A codificação **test** dá **gvhg**
* A decodificação **gvhg** dá **test**
