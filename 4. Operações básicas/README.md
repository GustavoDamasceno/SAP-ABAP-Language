# Operações básicas

* Atribuindo valores a variáveis ABAP: Use o termo **'='** ou **MOVE** para atribuir um valor a uma variável.

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

