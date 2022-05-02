# Variáveis

Variáveis ABAP são instâncias de tipos de dados. As variáveis são criadas durante a execução do programa e destruídas após a execução do programa. Use a palavra-chave **DATA** para declarar uma variável.

~~~ABAP
DATA: nome(10)      TYPE c,
      index         TYPE i,
      matricula(5)  TYPE n.
~~~

Ao declarar uma variável, também podemos nos referir a uma variável existente em vez do tipo de dados. Para isso, use a palavra-chave **LIKE** em vez da **TYPE** ao declarar uma variável.

~~~ABAP
DATA: nome(10) TYPE c, 
      ultimoNome LIKE nome.
~~~

* **Variável Estruturada:** Semelhante ao tipo de dados estruturado, a variável estruturada pode ser declarada usando as palavras-chave **BEGIN OF** e **END OF**. 

~~~ABAP
DATA: BEGIN OF estudante,
      id(5)     TYPE n,
      nome(10)  TYPE c,
      dob       TYPE d,
      turma(10) TYPE c,
      END OF estudante.
~~~

Também podemos declarar uma variável estruturada fazendo referência a um tipo de dados estruturado existente.

~~~ABAP
TYPES: BEGIN OF endereco,
       nome(10)      TYPE c,
       rua(10)       TYPE c,
       bairro(10)    TYPE c,
       cep(6)        TYPE n,
       telefone(10)  TYPE n,
       END OF endereco. 

Data: casa_endereco  type endereco,
      endereco_trabalho like casa_endereco.

~~~
Cada campo individual da variável estruturada pode ser acessado usando hífen(-).

* **Caractere é o tipo de dados padrão:**

~~~ABAP
DATA: true.
~~~
Por padrão, levará C como tipo de dados.

