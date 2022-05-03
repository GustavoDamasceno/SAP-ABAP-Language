# Operações de string

* **CONCATENATE** – Combines 2 or more strings into one string.

~~~ABAP
DATA: s1(10) VALUE 'Hello',
      s2(10) VALUE 'ABAP',
      s3(10) VALUE 'World',
      result1(30),
      result2(30).

CONCATENATE s1 s2 s3 INTO result1.
CONCATENATE s1 s2 s3 INTO result2 SEPARATED BY '-'.

WRITE / result1.
WRITE / result2.
~~~
Saída:
~~~
HelloABAPWorld
Hello-ABAP-World
~~~

Se a string concatenada couber na string de resultado, a variável do sistema sy-subrc será definida como 0. Se o resultado tiver que ser truncado, então sy-subrc será definida como 4.

* **SPLIT** – Divide uma string em 2 ou mais strings menores.

~~~ABAP
DATA: s1(10), s2(10), s3(10),
      source(20) VALUE 'abc-def-ghi'.

SPLIT source AT '-' INTO s1 s2 s3.

WRITE:/ 'S1 - ', s1.
WRITE:/ 'S2 - ', s2.
WRITE:/ 'S3 - ', s3.
~~~
Saída:
~~~
S1 - abc
S2 - def
S3 - ghi
~~~
Se todos os campos de destino forem longos o suficiente e nenhum campo de destino precisar ser truncado, sy-subrc será definido como 0, caso contrário, definido como 4.


* **SEARCH** – Procura uma substring na string principal. Se encontrado, sy-subrc é definido como 0, caso contrário, definido como 4.

~~~ABAP
DATA: string(30) VALUE 'SAP ABAP Development',
      str(10) VALUE 'ABAP'.

SEARCH string FOR str.
IF sy-subrc = 0.
  WRITE:/ 'Found'.
ELSE.
  WRITE:/ 'Not found'.
ENDIF.
~~~
Saída:
~~~
Found
~~~

* **REPLACE** – Substitui a substring por outra substring especificada, na string principal. Se substituído com sucesso, sy-subrc é definido como 0, caso contrário, definido como 4.

~~~ABAP
DATA: string(30) VALUE 'SAP ABAP Development',
      str(10) VALUE 'World'.

REPLACE 'Development' WITH str INTO string.
WRITE:/ string.
~~~
Saída:
~~~
SAP ABAP World
~~~




