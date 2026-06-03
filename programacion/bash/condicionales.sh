#!/bin/bash

# Iniciar una condicinal en bash es muy sencillo, se puede usar la palabra reservada 'if' seguida de una condición entre corchetes, y luego el bloque de código a ejecutar si la condición se cumple. Por ejemplo:
if [ $1 -gt 10 ]; then
    echo "El número es mayor que 10"
# Luego, se puede usar la palabra reservada 'elif' para agregar una condición adicional, y 'else' para manejar el caso en que ninguna de las condiciones anteriores se cumpla. Por ejemplo:
elif [ $1 -eq 10 ]; then
    echo "El número es igual a 10"
else
    echo "El número es menor que 10"
# Finalmente, se debe cerrar el bloque de código con la palabra reservada 'fi' para indicar el fin de la condicional.
fi

# También se pueden usar los carácteres '[' y cierta sintaxis para optimizar el código, por ejemplo:
[[ 5 -gt 10 ]] && echo "El número es mayor que 10" || echo "El número es menor o igual a 10"
# De esta forma, podemos omitir código y hacerlo de una forma más compacta y eficiente

# Para realizar comparaciones mas extensas, podemos optimizar el codigo lineal de la siguiente forma:
[[ $1 -gt 10 && $1 -lt 20 ]] && echo ">10 y <20" || [[ $1 -eq 10 ]] && echo "=10" || echo "<10 o >20"

# Se usan los operadores '&&' e '||' para encadenar las condiciones y los comandos a ejecutar, lo que permite escribir código más compacto y legible.
# El operador '&&' se utiliza para ejecutar el comando siguiente solo si la condición anterior se cumple, mientras que el operador '||' se utiliza para ejecutar el comando siguiente solo si la condición anterior no se cumple.