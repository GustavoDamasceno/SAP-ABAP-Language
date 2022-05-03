# Inserindo linhas - Tabela interna

Podemos inserir uma ou mais linhas em tabelas internas ABAP usando a instrução **INSERT**. Para inserir uma única linha, primeiro coloque os valores que queremos inserir em uma área de trabalho e use a instrução **INSERT** para inserir os valores da área de trabalho na tabela interna.

Sintaxe para inserir uma linha na tabela interna:

~~~ABAP
INSERT <work area> INTO TABLE <internal table>.
                       
                       ou
                       
INSERT <work area> INTO <internal table> INDEX <index>.
~~~

A primeira instrução **INSERT** sem adição de **INDEX** simplesmente adicionará o registro ao final da tabela interna. Mas se quisermos inserir a linha em um local específico, ou seja, se quisermos inseri-la como segundo registro, precisamos especificar 2 como o índice na instrução **INSERT**.

~~~ABAP
*--------------------------------------------------------------*
*Data Types
*--------------------------------------------------------------*
TYPES: BEGIN OF ty_student,
       id(5)    TYPE n,
       name(10) TYPE c,
       END OF ty_student.

*--------------------------------------------------------------*
*Data Declaration
*--------------------------------------------------------------*
DATA: gwa_student TYPE ty_student.
DATA: it TYPE TABLE OF ty_student.

gwa_student-id    = 1.
gwa_student-name  = 'JOHN'.
INSERT gwa_student INTO TABLE it.

gwa_student-id    = 2.
gwa_student-name  = 'JIM'.
INSERT gwa_student INTO TABLE it.

gwa_student-id    = 3.
gwa_student-name  = 'JACK'.
INSERT gwa_student INTO TABLE it.

WRITE:/ 'ID' COLOR 5,7 'Name' COLOR 5.
LOOP AT it INTO gwa_student.
  WRITE:/ gwa_student-id, gwa_student-name.
ENDLOOP.

SKIP.
WRITE:/ 'After using Index addition' COLOR 4.

gwa_student-id    = 4.
gwa_student-name  = 'RAM'.
INSERT gwa_student INTO it INDEX 2.

WRITE:/ 'ID' COLOR 5,7 'Name' COLOR 5.
LOOP AT it INTO gwa_student.
  WRITE:/ gwa_student-id, gwa_student-name.
ENDLOOP.
~~~

Saída:


