# Deletando linhas - Tabela interna

DELETE é a instrução para excluir uma ou mais linhas de uma Tabela Interna ABAP . Use a adição INDEX para excluir uma única linha. Se usarmos a adição INDEX e a operação for bem sucedida, SY-SUBRC será definido como zero, a linha com o índice correspondente na tabela interna será excluída e os índices das linhas subsequentes serão reduzidos em um.

~~~ABAP
DELETE <internal table> [INDEX <index>].
~~~

Também podemos usar a instrução DELETE acima sem adição de INDEX dentro de LOOP. Dentro do LOOP, se não especificarmos o INDEX, a linha do loop atual será excluída.

Podemos usar O WHERE para excluir uma ou várias linhas. Todas as linhas que atendem à condição lógica serão excluídas. Se pelo menos uma linha for excluída, o sistema define SY-SUBRC como 0, caso contrário, como 4.

~~~ABAP
DELETE <internal table> [FROM <n1>] [TO <n2>] [WHERE <condition>].
~~~

Com o WHERE, também podemos especificar as linhas entre certos índices que queremos excluir, especificando índices nas adições FROM e TO.
~~~ABAP
*--------------------------------------------------------------*
*Data Types
*--------------------------------------------------------------*
TYPES: BEGIN OF ty_student,
       id(5)     TYPE n,
       name(10)  TYPE c,
       place(10) TYPE c,
       age       TYPE i,
       END OF ty_student.

*--------------------------------------------------------------*
*Data Declaration
*--------------------------------------------------------------*
DATA: gwa_student TYPE ty_student.
DATA: it  TYPE TABLE OF ty_student.

gwa_student-id     = 1.
gwa_student-name   = 'JOHN'.
gwa_student-place  = 'London'.
gwa_student-age    = 20.
INSERT gwa_student INTO TABLE it.

gwa_student-id     = 2.
gwa_student-name   = 'JIM'.
gwa_student-place  = 'New York'.
gwa_student-age    = 21.
INSERT gwa_student INTO TABLE it.

gwa_student-id     = 3.
gwa_student-name   = 'JACK'.
gwa_student-place  = 'Bangalore'.
gwa_student-age    = 20.
INSERT gwa_student INTO TABLE it.

gwa_student-id     = 4.
gwa_student-name   = 'ROB'.
gwa_student-place  = 'Bangalore'.
gwa_student-age    = 22.
INSERT gwa_student INTO TABLE it.

WRITE:/ 'Values in IT before DELETE' COLOR 4.

WRITE:/ 'ID' COLOR 5,7 'Name' COLOR 5, 18 'Place' COLOR 5,
        37 'Age' COLOR 5.
LOOP AT it INTO gwa_student.
  WRITE:/ gwa_student-id, gwa_student-name, gwa_student-place,
          gwa_student-age.
ENDLOOP.

SKIP.
WRITE:/ 'Values in IT after DELETE' COLOR 4.

*Delete second line from IT
DELETE it INDEX 2.

WRITE:/ 'ID' COLOR 5,7 'Name' COLOR 5, 18 'Place' COLOR 5,
        37 'Age' COLOR 5.
LOOP AT it INTO gwa_student.
  WRITE:/ gwa_student-id, gwa_student-name, gwa_student-place,
          gwa_student-age.
ENDLOOP.

SKIP.
WRITE:/ 'Values in IT after DELETE using WHERE Clause' COLOR 4.

*Delete entries from IT where place is Bangalore
DELETE it WHERE place = 'Bangalore'.

WRITE:/ 'ID' COLOR 5,7 'Name' COLOR 5, 18 'Place' COLOR 5,
        37 'Age' COLOR 5.
LOOP AT it INTO gwa_student.
  WRITE:/ gwa_student-id, gwa_student-name, gwa_student-place,
          gwa_student-age.
ENDLOOP.
~~~

Saída:


![](https://www.saphub.com/wp-content/uploads/2011/12/deleteit1_thumb.png)
