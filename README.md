<p align="center">
  <img src=".github/media/top.png" alt="LinuxCore Header" width="100%">
</p>
<div align="center">
<h1>LinuxCore</h1>

[![MIT License](https://img.shields.io/github/license/nisamov/linuxcore?style=flat-square)](LICENSE) [![Website](https://img.shields.io/badge/website-linuxcore.site-blue?style=flat-square)](https://linuxcore.site/) [![Last Updated](https://img.shields.io/github/last-commit/nisamov/linuxcore?style=flat-square)](https://github.com/nisamov/linuxcore/commits) [![Repository Size](https://img.shields.io/github/repo-size/nisamov/linuxcore?style=flat-square)](.)

**Documentación y fundamentos de informática en Español**

</div>

---

## Descripción del Proyecto

**LinuxCore** es un repositorio creado a raíz de su predecesor [LinuxCommands](https://github.com/nisamov/LinuxCommands), con el fin de suplir la ambiciosa finalidad de albergar y ofrecer conocimiento absoluto sobre Linux, no solo con el propósito de sustituir al repositorio previo, sino de consolidar años de experiencia en sistemas Linux, arquitectura, prácticas de seguridad e infraestructuras modernas.

### Arquitectura del Proyecto

El proyecto genera automáticamente bases de datos estructuradas en formato JSON que permiten indexar y consultar determinadas zonas de contenido de manera eficiente. Estas bases de datos incluyen:

- **Comandos del Sistema**: Indexación completa de comandos Linux con sintaxis, opciones, ejemplos y casos de uso
- **Servicios del Sistema**: Documentación de servicios y procesos del sistema
- **Protocolos de Red**: Especificaciones técnicas de protocolos y protocolos de aplicación
- **Búsqueda Avanzada**: Capacidad de búsqueda por etiquetas, categorías y dependencias

La base de datos se actualiza automáticamente con cada contribución, manteniendo la integridad y consistencia de toda la documentación.

---

## Contenido

Esta documentación está organizada en los siguientes dominios principales:

### Fundamentos (`fundamentos/`)
- Filosofía Linux y Principios de Diseño
- Proceso de Arranque e Inicialización del Sistema
- Modelo de Procesos y Programación
- Gestión de Memoria y Memoria Virtual
- Estándar de Jerarquía del Sistema de Archivos (FHS)
- Usuarios, Grupos y Modelo de Permisos
- Señales e IPC (Comunicación Inter-Proceso)
- Entorno Shell y Configuración
- Teoría sobre la electricidad y aspectos fisicos

### Sistemas y Servicios (`servicios/`, `tecnologias/`)
- Arquitectura del Kernel y Servicios
- Gestión de Procesos y Cambio de Contexto

### Red y Protocolos (`redes/`. `protocolos/`)
- Protocolos de Red e Implementación de Stack
- Conceptos TCP/IP y Configuración

### Seguridad (`seguridad/`)
- **Defensiva**: Fortalecimiento, Control de Acceso, Detección de Intrusiones
- **Ofensiva**: Pruebas de Penetración, Técnicas de Explotación
- **Forense y Análisis**: Análisis de procesos, servicios e investigación de memoria
- **Cumplimiento y Estándares**: Cumplimiento de estandares de seguridad informática

---

## Estructura de los comandos

Esta es la estructura del cuerpo de los comandos en formato `json`:
```json
{
  "comando": "commando", // "ls"
  "descripcion": "Descripcion técnica", // "Lista los archivos de la ruta especificada"
  "categoria": "categoria interna", // "comandos", "archivos"
  "estructura": "comando [opciones]", // "ls [opciones]"
  "opciones": [
    {
      "parametro": "-h", // "-l", "--list"
      "descripcion": "Muestra la ayuda del comando." // "Lista todos los elementos de forma ordenada"
    },
    {
      "parametro": "-r", // "-a", "--all"
      "descripcion": "Eliminacion de sector." // "Muestra todo sin ignorar las entradas '.' y '..'"
    }
  ],
  "instalacion": {
    "es_instalable": true,
    "metodo_preferido": "gestor_paquetes",
    "pasos": {
      "debian_ubuntu": "sudo apt update && sudo apt install comando -y",
      "arch_linux": "sudo pacman -S comando",
      "rhel_centos": "sudo dnf install comando -y"
    }
  },
  "ejemplos": [
    {
      "uso": "sudo comando -h",
      "explicacion": "Muestra por consola la ayuda del comando."
    }
  ]
}
```
Estando en este formato, es posible filtras los comandos según sus parámetros, categoría o relaciones internas.

> [!IMPORTANT]
> El proyecto dispone de una plataforma web oficial accesible en https://linuxcore.site/. Dicha plataforma sincroniza su base de datos directamente con este repositorio, aplicando las actualizaciones de forma automática tras cada contribución para garantizar la disponibilidad inmediata del contenido más reciente.

## Colaboradores
<div align="center">
  <a href="https://github.com/nisamov/linuxcore/graphs/contributors">
    <img src="https://contrib.rocks/image?repo=nisamov/linuxcore" alt="Contribuyentes de LinuxCore" />
  </a>
</div>

---

Este es un proyecto de carácter personal desarrollado con fines de aprendizaje. Cualquier contribución, sugerencia o difusión es sumamente valorada y bienvenida.
<div align="center">
  <p><b>Linux Core - Nisamov | MIT License - 2026</b></p>
  <p><b>Contacto:</b> <a href="mailto:nisamov.contact@gmail.com">nisamov.contact@gmail.com</a></p>
  <p align="center">
    <img src=".github/media/bottom.png" alt="LinuxCore Footer" width="100%">
  </p>
</div>
</div>