# DATA TYPES e CONSTANTS

Data types descreve as características técnicas de uma variável desse tipo.

Tipo de dados	| Descrição	| Comprimento padrão |	Valor padrão
------------- | --------- | ------------------ | -----------------
C	            | Personagem	 |    1	           |   ' '
N	            | Numérico	   |    1	           |    0
D	            | Encontro	   |    8	           | 00000000
T	            | Tempo	       |    6	           |  000000
X	            | Hexa Decimal |	  1	           |   X'0'
I 	          | inteiro	     |    4	           |    0
P	            | Embalado	   |    8	           |    0
F	            | Flutuador	   |    8	           |    0


* Data types definido pelo usuário: Use a palavra-chave **TYPES** para definir os tipos de dados.

~~~ABAP
TYPES: nome(10) TYPE c,
       length   TYPE p DECIMALS 2,
       contador  TYPE i,
       id(5)    TYPE n.
~~~
