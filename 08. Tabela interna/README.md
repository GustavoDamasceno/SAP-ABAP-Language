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

Use a instrução APPEND para adicionar dados à tabela interna. Primeiro defina a área de trabalho, ou seja, defina uma string de campo com uma estrutura semelhante à linha da tabela interna. Em seguida, coloque os dados na área de trabalho e use a instrução **APPEND** para adicionar os dados da área de trabalho à tabela interna.
