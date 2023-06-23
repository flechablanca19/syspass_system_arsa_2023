Curso de Docker 2023

Trabajo Final 

Profesores:

- Boisellier Leandro
- García Poggi Ramiro
- Amelong Raúl

Alumno:
 Manuel Maximiliano Andres
 
El trabajo final consistirá en una solución de despliegue a elegir por la/el alumna/o.
Deberá entregar un pequeño texto explicando qué hace la solución y un archivo comprimido con los docker-compose/Dockerfile y configuración necesaria para que funcione
Este trabajo es obligatorio para obtener el certificado.

Fecha limite de entrega:  viernes, 16 de junio de 2023, 23:00
Sistema para Aguas Rionegrinas S.A.

Syspass v3.2.10 - Versión: sysPass-php7.3 

Es un sistema de gestión de usuarios y claves (credenciales), el mismo presenta muchas ventajas a la hora de gestionar claves en ambientes de producción y desarrollo. También agrega un nivel más de seguridad a la hora de administrar y asegurar los servidores, routers, switchs, accesos a pc y control. Se opto por una opción más completa y ordenada a la hora de ejecutar un sistema en un contenedor por la opción de docker compose. Detallando los pasos a seguir, el orden y la ejecución del mismo.

Ejecutar el scritp start.sh

O

1.- Crear red para servicios sysPass:
# docker network create syspass-net

2.- Cree volúmenes fijos para los servicios de sysPass:
# docker volume create syspass-config
# docker volume create syspass-backup
# docker volume create syspass-db

3.- Comandos para ejecutar el docker compose:
# docker-compose -f syspass.yml up -d
Opcional agregar el administrador de base de datos Adminer:
# docker-compose -f adminer.yml up -d



Bibliografía:

https://github.com/nuxsmin/docker-syspass
https://hub.docker.com/layers/syspass/syspass/3.2.10/images/sha256-54583966716fd730ff6d611b1bb6f021d5c3e7cc6d51a96b14d7a71a82685b37?context=explore
https://hub.docker.com/r/syspass/syspass/tags
https://github.com/google/cadvisor
https://edupad.ch/p/Vsar1X7CFX
https://syspass-doc.readthedocs.io/en/3.1/installing/docker.html
https://raw.githubusercontent.com/nuxsmin/docker-syspass/master/docker-compose.yml
https://syspass.org/en
