# Fundamentos de la Programación Avanzada
Cuando desarrollamos software, en última instancia estamos enviando órdenes a la CPU. El procesador interactúa constantemente con la memoria (RAM) para almacenar estados y ejecutar acciones en el dispositivo.

Dado que escribir en lenguaje máquina (ceros y unos) es ineficiente y propenso a errores, utilizamos los lenguajes de programación. Estos actúan como capas de abstracción: nos permiten escribir lógica de forma estructurada y comprensible para los humanos, que luego un compilador o intérprete traduce a instrucciones que el hardware puede ejecutar.

# Gestión de Memoria y Variables
Declarar una variable significa reservar un espacio en la memoria RAM para almacenar un dato específico. Dependiendo del lenguaje de programación, la gestión de esta memoria puede ser automática (el lenguaje usa un recolector de basura o Garbage Collector para liberar la RAM que ya no se usa) o manual (donde el programador debe asignar y liberar la memoria explícitamente para evitar sobrecargas o memory leaks).

Podemos declarar variables de diferentes formas según la sintaxis del lenguaje, pero el concepto subyacente de asignación de memoria es el mismo:
```sh
# Bash: Asignación directa (útil en scripts de sistema)
nombre_variable="contenido_textual"
```
```js
// JavaScript: Memoria gestionada automáticamente, uso de let/const
let nombreVariable = "contenido_textual";
```
```cpp
// C++: Tipado estático estricto (permite control manual de la memoria)
std::string nombre_variable = "contenido_textual";
```
# Funciones y Reutilización de Código
Para manipular el contenido de las variables y ejecutar la lógica de nuestro programa, agrupamos instrucciones en funciones o métodos. Una función encapsula un bloque de código que realiza una tarea específica y devuelve un resultado (o output).

Esto cumple con el principio fundamental DRY (Don't Repeat Yourself): escribimos el código complejo una sola vez y lo llamamos múltiples veces desde diferentes partes del programa, manteniendo el código limpio y fácil de mantener.
```js
// Declaración de una función
function calcularArea(base, altura) {
    let area = (base * altura) / 2;
    return area;
}

// Reutilización de la función en diferentes partes del código
let triangulo1 = calcularArea(10, 5);
let triangulo2 = calcularArea(7, 3);
```
# Estructuras de Control de Flujo
La programación avanzada requiere tomar decisiones dinámicas y repetir tareas de forma controlada. Para ello usamos estructuras de control que alteran el flujo de ejecución de la CPU:
- Condicionales `(if/else, switch)`: Permiten que el programa tome diferentes caminos o ejecute distintas acciones según el estado actual de las variables.
- Bucles (for, while): Iteran sobre colecciones de datos o repiten acciones hasta que se cumpla una condición específica, automatizando procesos repetitivos.

# Estructuras de Datos
Más allá de guardar textos simples o números, el software complejo requiere organizar grandes cantidades de información en la memoria de forma eficiente. Para ello utilizamos estructuras de datos:
- Arrays / Listas: Colecciones ordenadas de elementos a los que accedemos mediante un índice numérico.
- Diccionarios / Objetos: Pares de clave-valor que permiten relacionar propiedades (ej. buscar configuraciones o atributos de un usuario).

# Paradigmas de Programación
A medida que los proyectos crecen, la forma en que estructuramos y pensamos el código importa tanto como las instrucciones en sí. Los lenguajes modernos permiten abordar los problemas bajo distintos paradigmas:
- Programación Orientada a Objetos (POO): Agrupa variables (atributos) y funciones (métodos) en entidades llamadas "Objetos". Es el estándar en el desarrollo de interfaces (UI) y videojuegos.
- Programación Funcional: Trata la computación como la evaluación de funciones matemáticas puras, evitando cambiar el estado de las variables (mutabilidad) para reducir errores inesperados.