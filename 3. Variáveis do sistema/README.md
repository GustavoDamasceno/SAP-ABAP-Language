# Variáveis do sistema

As variáveis do sistema ABAP são acessíveis a partir de todos os programas ABAP. Esses campos são preenchidos pelo ambiente de tempo de execução. Os valores nesses campos indicam o estado do sistema em um determinado momento.

A lista completa de variáveis do sistema ABAP encontra-se na tabela SYST no SAP. Campos individuais da estrutura SYST podem ser acessados usando **“SYST-“** ou **“SY-“**.

* **SY-UNAME: Retorna o nome do usuário.

* **SY-DATUM: Retorna a data do sistema.

* **SY-UZEIT: Retorna a hora, minuto e segundo do sistema

* **SY-TCODE: Retorna código da transação atual.

* **SY-TABIX: Retorna o número da linha da tabela atual (Normalmente usando dentro de loop.)

* **SY-LANGU: Retorna o idioma de logon do usuário.

* **SY-DYNNR: Retorna o número da tela atual.

* **SY-UCOMM: Retorna o nome de um botão pressionado (OKCODE).

* **SY-REPID: Retorna o nome do programa.

* **SY-CPROG: Nome do programa principal.

* **SY-FDPOS: Utilizado na comparação de Strings.

* **SY-BATCH: Indica a execução de um programa em background.

* **SY-LINNO: Retorna a linha corrente de um relatório.

* **SY-LISEL: Retorna a linha selecionada em relatórios interativos.

* **SY-MANDT: Retorna o mandante do sistema.

* **SY-PAGNO: Retorna a página atual de um relatório.

* **SY-TVAR0 .. SY-TVAR9: Retorna elementos de textos ou títulos de relatórios.

* **SY-VLINE: Efetua a fechamento de bordas em um relatório.

* **SY-ULINE(n): Imprime uma linha com n posições.

* **SY-DBCNT: Dentro de SELECT, contém o contador de interação.

* **SY-SUBRC: Responsável por nos orientar se uma determinada operação foi bem sucedida.


~~~ABAP
WRITE:/ 'ABAP variaveis de sistema'.
WRITE:/ 'Client : ', sy-mandt.
WRITE:/ 'User : ', sy-uname.
WRITE:/ 'Date : ', sy-datum.
WRITE:/ 'Time : ', sy-uzeit.
~~~ 

Saída:
~~~
ABAP variaveis de sistema
Client :  001
User :  ABAP_EDITOR 
Date :  23.02.2021
Time :  14:02:01
~~~
