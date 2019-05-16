# SWI Prolog.

- Instalación y primeros programas en el lenguaje SWI Prolog en sistema operativo Linux.

## Instalación.

Estos PPA se actualizan con cada nueva versión. Gracias a Yves Raimond por configurar el PPA y Eugeniy Meshcheryakov por crear la configuración de Debian. El PPA se registra mediante apt-add-repository, que está disponible de forma predeterminada en los escritorios, pero no en los servidores o contenedores de Linux.

- Abre la terminal de Linux.
- Se instala utilizando el comando:

```
% sudo apt-get install software-properties-common
```

- Y después ingrese los siguientes comandos para versiones estables:

```
% sudo apt-add-repository ppa:swi-prolog/stable
% sudo apt-get update
% sudo apt-get install swi-prolog
```

- Para mayor información:
[Sitio oficial](http://www.swi-prolog.org/)
