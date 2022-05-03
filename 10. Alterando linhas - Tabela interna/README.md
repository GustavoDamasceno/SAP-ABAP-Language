# Alterando linhas - Tabela interna

**MODIFY** é a instrução para alterar uma ou várias linhas em uma tabela interna . Use a adição **INDEX** para alterar uma única linha. Se usarmos a adição **INDEX** e a operação for bem-sucedida, **SY-SUBRC** será definido como zero e o conteúdo da área de trabalho substituirá o conteúdo da linha pelo índice correspondente.


Em vez de alterar todos os valores de uma linha, podemos especificar os campos que queremos alterar especificando os nomes dos campos na adição **TRANSPORTING**.

~~~ABAP
MODIFY <internal table> FROM <work area> [INDEX <index>] 
                              [TRANSPORTING <f1> <f2> ... ].
~~~

Também podemos usar a instrução **MODIFY** acima sem adição de **INDEX** dentro de **LOOP**. Dentro do LOOP, se não especificarmos o **INDEX**, a linha do loop atual será modificada.

Podemos usar a cláusula **WHERE** para alterar uma ou várias linhas. Todas as linhas que atendem à condição lógica serão processadas. Se pelo menos uma linha for alterada, o sistema define **SY-SUBRC** para 0, caso contrário, para 4.

~~~ABAP
MODIFY <internal table> FROM <work area> 
          TRANSPORTING <f1> <f2> ... WHERE <condition>.
~~~

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

WRITE:/ 'Values in IT before MODIFY' COLOR 4.

WRITE:/ 'ID' COLOR 5,7 'Name' COLOR 5, 18 'Place' COLOR 5,
        37 'Age' COLOR 5.
LOOP AT it INTO gwa_student.
  WRITE:/ gwa_student-id, gwa_student-name, gwa_student-place,
          gwa_student-age.
ENDLOOP.

SKIP.
WRITE:/ 'Values in IT after MODIFY' COLOR 4.

gwa_student-id     = 4.
gwa_student-name   = 'ROB'.
gwa_student-place  = 'Mumbai'.
gwa_student-age    = 25.

*Change all the columns of row 4 with work area values
MODIFY it FROM gwa_student INDEX 4.

WRITE:/ 'ID' COLOR 5,7 'Name' COLOR 5, 18 'Place' COLOR 5,
        37 'Age' COLOR 5.
LOOP AT it INTO gwa_student.
  WRITE:/ gwa_student-id, gwa_student-name, gwa_student-place,
          gwa_student-age.
ENDLOOP.

SKIP.
WRITE:/ 'Values in IT after Transporting addition' COLOR 4.

gwa_student-id     = 9.
gwa_student-name   = 'TOM'.
gwa_student-place  = 'Bangalore'.
gwa_student-age    = 30.
*Change specific columns of row 4 with work area values by
*using TRANSPORTING addition
MODIFY it FROM gwa_student INDEX 4 TRANSPORTING place.

WRITE:/ 'ID' COLOR 5,7 'Name' COLOR 5, 18 'Place' COLOR 5,
        37 'Age' COLOR 5.
LOOP AT it INTO gwa_student.
  WRITE:/ gwa_student-id, gwa_student-name, gwa_student-place,
          gwa_student-age.
ENDLOOP.

SKIP.
WRITE:/ 'Values in IT after MODIFY using WHERE Clause' COLOR 4.

gwa_student-place  = 'Mumbai'.

*Change multiple rows using WHERE clause
MODIFY it FROM gwa_student TRANSPORTING place
                           WHERE place = 'Bangalore'.

WRITE:/ 'ID' COLOR 5,7 'Name' COLOR 5, 18 'Place' COLOR 5,
        37 'Age' COLOR 5.
LOOP AT it INTO gwa_student.
  WRITE:/ gwa_student-id, gwa_student-name, gwa_student-place,
          gwa_student-age.
ENDLOOP.
~~~

Saída:


![](https://www.saphub.com/wp-content/uploads/2011/12/modifyit1_thumb.png)
