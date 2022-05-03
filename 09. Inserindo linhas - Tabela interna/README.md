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
~~~
ID	     Name
00001	   JOHN
00002	   JIM
00003	   JACK

After using Index addition
ID	    Name
00001	  JOHN
00004   RAM
00002	  JIM
00003	  JACK
~~~

Também podemos inserir várias linhas em uma tabela interna com uma única instrução **INSERT**, ou seja, podemos inserir as linhas de uma tabela interna em outra tabela interna.

Sintaxe para inserir várias linhas na tabela interna:
~~~ABAP
INSERT LINES OF <itab1> [FROM <index 1>] [TO <index 2>] INTO TABLE <itab2>.

                                        ou
                                        
INSERT LINES OF <itab1> [FROM <index 1>] [TO <index 2>] INTO 
<itab2> INDEX <index>.
~~~

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
DATA: it  TYPE TABLE OF ty_student,
      it2 TYPE TABLE OF ty_student,
      it3 TYPE TABLE OF ty_student,
      it4 TYPE TABLE OF ty_student.

gwa_student-id    = 1.
gwa_student-name  = 'JOHN'.
INSERT gwa_student INTO TABLE it.

gwa_student-id    = 2.
gwa_student-name  = 'JIM'.
INSERT gwa_student INTO TABLE it.

gwa_student-id    = 3.
gwa_student-name  = 'JACK'.
INSERT gwa_student INTO TABLE it.

gwa_student-id    = 4.
gwa_student-name  = 'ROB'.
INSERT gwa_student INTO TABLE it.

WRITE:/ 'Inserting all the lines of IT to IT2' COLOR 4.

INSERT LINES OF it INTO TABLE it2.

WRITE:/ 'Display values of IT2' COLOR 1.
WRITE:/ 'ID' COLOR 5,7 'Name' COLOR 5.
LOOP AT it2 INTO gwa_student.
  WRITE:/ gwa_student-id, gwa_student-name.
ENDLOOP.

SKIP.
WRITE:/ 'Inserting only lines 2 & 3 of IT to IT3' COLOR 4.

INSERT LINES OF it FROM 2 TO 3 INTO TABLE it3.

WRITE:/ 'Display values of IT3' COLOR 1.
WRITE:/ 'ID' COLOR 5,7 'Name' COLOR 5.
LOOP AT it3 INTO gwa_student.
  WRITE:/ gwa_student-id, gwa_student-name.
ENDLOOP.

gwa_student-id    = 1.
gwa_student-name  = 'RAM'.
INSERT gwa_student INTO TABLE it4.

gwa_student-id    = 4.
gwa_student-name  = 'RAJ'.
INSERT gwa_student INTO TABLE it4.

SKIP.
WRITE:/ 'Inserting only lines 2 & 3 of IT to IT4 at 2' COLOR 4.

INSERT LINES OF it FROM 2 TO 3 INTO it4 INDEX 2.

WRITE:/ 'Display values of it4' COLOR 1.
WRITE:/ 'ID' COLOR 5,7 'Name' COLOR 5.
LOOP AT it4 INTO gwa_student.
  WRITE:/ gwa_student-id, gwa_student-name.
ENDLOOP.
~~~

A última instrução INSERT no programa acima insere a 2ª e 3ª linha de IT no índice 2 em IT4, então as novas linhas inseridas se tornam a 2ª e 3ª linha em IT4.

Saída
~~~
Inserting all the lines of IT to IT2
Display values of IT2
ID	    Name
00001	  JOHN
00002	  JIM
00003	  JACK
00004   ROB

Inserting only lines 2 & 3 of IT to IT3
Display values of IT3
ID	    Name
00002	  JIM
00003	  JACK

Inserting only lines 2 & 3 of IT to IT4 at 2
Display values of it4
ID	    Name
00001	  RAM
00002	  JIM
00003	  JACK
00004   RAJ
~~~
