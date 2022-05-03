# Modularização em ABAP

A modularização está dividindo o código do aplicativo em unidades menores, para que seja fácil de manter. Suponha que, se quisermos implementar a mesma lógica, como adicionar dois números em vários lugares do mesmo programa, escreva a lógica dentro de uma unidade de modularização e chame a unidade de modularização onde quisermos adicionar dois números.

Mesmo se quisermos declarar as mesmas variáveis em vários programas ou usar a mesma lógica em programas diferentes, codifique a parte comum na unidade de modularização e use-a em programas diferentes.

As vantagens da modularização são as seguintes.
* Mais fácil de ler, manter e depurar.
* Elimina a redundância de código e aumenta a reutilização do código.

Diferentes tipos de unidades de modularização chamadas de programas ABAP:
* **Macros** – Se você deseja reutilizar o mesmo conjunto de instruções mais de uma vez em um programa, você pode incluí-las em uma macro. Você só pode usar uma macro dentro do programa no qual ela está definida.
* **Include program** – Incluir programas permite que você use o mesmo código-fonte em diferentes programas. Eles são usados principalmente para modularizar o código-fonte e não possuem interface de parâmetros.
* **Sub- rotinas** – As sub-rotinas são normalmente chamadas internamente, ou seja, chamadas a partir do mesmo programa em que são declaradas. Mas as sub-rotinas também podem ser chamadas de programas externos.
* **Módulos de Função** – Os Módulos de Função são armazenados na biblioteca central e podem ser chamados a partir de qualquer programa. Até os módulos de função (habilitados para RFC) podem ser chamados de sistemas não SAP.
* **Métodos** – Métodos usados programação orientada a objetos ABAP.

Diferentes tipos de unidades de modularização chamadas de tempo de execução ABAP.
* **Blocos de eventos** – Os blocos de eventos começam com um código de evento e terminam com o próximo bloco de processamento.
* **Módulos de Diálogo** – Módulos de Diálogo são usados em eventos PBO e PAI de programas de Pool de Módulos.



