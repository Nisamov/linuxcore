#!/bin/bash

# Un comentario se inicia con el símbolo # y se extiende hasta el final de la línea.
# Se pueden poner tantos '#' como uno desee.
## Este formato permite identificar facilmente secciones de linea con mayor relevancia, de la siguiente forma:

if [[ $1 -gt 10 ]]; then
    echo "El número es mayor que 10."
elif [[ $1 -eq 10 ]]; then
    echo "El número es igual a 10."
##    echo "¡Exactamente 10!" -> De esta forma se restalta con mayor facilidad algunos sectores de codigo que se consideran de mayor importancia, o que se desea destacar.
#    echo "¡Increíble!"
else
    echo "El número es menor o igual a 10."
fi

# Esto puede ser usado para comentar codigo en revisión con mayor o menor relevancia.
# Los comentarios evitan que el codigo sea ejecutado, pero no lo eliminan, lo que permite conservarlo para futuras referencias o para explicar su propósito.
# No es posible anidar comentarios, es decir, no se pueden colocar comentarios dentro de otros comentarios
# No se pueden comentar multples líneas con un solo símbolo #, cada línea debe ser comentada individualmente.