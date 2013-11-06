Práctica 8   Raquel Álvarez Hernández - Carlota Lázaro Hernández
=======

Representación de Matrices usando TDD con la herramienta Rspec. Y herramienta Guardafile

Class Matriz

1. Inicialización

Para inicializar las variables se tiene en cuenta que el número de filas sea mayor que cero ya que si no es así, no se puede crear la matriz.

2. Suma y Resta de matrices

Para poder sumar o restar matrices, éstas deben tener el mismo número de filas y columnas, es decir, que sean de la misma dimensión u orden.
Por ello, antes de realizar dichas operaciones, se lleva un control de que filas y columnas sean iguales.

3. Multiplicación de matrices

Para poder multiplicar matrices, el número de columnas de la primera matriz ha de coincidir con el número de filas de la segunda matriz, por ello al igual que en la suma y resta de matrices se lleva un control sobre ello.

4. Enumerable

Se utiliza el método each para recorrer los elementos de la matriz para así poder usar el módulo Enumerable.

5. Mostrar en string

Para poder mostrar en string, se define un método llamado show que utiliza inspect para devolver el objeto de una forma razonable como una cadena.


Tras realizar la construcción de la práctica la metodología de integración contínua Travis CI nos devuelve que la construcción es la siguiente: https://travis-ci.org/alu0100700435/pract08.png?branch=master

