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

**IF-ELSEIF** – Usada para verificar várias condições.

~~~ABAP
DATA: a TYPE i VALUE 2.

IF a > 5.
  WRITE:/ a, 'Maior que', 5.
ELSEIF a > 4.
  WRITE:/ a, 'Maior que', 4.
ELSEIF a > 3.
  WRITE:/ a, 'Maior que', 3.
ELSE.
  WRITE:/ a, 'Menor que', 3.
ENDIF.
~~~

Saída:
~~~
2 Menor que 3
~~~


* **CASE-ENDCASE – Ramificação baseada no conteúdo da variável:**

~~~ABAP
DATA: a TYPE i VALUE 4.

CASE a.
  WHEN 3.
    WRITE:/ a, 'igual a ', 3.
  WHEN 4.
    WRITE:/ a, 'igual a ', 4.
  WHEN OTHERS.
    WRITE:/ 'Não foi encontrado'.
ENDCASE.
~~~

Saída:
~~~
4 igual a 4
~~~
