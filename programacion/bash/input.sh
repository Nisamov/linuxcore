#!/bin/bash

# La entrada de parámetros es una parte fundamental de cualquier programa, ya que permite al usuario interactuar con el programa y proporcionar información necesaria para su ejecución. En Bash, existen varias formas de manejar la entrada de parámetros, como el uso de variables, argumentos posicionales y opciones.
# De esta forma pueden asignarse parámetros tanto de forma manual como mediante scripts.
# Los parámetros sirven para proporcionar información al programa, como por ejemplo, el nombre de un archivo, una dirección de correo electrónico o una fecha. Además, los parámetros también pueden ser utilizados para controlar el comportamiento del programa, como por ejemplo, activar o desactivar ciertas funciones o establecer valores predeterminados.

# En Bash los parámetros se representan mediante "$1, $2, $3... hasta el $9".
# De esta forma, podremos implementar scripts que usen el input como argumentos posicionales.

if [ $1 >= 10 ]; then
    echo "El número es mayor o igual a 10"
else
    echo "El número es menor a 10"
fi

# Haciendo esto, indicamos que el primer valor al llamar al script sea comparado con el digito indicado.
# Para pasar parámetros de forma manual, se realiza de la siguiente forma:
# ./input.sh 15
# En este caso, el número 15 se asignará a $1, y el programa evaluará si es mayor o igual a 10, imprimiendo el resultado correspondiente.

# De la misma manera, se pueden pasar múltiples parámetros, por ejemplo:
# ./input.sh 15 20
# En este caso, $1 sería 15 y $2 sería 20, y el programa podría ser modificado para evaluar ambos parámetros según sea necesario.