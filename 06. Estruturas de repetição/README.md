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

### CONTINUE – Termina uma passagem de loop incondicionalmente.
Depois do **continue** o controle vai diretamente para a instrução final da passagem de loop atual ignorando as instruções restantes na passagem de loop atual, inicia a próxima passagem de loop.

~~~ABAP
DO 5 TIMES.
  IF sy-index = 2.
    CONTINUE.
  ENDIF.
  WRITE sy-index.
ENDDO.
~~~
Saída:
~~~
1 2 3 4 5
~~~


### CHECK – Termina uma passagem de loop condicionalmente.
Se a condição for falsa, o controle vai diretamente para a instrução final da passagem de loop atual, ignorando as instruções restantes na passagem de loop atual, inicia a próxima passagem de loop.

~~~ABAP
DO 5 TIMES.
  CHECK sy-index < 3.
  WRITE sy-index.
ENDDO.
~~~
Saída:
~~~
1 2
~~~

### EXIT – Termina uma passagem de loop inteira incondicionalmente.
Após a instrução **EXIT**, o controle vai para a próxima instrução após o término da instrução de loop.

~~~ABAP
DO 10 TIMES.
  IF sy-index = 2.
    EXIT.
  ENDIF.
  WRITE sy-index.
ENDDO.
~~~
Saída:
~~~
1 
~~~
