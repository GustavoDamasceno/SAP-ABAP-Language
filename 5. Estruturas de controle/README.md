# Estruturas de controle

Para controlar o fluxo do programa ABAP, use as seguintes instruções:

* **IF – Ramificação condicional Instrução:**

**IF** – O código entre IF e ENDIF é executado somente se a condição for verdadeira.

~~~ABAP
DATA: a TYPE i VALUE 10. 

IF a > 5.
  WRITE:/ 'Condição verdadeira'.
ENDIF.
~~~

Saída:
~~~
Condição verdadeira
~~~

**IF-ELSE** – O código entre **IF** e **ELSE** é executado se a condição for verdadeira, o código entre **ELSE** e **ENDIF** é executado se a condição for Falso.

~~~ABAP
DATA: a TYPE i VALUE 1.

IF a > 5.
  WRITE:/ 'Condição verdadeira'.
ELSE.
  WRITE:/ 'Condição falsa'.
ENDIF.
~~~

Saída:
~~~
Condição falsa
~~~


