Taller Investigativo: Desarrollo de Base de Datos con Liquibase
 Descripción

Este proyecto consiste en la creación de una base de datos relacional utilizando Liquibase como herramienta para gestionar los cambios. Se organiza el trabajo separando adecuadamente:

DDL (Lenguaje de Definición de Datos): encargado de la creación de las tablas
DML (Lenguaje de Manipulación de Datos): encargado de la inserción y gestión de los datos

Todo el entorno se ejecuta mediante contenedores Docker, lo que permite asegurar que el proyecto sea reproducible en cualquier máquina.

 Estructura del Proyecto

task-mgbd-liquibase/ │ ├── db/changelog/ │ ├── ddl/ # Scripts para definir estructuras de tablas │ ├── dml/ # Scripts para insertar y manipular datos │ └── db.changelog-master.yaml │ ├── scripts/queries/ # Consultas para validar la información ├── docs/ # Archivos de documentación (investigación y evidencias) ├── drivers/ # Controlador de PostgreSQL │ ├── docker-compose.yml # Configuración de los contenedores ├── liquibase.properties # Parámetros de conexión └── README.md

Tecnologías Empleadas

Docker
Docker Compose
PostgreSQL
Liquibase

Requisitos

Tener Docker Desktop instalado
Contar con la virtualización activada

Pasos de Ejecución
1. Clonar el repositorio

git clone https://github.com/ktchambo-2024a-max/task-mgbd-liquibase.git

2. Iniciar la base de datos

docker-compose up -d

3. Ejecutar las migraciones con Liquibase

docker-compose run liquibase --defaultsFile=liquibase.properties update

Flujo de Ejecución

Se inicia el contenedor de PostgreSQL
Se aplican las migraciones DDL (creación de estructuras)
Se ejecutan las migraciones DML (carga de datos)
Se realizan consultas para validar la información

Diseño de la Base de Datos

Se implementaron únicamente seis tablas:

persona
rol
usuario
producto
factura
detalle_factura

Las relaciones se establecieron mediante claves foráneas de la siguiente manera:

usuario relacionado con persona
usuario relacionado con rol
factura asociada a usuario
detalle_factura vinculado a factura
detalle_factura vinculado a producto

 Verificación

Las consultas utilizadas para comprobar los datos se encuentran en:

scripts/queries/

Estas permiten validar:

Registros existentes en la tabla persona
Facturas generadas
Detalles asociados a cada factura

 Documentación

Investigación: docs/investigacion-liquibase.md
Evidencias: docs/evidencias.md

Resultado Esperado

Al finalizar correctamente la ejecución se debe mostrar el siguiente mensaje:

Liquibase: Update has been successful

Conclusión

Este proyecto evidencia:

La implementación de Liquibase para gestionar versiones de la base de datos
La correcta división entre scripts DDL y DML
El uso de Docker para garantizar entornos consistentes
La validación de la información mediante consultas SQL