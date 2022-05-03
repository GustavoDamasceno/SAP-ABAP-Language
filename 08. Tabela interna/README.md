# Tabela interna

Uma tabela interna é uma tabela temporária que é criada na memória do servidor de aplicativos durante a execução do programa e é destruída quando o programa termina. Ele é usado para armazenar dados temporariamente ou manipular os dados. Ele contém uma ou mais linhas com a mesma estrutura.


Uma tabela interna pode ser definida usando a palavra-chave **TABLE OF** na instrução **DATA**. A tabela interna pode ser definida das seguintes maneiras.

~~~ABAP
TYPES: BEGIN OF ty_student,
       id(5)    TYPE n,
       name(10) TYPE c,
       END OF ty_student.

DATA: gwa_student TYPE ty_student.

"Referindo-se ao tipo de dados local
DATA: it1 TYPE TABLE OF ty_student.
"Referindo-se ao objeto de dados local
DATA: it2 LIKE TABLE OF gwa_student.
"Referindo-se ao tipo de dados no dicionário ABAP
DATA: it3 TYPE TABLE OF mara.
~~~

Use a instrução **APPEND** para adicionar dados à tabela interna. Primeiro defina a área de trabalho, ou seja, defina uma string de campo com uma estrutura semelhante à linha da tabela interna. Em seguida, coloque os dados na área de trabalho e use a instrução **APPEND** para adicionar os dados da área de trabalho à tabela interna.

~~~ABAP
*--------------------------------------------------------------*
*Data Types
*--------------------------------------------------------------*
TYPES: BEGIN OF ty_student,
       id(5)    TYPE n,
       name(10) TYPE c,
       END OF ty_student.

DATA: gwa_student TYPE ty_student.

*--------------------------------------------------------------*
*Data Declaration
*--------------------------------------------------------------*
"Referring to local data type
DATA: it TYPE TABLE OF ty_student.

gwa_student-id    = 1.
gwa_student-name  = 'JOHN'.
APPEND gwa_student TO it.

gwa_student-id    = 2.
gwa_student-name  = 'JIM'.
APPEND gwa_student TO it.

gwa_student-id    = 3.
gwa_student-name  = 'JACK'.
APPEND gwa_student TO it.
~~~

Após a última instrução **APPEND** no programa acima, a tabela interna 'IT' possui as 3 entradas a seguir. Mas os valores da tabela interna não são persistentes, ou seja, a tabela interna e seus valores são descartados quando o programa termina.

ID  |	Name
----|--------
1   |	JOHN
2   |	JIM
3   |	JACK

Normalmente, as tabelas internas são usadas para armazenar temporariamente os dados das tabelas do banco de dados para exibição na tela ou processamento posterior. Para preencher a tabela interna com os valores do banco de dados, use a instrução **SELECT** para ler os registros do banco de dados um por um, coloque-o na área de trabalho e, em seguida, **APPEND** os valores da área de trabalho à tabela interna.

~~~ABAP
DATA: gwa_employee TYPE zemployee,
      gt_employee  TYPE TABLE OF zemployee.

SELECT * FROM zemployee INTO gwa_employee.
  APPEND gwa_employee TO gt_employee.
ENDSELECT.
~~~

Após **ENDSELECT** a tabela interna **GT_EMPLOYEE** contém todos os registros que estão presentes na tabela **ZEMPLOYEE**.

Usando a adição **INTO TABLE** à instrução **SELECT**, também podemos ler vários registros diretamente na tabela interna. Nenhuma área de trabalho usada neste caso. Esta instrução select não funcionará em loop, portanto, nenhum **ENDSELECT** é necessário.

~~~ABAP
SELECT * FROM zemployee INTO TABLE gt_employee.
~~~


