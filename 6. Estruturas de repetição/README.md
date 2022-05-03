# Estruturas de repetição

### DO – ENDDO – Loop Incondicional:
**DO** pode ser usado para executar certas linhas de códigos um número específico de vezes.

~~~ABAP
DO 5 TIMES.
  WRITE: sy-index.
ENDDO.
~~~
Saída:
~~~
1 2 3 4 5
~~~

### WHILE ENDWHILE – Loop Condicional:
**WHILE** pode ser usado para executar certas linhas de códigos desde que a condição seja verdadeira.

~~~ABAP
WHILE sy-index < 3.
  WRITE: sy-index.
ENDWHILE.
~~~
Saída:
~~~
1 2
~~~

