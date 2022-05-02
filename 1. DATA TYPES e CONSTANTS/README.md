# DATA TYPES e CONSTANTS

## Data types

Data types descreve as características técnicas de uma variável desse tipo. O ABAP oferece ao programador uma rica variedade de data types de comprimento fixo e variável. A tabela a seguir lista os tipos de dados elementares ABAP -

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


* **Data types definido pelo usuário:** Use a palavra-chave **TYPES** para definir os tipos de dados.

~~~ABAP
TYPES: nome(20) TYPE c,
       length   TYPE p DECIMALS 2,
       contador  TYPE i,
       id(5)    TYPE n.
~~~

* **Data types estruturados:** é o agrupamento de vários tipos de dados simples sob um nome. Use as palavras-chave **BEGIN OF** e **END OF** para criar um tipo de dados estruturado.

~~~ABAP
TYPES: BEGIN OF estudante,
        id(5)     TYPE n,
        nome(10)  TYPE c,
        dob       TYPE d,
        lugar(10) TYPE c,
        END OF estudante.
~~~

## CONSTANTS

Constants são usadas para armazenar um valor sob um nome. Devemos especificar o valor quando declaramos uma constante e o valor não pode ser alterado posteriormente no programa. Use a palavra-chave **CONSTANTS** para declarar uma constante e **VALUES** para definir o valor.

~~~ABAP
CONSTANTS: pi  TYPE p DECIMALS 2 VALUE '3.14',
           sim TYPE c VALUE 'X'.
~~~










