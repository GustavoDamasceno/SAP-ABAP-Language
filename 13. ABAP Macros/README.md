# ABAP Macros

Se quisermos reutilizar o mesmo conjunto de instruções mais de uma vez em um programa, podemos incluí-las em uma macro. Só podemos usar uma macro dentro do programa em que ela está definida. A definição da macro deve ocorrer antes que a macro seja usada no programa.

Podemos usar a seguinte sintaxe para definir uma macro:
~~~ABAP
DEFINE <macro name>.
...
END-OF-DEFINITION.
~~~

Programa de demonstração usando Macro.

~~~ABAP
*Macro definition
DEFINE print.
  write:/ 'Hello Macro'.
END-OF-DEFINITION.

WRITE:/ 'Before Using Macro'.
print.
~~~

Saída:
~~~
Before Using Macro
Hello Macro
~~~

Podemos passar até 9 espaços reservados para Macros.

~~~ABAP
*Macro definition
DEFINE print.
  write:/ 'Hello', &1, &2.
END-OF-DEFINITION.

WRITE:/ 'Before Using Macro'.
print 'ABAP' 'Macros'.
~~~

Saída:
~~~
Before Using Macro
Hello ABAP Macros
~~~
