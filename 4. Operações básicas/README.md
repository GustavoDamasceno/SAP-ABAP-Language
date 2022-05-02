# Operações básicas

* **Atribuindo valores a variáveis ABAP:** Use o termo **'='** ou **MOVE** para atribuir um valor a uma variável.

~~~ABAP
DATA: number1 TYPE i,
      number2 TYPE i,
      number3 TYPE i,
      number4 TYPE i.

number1 = 30.
number2 = number1.
MOVE 20 TO number3.
MOVE number3 TO number4.

WRITE:/ number1, number2, number3, number4.
~~~
Saída:
~~~
30          30          20          20
~~~

* **Operações aritméticas básicas:**

~~~ABAP
DATA: number1 TYPE i,
      number2 TYPE i,
      number3 TYPE i,
      number4 TYPE i.

*Using Mathematical Expressions
number1 = 10 + 20.
number2 = 20 - 10.
number3 = 10 * 2.
number4 = 100 / 2.

WRITE:/ 'Usando expressões'.
WRITE:/ number1, number2, number3, number4.

*Using Keywords
add 10 to number1.
subtract 5 from number2.
multiply number3 by 2.
divide number4 by 2.

WRITE:/ 'Usando Keywords'.
WRITE:/ number1, number2, number3, number4.
~~~
Saída:
~~~
Usando expressões
        30          10          20          50 
Usando Keywords
        40           5          40          25 
~~~

* **Limpar variáveis ABAP:** Use a palavra-chave **CLEAR** para definir as variáveis para valores padrão.

~~~ABAP
DATA: number1 TYPE i,
      number2 TYPE i.

number1 = 20 + 30.
number2 = 30 - 10.

WRITE:/ 'Antes de limpar'.
WRITE:/ number1, number2.

clear: number1, number2.

WRITE:/ 'Depois de Limpar'.
WRITE:/ number1, number2.
~~~
Saída:
~~~
Antes de limpar
        50          20 
Depois de Limpar
         0           0 
~~~

